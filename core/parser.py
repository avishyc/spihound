import json
import pandas as pd
import enlighten

# ===============================================================
# CONSTANTS
# ===============================================================
MHZ         = 1000000
MS_IN_SEC   = 1000
BYTE_SIZE   = 8
KB          = 1024


# ===============================================================
# PARSER CLASS
# ===============================================================
class Parser:
    """
        This parser takes a SPI sniffed traffic data and outputs
        the underlying memeory access pattern.
    """
    def __init__(self):
        self.CS_LOW = '['
        self.CS_HIGH = ']'
        self.MISO_BEGIN = '('
        self.MISO_END = ')'

        self.SECTOR_SIZE = 4 * KB

        self.MEM_PATTERN_LABELS  = [\
            "Timestamp(ms)",\
            "Operation",\
            "Address",\
            "Value"\
        ]

        self._clock = 0

        self._company = None
        self._chip_size = 0
        self._def_address_size = 0
        self._address_size = 0
        self._model = None
        self._frequency = None
        self._clock_width = None
        self._op_codes = {}

        self._config_done = False

        self.progressbar = enlighten.get_manager()


    def config(self, file=None):
        """
        Configures the parser with the SPI Flash's specs.
        This is a must before attempting to parse traffic.

        See the manufacturer's datasheet in order to fill the neccessary specs.
        
        :param: file => config json
        """
        if file is None:
            raise self.Error('Config json was not provided.')

        config = json.load(file)

        self._config_done = True

        self._company            = config['Meta']['Company']
        self._model              = config['Meta']['Model']
        self._chip_size          = int(config['Meta']['Size(MB)'])
        self._frequency          = int(config['Meta']['Frequency(MHz)']) * MHZ
        self._clock_width        = int(config['Meta']['ClockWidth'])
        self._def_address_size   = int(config['Meta']['DefaultAddressByteSize'])
        self._address_size       = self._def_address_size

        self._op_codes[config['OpCodes']['General']['WriteEnable']]   = 'WriteEnable'
        self._op_codes[config['OpCodes']['General']['WriteDisable']]  = 'WriteDisable'

        self._op_codes[config['OpCodes']['3Bytes']['BlockErase(32)']] = '3BytesBlockErase(32)'
        self._op_codes[config['OpCodes']['3Bytes']['BlockErase(64)']] = '3BytesBlockErase(64)'
        self._op_codes[config['OpCodes']['3Bytes']['FastRead']]       = '3BytesFastRead'
        self._op_codes[config['OpCodes']['3Bytes']['PageProgram']]    = '3BytesPageProgram'
        self._op_codes[config['OpCodes']['3Bytes']['Read']]           = '3BytesRead'
        self._op_codes[config['OpCodes']['3Bytes']['SectorErase']]    = '3BytesSectorErase'
        self._op_codes[config['OpCodes']['4Bytes']['BlockErase(64)']] = '4BytesBlockErase(64)'
        self._op_codes[config['OpCodes']['4Bytes']['Enter']]          = '4BytesEnter'
        self._op_codes[config['OpCodes']['4Bytes']['Exit']]           = '4BytesExit'
        self._op_codes[config['OpCodes']['4Bytes']['FastRead']]       = '4BytesFastRead'
        self._op_codes[config['OpCodes']['4Bytes']['PageProgram']]    = '4BytesPageProgram'
        self._op_codes[config['OpCodes']['4Bytes']['Read']]           = '4BytesRead'
        self._op_codes[config['OpCodes']['4Bytes']['SectorErase']]    = '4BytesSectorErase'
        
        for op_code in config['OpCodes']['MultiCodes']['ChipErase']:
            self._op_codes[op_code] = 'ChipErase'

        

    def parse(self, traffic=None, csvpath=None) -> pd.DataFrame:
        """
        Takes a SPI sniffed traffic file and parses it w.r.t. 
        the desired configuration,
        Make sure to call Parser.config() before parsing the traffic.

        :param: traffic => SPI sniffed traffic file.
        :param: csvpath => if not None will dump the data frame as a csv file
                           at the given location.
        :return: memory access pattern as pandas data frame.
        """

        if self._config_done == False:
            raise self.Error('Parser is not configured yet.')

        if traffic is None:
            raise self.Error('Traffic file was not provided to the parser.')

        df = pd.DataFrame(columns=self.MEM_PATTERN_LABELS)
        command_lines = traffic.readlines()

        self.skip_header(command_lines)
        self.clock_reset()
        
        n_iterations = self.get_n_iterations(command_lines)

        cmdticks = self.progressbar.counter(
            total=n_iterations, desc="Parsing", unit="cmds", color="red")
            
        for it in range(n_iterations):
            command_df = self.parse_next_command(command_lines)
            if command_df is None:
                break
            df = df.append(command_df, ignore_index=True)
            cmdticks.update()

        if csvpath is not None:
            df.to_csv(csvpath, index=False, header=True)

        return df


    def get_n_iterations(self, command_lines: list):
        n_iterations = 0

        for cmd in command_lines:
            leading_byte = cmd[1:5]
            if self.write_command(leading_byte) or self.read_command(leading_byte):
                n_iterations += 1

        return n_iterations


    def skip_header(self, traffic_lines: list):
        """
        Skips the header of the traffic.
        Afterwards, the first element of the list will be the first sniffed traffic.

        :param: traffic_lines => the traffic file to be parsed, seperated to lines
                                 as a list, where each element is a line of the file.
        """
        header_end_idx = 0
        while traffic_lines[header_end_idx][0] != self.CS_LOW:
            header_end_idx = header_end_idx + 1

        del traffic_lines[0:header_end_idx]


    def parse_next_command(self, command_lines: list) -> pd.DataFrame:
        """
        :param: command_lines => batch of command lines to be parsed consecutively.
        :return: [1] data frame of the latest parsed command.
                 [2] None once no cmd lines remain to be parsed.      
        """
        if not command_lines:
            return None

        command_line = command_lines[0]

        if command_line[0] != self.CS_LOW:
            raise self.Error('Command must begin with {0}'.format(self.CS_LOW))

        if command_line[-2] != self.CS_HIGH: # Actual last is '\n'
            raise self.Error('Command must end with {0}'.format(self.CS_HIGH))

        df = pd.DataFrame(columns=self.MEM_PATTERN_LABELS)

        leading_byte = command_line[1:5]

        if self._4bytes_enter(leading_byte):
            self.enter_4bytes_address_mode()
            del command_lines[0]

        elif self._4bytes_exit(leading_byte):
            self.exit_4bytes_address_mode()
            del command_lines[0]

        elif self.read_command(leading_byte):
            read_df = self.parse_read_command(command_line)
            del command_lines[0]
            df = df.append(read_df, ignore_index=True)

        elif self.write_command(leading_byte):
            write_df = self.parse_write_command(command_lines[0:3])
            del command_lines[0:3]
            df = df.append(write_df, ignore_index=True)
        
        return df
        

    def parse_read_command(self, command_line: str) -> pd.DataFrame:
        """ 
        Extracts all the Master<-Slave READ operations from the given
        command line as a data frame.

        """
        df = pd.DataFrame(columns=self.MEM_PATTERN_LABELS)

        address, command_line = self.extract_base_address(command_line)

        while command_line[1] != self.CS_HIGH:

            byte = self.read_byte(command_line, 'MISO')
            command_line = self.remove_leading_byte(command_line)

            df.loc[len(df)] = [self.timestamp(), 'R', hex(address), byte]

            address += 1

        return df
        

    def parse_write_command(self, command_lines: list) -> pd.DataFrame:
        """ 
        Extracts all the Master->Slave WRITE operations from the given
        command lines as a data frame.
        """
        self.verify_write_enable(command_lines[0])
        self.verify_write_disable(command_lines[2])

        df = pd.DataFrame(columns=self.MEM_PATTERN_LABELS)
        
        command_line = command_lines[1]
        leading_byte = command_line[1:5]

        if self.page_program(leading_byte):
            pp_df = self.parse_page_program(command_line)
            df = df.append(pp_df, ignore_index=True)

        elif self.sector_erase(leading_byte):
            se_df = self.parse_sector_erase(command_line)
            df = df.append(se_df, ignore_index=True)

        elif self.block_erase(leading_byte):
            b_df = self.parse_block_erase(command_line)
            df = df.append(b_df, ignore_index=True)

        elif self.chip_erase(leading_byte):
            ce_df = self.parse_chip_erase(command_line)
            df = df.append(ce_df, ignore_index=True)

        return df


    def parse_page_program(self, command_line: str) -> pd.DataFrame:
        df = pd.DataFrame(columns=self.MEM_PATTERN_LABELS)
        address, command_line = self.extract_base_address(command_line)

        while command_line[1] != self.CS_HIGH:

            byte = self.read_byte(command_line, 'MOSI')
            command_line = self.remove_leading_byte(command_line)

            df.loc[len(df)] = [self.timestamp(), 'W', hex(address), byte]

            address += 1

        return df


    def parse_sector_erase(self, command_line: str) -> pd.DataFrame:
        df = pd.DataFrame(columns=self.MEM_PATTERN_LABELS)
        address, command_line = self.extract_base_address(command_line)

        sectorticks = self.progressbar.counter(
            total=self.SECTOR_SIZE, desc="Sector", unit="bytes", color="blue")

        for i_byte in range(self.SECTOR_SIZE):
            df.loc[len(df)] = [self.timestamp(), 'W', hex(address+i_byte), '0xFF']
            self.clock_tick()
            sectorticks.update()

        return df
    

    def parse_block_erase(self, command_line: str) -> pd.DataFrame:
        df = pd.DataFrame(columns=self.MEM_PATTERN_LABELS)
        address, command_line = self.extract_base_address(command_line)

        leading_byte = self.read_byte(command_line, 'MOSI')
        block_size = self.parse_block_size(leading_byte)

        blockticks = self.progressbar.counter(
            total=block_size, desc="Block", unit="bytes", color="green")

        for i_byte in range(block_size):
            df.loc[len(df)] = [self.timestamp(), 'W', hex(address+i_byte), '0xFF']
            self.clock_tick()
            blockticks.update()

        return df


    def parse_block_size(self, byte: str) -> int:
        if self._op_codes[byte] == '3BytesBlockErase(32)':
            block_size = 32 * KB

        elif self._op_codes[byte] == '3BytesBlockErase(64)' or\
             self._op_codes[byte] == '4BytesBlockErase(64)':
            block_size = 64 * KB

        return block_size

    
    def parse_chip_erase(self, command_line: str) -> pd.DataFrame:
        df = pd.DataFrame(columns=self.MEM_PATTERN_LABELS)

        for i_byte in trange(self._chip_size):
            df.loc[len(df)] = [self.timestamp(), 'W', hex(address+i_byte), '0xFF']
            self.clock_tick()

        return df


    def page_program(self, byte: str) -> bool:
        self.verify_hex_prefix(byte)
        return self._op_codes[byte] == '3BytesPageProgram' or\
               self._op_codes[byte] == '4BytesPageProgram'

    
    def sector_erase(self, byte: str) -> bool:
        self.verify_hex_prefix(byte)
        return self._op_codes[byte] == '3BytesSectorErase' or\
               self._op_codes[byte] == '4BytesSectorErase'

    
    def block_erase(self, byte: str) -> bool:
        self.verify_hex_prefix(byte)
        return self._op_codes[byte] == '3BytesBlockErase(32)' or\
               self._op_codes[byte] == '3BytesBlockErase(64)' or\
               self._op_codes[byte] == '4BytesBlockErase(64)'

    
    def chip_erase(self, byte: str) -> bool:
        self.verify_hex_prefix(byte)
        return self._op_codes[byte] == 'ChipErase'

    
    def verify_write_enable(self, command_line: str):
        leading_byte = command_line[1:5]
        if self._op_codes[leading_byte] != 'WriteEnable':
            raise self.Error('Write command without preceding W Enable.')
        self.clock_tick()

    
    def verify_write_disable(self, command_line: str):
        leading_byte = command_line[1:5]
        if self._op_codes[leading_byte] != 'WriteDisable':
            raise self.Error('Write command without following W Disable.')
        self.clock_tick()


    def remove_leading_byte(self, command_line: str, n=1):
        return command_line[:1] + command_line[10*n + 1:]


    def extract_base_address(self, command_line) -> (int, str):

        if self._3bytes_address():
            n_bytes = 3
        elif self._4bytes_address():
            n_bytes = 4

        command_line = self.remove_leading_byte(command_line)
        self.clock_tick()

        address = 0

        for idx, power in enumerate(range(n_bytes - 1, -1, -1)):
            byte = self.read_byte(command_line, 'MOSI', idx)
            byte_val = self.hex_byte_to_int(byte)
            address += (2 ** (power * BYTE_SIZE)) * byte_val

        command_line = self.remove_leading_byte(command_line, n_bytes)

        return address, command_line


    def read_byte(self, command_line:str, channel: str, idx=0) -> str:
        if channel == 'MOSI':
            byte = command_line[1+10*idx:(1+10*idx)+4]
        elif channel == 'MISO':
            byte = command_line[6+10*idx:(6+10*idx)+4]

        self.clock_tick()

        return byte

    def hex_byte_to_int(self, byte: str) -> int:
        self.verify_hex_prefix(byte)

        return int(byte, base=16)
        

    def read_command(self, byte: str) -> bool:
        self.verify_hex_prefix(byte)

        return self._op_codes[byte] == '3BytesRead' or\
               self._op_codes[byte] == '4BytesRead' or\
               self._op_codes[byte] == '3BytesFastRead' or\
               self._op_codes[byte] == '4BytesFastRead'     


    def write_command(self, byte: str) -> bool:
        self.verify_hex_prefix(byte)

        return self._op_codes[byte] == 'WriteEnable'


    def enter_4bytes_address_mode(self):
        self.set_address_size(4)
        self.clock_tick()


    def exit_4bytes_address_mode(self):
        self.reset_address_size()
        self.clock_tick()


    def _4bytes_enter(self, byte: str) ->bool:
        self.verify_hex_prefix(byte)

        return self._op_codes[byte] == '4BytesEnter'


    def _4bytes_exit(self, byte: str) ->bool:
        self.verify_hex_prefix(byte)

        return self._op_codes[byte] == '4BytesExit'


    def set_address_size(self, size: int):
        self._address_size = size


    def reset_address_size(self):
        self._address_size = self._def_address_size


    def verify_hex_prefix(self, byte: str):
        if not self.hex_prefix(byte):
            raise self.Error('Unrecognized format: {0}'.format(byte))

    def hex_prefix(self, byte: str) -> bool:
        return byte[0] == '0' and byte[1] == 'x'


    def _3bytes_address(self) -> bool:
        return self._address_size == 3


    def _4bytes_address(self) -> bool:
        return self._address_size == 4


    def clock_reset(self):
        """
        Sets inner clock to 0.
        """
        self._clock = 0


    def clock_tick(self):
        """
        Time increament via clock propertise 
        |> Should be called after every byte transfer.
        """
        self._clock += (self._clock_width / self._frequency) * MS_IN_SEC

    
    def timestamp(self) -> str:
        """
        Reads the current timestamp of the inner clock.
        """
        return str(self._clock)


    class Error(Exception):
        """
        Parser related exceptions.
        """

        def __init__(self, message):
            super().__init__(message)



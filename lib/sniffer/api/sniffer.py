import ctypes
import platform
import os

sniffer_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

if platform.uname()[0] == "Windows":
    libname = "\\bin\\windows\\sniffer.dll"
if platform.uname()[0] == "Linux":
    libname = "/bin/linux/sniffer.so"
else:
    libname = "/bin/macos/sniffer.so"

dll_path = sniffer_dir + libname
lib = ctypes.cdll.LoadLibrary(dll_path)

SNIFF_N_ARGS = 5

def sniff(port, dir_path=None, baudrate=None, clock_edge=None, polarity=None):
    """
    USAGE:
    BEFORE ANYTHING ELSE:
    Connect BusPirate v4 with SPIHound firmware mounted to a USB port.

    Call this function with the appropriate parameters (see below).

    Connect the Master to an outlet, and initiate it's program.

    Happy sniffing!

    Input:
        dir_path - Full path to where the sniffed traffic files should reside.
        port - The USB port the BusPirate is connected to (e.g. COM3)
        baudrate - Unless you've changed the settings on the firmware, don't touch it.
        clock_edge - 0 (high to low), 1 (low to high)
        polarity - 0 (low), 1 (high)

    Output:
        traffic-i.com file with the sniffed communication data.
        The file is version generated. <i> is the lowest unused version
        in the current working directory.
    """
    b_path = None 
    b_port = None 
    b_baudrate = None 
    b_clock_edge = None 
    b_polarity = None

    sniff_c_call = lib.sniff

    sniff_c_call.restype = ctypes.c_int
    sniff_c_call.argtypes = [ctypes.c_char_p] * SNIFF_N_ARGS

    if dir_path is not None:
        b_path = bytes(dir_path, 'utf-8')

    if port is not None:
        b_port = bytes(port, 'utf-8')

    if baudrate is not None:
        b_baudrate = bytes(baudrate, 'utf-8')

    if clock_edge is not None:
        b_clock_edge = bytes(clock_edge, 'utf-8')

    if polarity is not None:
        b_polarity = bytes(polarity, 'utf-8')

    return sniff_c_call(b_path, b_port, b_baudrate, b_clock_edge, b_polarity)

if __name__ == '__main__':
    sniff(port='COM3')

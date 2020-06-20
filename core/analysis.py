"""
ANALYSIS

The purpose of this module is to provide data disects of a 
session's memory access pattern.

Each function takes a DataFrame of a memory access pattern,
along side with relevant arguments, and generates
a DataFrame which holds the analysis to be later viewed, 
or visualized by the user.
"""

from pandas import DataFrame, read_csv
from recordclass import RecordClass
import enlighten


def bysegment(mapdf: DataFrame, segsize: int) -> DataFrame:
    """
    Splits the session's address space into segments of @segsize bytes
    and counts the amount of reads and writes made to each segment
    during the session.

    Segments are inclusive, i.e:
    [0, 9] [10, 19] ...

    Input:
        mapdf - Session's DataFrame

    Output:
        DataFrame:

    -------------------------------------------------------------------------
    |    SegStart     |      SegEnd        |      Reads     |    Writes     |
    -------------------------------------------------------------------------
        (decimal int)     (decimal int)       (decimal int)    (decimal int)
    """

    df = DataFrame(columns=['SegStart', 'SegEnd', 'Reads', 'Writes'])

    low_addr = int(min(mapdf['Address']), base=16)
    high_addr = int(max(mapdf['Address']), base=16)

    # Init df with segments
    start = low_addr
    index = 0
    while (True):
        end = start + segsize
        if end > high_addr:
            end = high_addr

        df.loc[index] = [start, end, 0, 0]

        if end == high_addr:
            break

        start = end + 1
        index += 1

    # Traverse each memory access and count it per segment
    for index, maprow in mapdf.iterrows():
        addr = int(maprow['Address'], base=16)

        if maprow['Operation'] == 'W':
            col = 'Writes'
        else:
            col = 'Reads'

        df.loc[(df['SegStart'] <= addr) & (addr <= df['SegEnd']), col] += 1

    return df


def byaddress(mapdf: DataFrame) -> DataFrame:
    """ 
    Display the hit count for every address in the session's address space.
    Each entry details two lists (reads and writes) of timestamps for
    the appropriate address hit.

    Timestamps are on miliseconds.

    Input:
        mapdf - Session's DataFrame

    Output:
        DataFrame:

    -------------------------------------------------------------------------
    |      Address      |       Reads            |          Writes          |    
    -------------------------------------------------------------------------
        (decimal int)    (list of <Time, Value>)    (list of <Time, Value>)
                                 
    """
    df = DataFrame(columns=['Address', 'Reads', 'Writes'])

    # Fetch unique addresses from mapdf
    addrs = list(set(mapdf['Address']))
    addrs = [int(addr, base=16) for addr in addrs]
    addrs.sort()

    # Accumulate memory hits per address
    low_addr = min(addrs)
    mem_hits = [{'Reads': [], 'Writes': []} for _ in range(len(addrs))]

    for index, maprow in mapdf.iterrows():
        addr = int(maprow['Address'], base=16)
        timestamp = maprow['Timestamp(ms)']
        val = maprow['Value']

        if maprow['Operation'] == 'W':
            op = 'Writes'
        else:
            op = 'Reads'

        mem_hits[addr - low_addr][op].append((timestamp, val))

    # Compile data frame
    df['Address'] = addrs
    df['Reads'] = df['Address'].apply(lambda x: mem_hits[x - low_addr]['Reads'])
    df['Writes'] = df['Address'].apply(lambda x: mem_hits[x - low_addr]['Writes'])
    return df


def analyze(df: DataFrame, bsize: int, iblocks: list = None):
    """
    Input:
        df - Session's DataFrame.
        bsize - Granularity block size to disect the address space by.
        iblocks - (Optional) List of addresses in interest.
                  If this list is given, the output will show only the
                  contatining blocks of said addresses, with in-depth
                  details per block.

    Output:
        Analysis of the session.
    """
    if iblocks == None:
        shallow_analysis(df, bsize)
    else:
        deep_analysis(df, bsize, iblocks)


def deep_analysis(df: DataFrame, bsize: int, iblocks: list):

    disect_df = byaddress(df)

    iblocks = [int(baddr, 0) // bsize for baddr in iblocks]
    iblocks = list(set(iblocks))
    iblocks.sort()

    for iblock in iblocks:
        print('==[ BLOCK {0} ]================================================='.format(iblock))
        block = fetch_block(disect_df, bsize, iblock)
        for index, e in block.iterrows():
            print('\n\t--[ADDRESS {addr}]-------------------------'.format(addr=hex(e.Address)))

            print('\n\t(READS)')
            for t, v in e.Reads:
                print('\n\t\t{time: <20}{val:<10}'.format(time=" TIME", val=" VALUE"))
                print('\t\t{time: <20}{val:<10}'.format(time='-'*6, val='-'*7))
                print('\t\t{time: <20}{val:<10}'.format(time=t, val=v))

            print('\n\t(WRITES)')
            for t, v in e.Writes:
                print('\n\t\t{time: <20}{val:<10}'.format(time=" TIME", val=" VALUE"))
                print('\t\t{time: <20}{val:<10}'.format(time='-'*6, val='-'*7))
                print('\t\t{time: <20}{val:<10}'.format(time=t, val=v))
    return


def shallow_analysis(df: DataFrame, bsize: int):

    disect_df = byaddress(df)

    progressbar = enlighten.get_manager()

    blockticks = progressbar.counter(
        total=count_blocks(disect_df, bsize), desc="Analyzing", unit="Blocks", color="yellow")

    entries = []

    for iblock, block in enumerate(session_blocks(disect_df, bsize)):
        bottom_addr = df.loc[bsize*iblock].Address
        rr = 0
        wr = 0

        for index, row in block.iterrows():
            if len(row.Reads) > 1:
                rr += len(row.Reads) - 1

            # First write
            if len([r for r in row.Reads if r > row.Writes[0]]) > 0:
                wr += 1

            # In between
            for iwrite in range(len(row.Writes)-1):
                w1 = row.Writes[iwrite]
                w2 = row.Writes[iwrite + 1]

                if len([r for r in row.Reads if r > w1 and r < w2]) > 0:
                    wr += 1

            # Last write
            if len([r for r in row.Reads if r > row.Writes[-1]]) > 0:
                wr += 1
        
        entries.append(SAnalysis(bottom_addr, rr, wr))
        blockticks.update()
    
    print('\n')
    print(f'{" BLOCK": <15}{" RR": <8}{" WR": <8} TOTAL')
    print(f'{"-------": <15}{"----": <8}{"----": <8}--------\n')

    for e in entries:
        print('{addr: <15}{rr: <8}{wr: <8}{tot}'.format(
            addr=e.addr, rr=e.rr, wr=e.wr, tot=e.rr + e.wr))

    return


def count_blocks(df: DataFrame, bsize: int):
    # Roundup trick without math import
    return len(df) // bsize + (len(df) % bsize > 0)


def fetch_block(df: DataFrame, bsize: int, iblock: int):
    return df.loc[iblock * bsize : iblock * bsize + (bsize - 1)]
    

def session_blocks(df: DataFrame, bsize: int):
    nblocks = count_blocks(df, bsize)

    for iblock in range(nblocks):
        yield df.loc[iblock*bsize:iblock*bsize+(bsize-1)]


def trail(df: DataFrame, addr:str, start: int, end: int):

    print('Trail of address {0} in timeframe [{1}, {2}]'.format(hex(addr), start, end))

    dff = df[(df.Address == hex(addr)) & (df['Timestamp(ms)'] >= start) & (
        df['Timestamp(ms)'] <= end)].drop_duplicates('Value')

    print('[ START ]==', end='')
    for index, row in dff.iterrows():
        print('==[ {0} ]=='.format(row.Value, row.Address), end='')
    print('==[ END ]')
    
    return


###############################################################################
# Structures
class SAnalysis(RecordClass):
    addr: str
    rr: int
    wr: int


class DAnalysis(RecordClass):
    addr: str
    reads: list
    writes: list

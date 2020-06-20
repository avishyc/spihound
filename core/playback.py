""" 
PLAYBACK

The purpose of this module is to render an animation of the session.
"""
import os
os.environ['PYGAME_HIDE_SUPPORT_PROMPT'] = "hide"
import pygame
import sys
from pandas import DataFrame
from recordclass import RecordClass

###############################################################################
# Color Table
C_BLACK = (0, 0, 0)
C_WHITE = (255, 255, 255)
C_LBLUE = (91, 173, 233)
C_LGREEN = (196, 229, 52)
C_LYELLOW = (255, 204, 51)

C_READ = C_LYELLOW
C_WRITE = C_LGREEN

###############################################################################
# Placement Constants
INIT_W = 1200
INIT_H = 1000
MARGIN_X = 0.01
MARGIN_Y = 0.01
WALL_H = 1 - 2*MARGIN_Y
WALL_W = 0.15
STEP_X = 0.028
HIT_RECT_W = 0.15
HIT_REC_H = 0.02

###############################################################################
# Interactive Parameters
SLOWDOWN = 100000
MAX_SLOWDOWN = SLOWDOWN * 10000
DEFAULT_SPEED = SLOWDOWN * 7

###############################################################################
# Main Class
class Playback():
    """ 
    This class encases the the mechanics for animating a session.
    It should be initialized with a DataFrame contatining a snippet 
    of the sessions to be rendred.
    
    The DataFrame must handle the the timeframe and address space in interest.
    """
    def __init__(self, df: DataFrame, filename: str, saddr:int, eaddr: int, stime:int, etime: int):
        super().__init__()
        self.df = df

        #######################################################################
        # Init session parameters
        self.low_addr = int(min(df['Address']), base=16)
        self.high_addr = int(max(df['Address']), base=16)
        self.naddr = self.high_addr - self.low_addr + 1
        self.run = True
        self.slowdown = DEFAULT_SPEED

        #######################################################################
        # Prepare display
        self.display = pygame.display.set_mode((INIT_W, INIT_H), pygame.RESIZABLE)
        self.w = INIT_W
        self.h = INIT_H
        self.wall_lx = INIT_W * MARGIN_X
        self.wall_ty = INIT_H * MARGIN_Y
        self.wall_w = INIT_W * WALL_W
        self.wall_h = INIT_H * WALL_H
        caption = 'Playback of {0}: Address Space [{1}, {2}] Timeframe [{3}, {4}]'.format(
            filename, hex(saddr), hex(eaddr), stime, etime)
        pygame.display.set_caption(caption)
        self.draw_background()

        #######################################################################
        # Initialize pygame modules
        pygame.font.init()
        self.tinyfont = pygame.font.SysFont('Fira Code', 11)
        self.font = pygame.font.SysFont('Fira Code', 13)
        self.bigfont = pygame.font.SysFont('Fira Code', 30)

        #######################################################################
        # Initialize structures
        self.spawns = []
        self.session_entries = self._session_entries()

    def play(self):
        while True:
            for event in pygame.event.get():
                self.process_event(event)

            if self.run:

                if (self.slowdown > 0):
                    delay(self.slowdown)

                self.step()

                try:
                    if self.session_entries != None:
                        ts, addr, op, val = next(self.session_entries)
                        self.spawn(ts, addr, op, val)
                except StopIteration:
                    self.session_entries = None

                if not self.spawns:
                    self.notify_over()
                    continue
                
                self.draw()
                self.update_spawns()

    def process_event(self, event):
        if event.type == pygame.QUIT:
            pygame.quit()
            sys.exit()
        elif event.type == pygame.RESIZABLE:
            self.update_display_size(event.w, event.h)
        elif event.type == pygame.MOUSEBUTTONDOWN and event.button == 1:
            # LMB - PLAY/PAUSE
            self.run = not self.run
        elif event.type == pygame.MOUSEBUTTONDOWN and event.button == 3:
            # RMB - RESTART
            self.restart()
        elif event.type == pygame.MOUSEBUTTONDOWN and event.button == 4:
            # SCROLLUP - SPEEDUP
            if self.slowdown > 0:
                self.slowdown -= SLOWDOWN
        elif event.type == pygame.MOUSEBUTTONDOWN and event.button == 5:
            # SCROLLDOWN - SLOWDOWN
            if self.slowdown < MAX_SLOWDOWN:
                self.slowdown += SLOWDOWN

    def update_display_size(self, w, h):
        self.display = pygame.display.set_mode(((w, h), pygame.RESIZABLE))
        self.w = w
        self.h = h
        self.wall_lx = w * MARGIN_X
        self.wall_ty = h * MARGIN_Y
        self.wall_w = w * WALL_W
        self.wall_h = h * WALL_H
        # TODO Update spawns (x, y)
        self.draw()

    def draw_background(self):
        self.display.fill(C_BLACK)
        pygame.draw.rect(self.display, C_LBLUE, [
                         self.wall_lx, self.wall_ty, self.wall_w, self.wall_h])
        return

    def _session_entries(self):
        entry = []
        for index, row in self.df.iterrows():
            entry = [row['Timestamp(ms)'], int(
                row['Address'], base=16), row['Operation'], row['Value']]
            yield entry

    def step(self):
        for index, spawn in enumerate(self.spawns):
            spawn.x -= self.w * STEP_X
            self.spawns[index] = spawn


    def spawn(self, ts, addr, op, val):
        if op == 'R':
            c = C_READ
        else:
            c = C_WRITE
        
        x = self.w * (1 - MARGIN_X)
        y = self.wall_h + MARGIN_Y - \
            ((addr - self.low_addr) / self.naddr) * self.wall_h

        self.spawns.append(Spawn(val, addr, x, y, ts, c, False))
        return

    def draw(self):
        self.draw_background()

        for index, spawn in enumerate(self.spawns):

            if spawn.x > self.w * HIT_RECT_W:
                txt = self.tinyfont.render(spawn.val, False, spawn.c)
                self.display.blit(txt, (spawn.x, spawn.y))
            elif spawn.x <= self.w * MARGIN_X:
                pygame.draw.rect(self.display, spawn.c, [
                    MARGIN_X * self.w, spawn.y, self.w * HIT_RECT_W, self.h * HIT_REC_H])

                oparrow = ' > ' if spawn.c == C_READ else ' < '

                txt = self.font.render("{0}{1}{2}".format(
                    spawn.addr, oparrow, spawn.val), False, C_BLACK)

                self.display.blit(txt, (1.25*MARGIN_X * self.w, spawn.y + MARGIN_Y/4 * self.h))
                
                spawn.done = True
                self.spawns[index] = spawn

        pygame.display.update()
        return

    def update_spawns(self):
        self.spawns[:] = [spawn for spawn in self.spawns if spawn.done == False] 
        return

    def notify_over(self):
        self.draw_background()
        txt = self.bigfont.render('PLAYBACK OVER', False, C_WHITE)
        self.display.blit(txt, (self.w / 2 - (txt.get_rect().width/2),
                                self.h / 2 - (txt.get_rect().height/2)))
        pygame.display.update()

    def restart(self):
        self.session_entries = self._session_entries()


###############################################################################
# Sub Classes
class Spawn(RecordClass):
    val: str
    addr: int
    x: float
    y: float
    ts: float
    c: tuple
    done: bool

###############################################################################
# Utility Funcitons

def delay(n: int):
    for i in range(n):
        pass

# CHANGE OS VAR ACCORDING TO YOUR OPERATING SYSTEM
# windows, macos or linux
OS = windows
BINDIR = bin/$(OS)

CC			 = gcc
FLAGS        = -Iinclude
CFLAGS       = -fPIC  	# -pedantic -Wall -Wextra -g
LDFLAGS      = -shared

DEBUGFLAGS   = -O0 -D _DEBUG
RELEASEFLAGS = -O2 -D NDEBUG -combine -fwhole-program

ifeq ($(OS),windows)
TARGET  = $(BINDIR)/sniffer.dll
else
TARGET  = $(BINDIR)/sniffer.so
endif

SOURCES = $(wildcard src/*.c)
HEADERS = $(wildcard include/*.h)

$(TARGET): $(SOURCES)
	$(CC) $(FLAGS) $(CFLAGS) $(LDFLAGS) $(DEBUGFLAGS) -o $(TARGET) $^

clean:
	rm $(TARGET)
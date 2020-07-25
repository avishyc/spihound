/**
 * 
 * 	Created by		|>	Avishay Cohen
 * 						Asaf Rubinfeld
 * 
 * 	Supported OS	|>	Windows 32/64, MacOS, Linux
 * 
 * 
 * 	Credits			|>	Based on the Bus Pirate project
 * 						http://code.google.com/p/the-bus-pirate/
 * 						http://the-bus-pirate.googlecode.com/svn/trunk/bootloader-v4/pirate-loader/source/pirate-loader.c
 * 						http://dangerousprototypes.com
 */


#ifndef _SERIAL_H_
#define _SERIAL_H_

#include "mp.h"

#ifndef __linux__
#define B115200 115200
#define B921600 921600
#endif

int serial_setup(int fd, speed_t speed);
int serial_close(int fd);
int serial_write(int fd, char *buf, int size);
int serial_read(int fd, char *buf, int size);
int serial_open(const char *port);


#endif /* _SERIAL_H_ */

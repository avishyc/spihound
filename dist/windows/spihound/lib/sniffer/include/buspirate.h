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

#ifndef _BUSPIRATE_H_
#define _BUSPIRATE_H_

#define BBIO 0x00
#define SPI  0x01
#define I2C  0x02
#define ART  0x03
#define OWD  0x04
#define RAW  0X05

#define BP_ACKNOWLEDGE '\x01'

int BP_WriteToPirate(int , char *);
int BP_EnableBinary(int);
int BP_EnableMode(int , char );


#endif /* _BUSPIRATE_H_ */

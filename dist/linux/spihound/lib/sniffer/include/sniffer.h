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

#ifndef _SNIFFER_H_
#define _SNIFFER_H_

int sniff (const char* traffic_dir_path,  const char* port, const char* baudrate, const char* clock_edge, const char* polarity);

#endif /* _SNIFFER_H_ */
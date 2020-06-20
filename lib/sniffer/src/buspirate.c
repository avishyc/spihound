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

#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "../include/serial.h"
#include "../include/status_code.h"
#include "../include/buspirate.h"
#include "../include/mp.h"

const char *kBPModes[]=
{
    "BBIO",
    "SPI",
    "I2C",
    "ART",
    "1W0",
    "RAW",
};


int BP_WriteToPirate (int fd, char * val) 
{
	int 	result 		= 0;
	char 	read_byte 	= 0;

    serial_write(fd, val, 1);
    Sleep(1);
    serial_read(fd, &read_byte, 1);

	if (read_byte != BP_ACKNOWLEDGE) 
	{
		fprintf(stderr, "BusPirate replied with 0x%x instead of 0x01 \n",read_byte);
		result = -1;
	}

	return result;
}


int BP_EnableBinary (int fd)
{
	const char* 	kExpectedRes 		= "BBIO1";
	const int	  	kResLen	  	 		= 5;
	const int		kMaxAttempts 		= 25;
	const int		kAttemptsThreshold  = 20;

	char 	buffer[100] = { [0 ... 20] = 0x00 };

	int 	result		= 0, 
			attempts	= 0;

	bool 	run 		= true;

	printf("Entering binary mode ...\n");

	if (fd == -1)
	{
	    fprintf(stderr, "Port does not exist!");
	    result = ERROR;
	}
   	else
   	{
		while (run) 
		{
			buffer[0] = 0x00;
			serial_write(fd, buffer, 1);
			attempts++;
			Sleep(1);
			result = serial_read(fd, buffer, kResLen);

		    if (result != kResLen && attempts > kAttemptsThreshold) 
			{
			    fprintf(stderr, " BusPirate did not respond correctly: %i \n", result);
			    result = ERROR;
		    }
		    else if (strncmp(buffer, kExpectedRes, kResLen) == 0) 
			{
			    run = false;
		        result = BBIO;
		    }

			if (attempts > kMaxAttempts)
			{
				fprintf(stderr, "Too many attempts in serial read! - exiting. \n");
				fprintf(stderr, "- BusPirate not detected, or not readable/writable.\n");
				result = ERROR;
				break;
			}
		}	
   }
   
   return result;
}


int BP_EnableMode (int fd, char bbmode)
{	
	int 	n_bytes_read	= 0, 
			result			= 0,
			current_mode	= (int) bbmode;

	char 	buffer[100] = { [0 ... 20] = 0x00 };

	printf("Switching to %s mode ...\n", kBPModes[current_mode]);

	buffer[0] = bbmode;

	serial_write(fd, buffer, 1);
	Sleep(1);
	n_bytes_read = serial_read(fd, buffer, 4);

	switch(bbmode)
	{
    	case SPI:
    	    if (n_bytes_read == 4 && strncmp(buffer, "SPI1", 4) == 0)
    	        result = bbmode;
    	    else
    	        result = ERROR;
    	    break;
    	case I2C:
    	    if (n_bytes_read == 4 && strncmp(buffer, "I2C1", 4) == 0)
    	        result = bbmode;
    	    else
    	        result = ERROR;
    	    break;
    	case ART:
    	    if (n_bytes_read == 4 && strncmp(buffer, "ART1", 4) == 0)
    	        result = bbmode;
    	    else
    	        result = ERROR;
    	    break;
    	case OWD:
    	    if (n_bytes_read == 4 && strncmp(buffer, "1W01", 4) == 0)
    	        result = bbmode;
    	    else
    	        result = ERROR;
    	    break;
    	case RAW:
    	   if (n_bytes_read == 4 && strncmp(buffer, "RAW1", 4) == 0)
    	        result = bbmode;
    	   else
    	        result = ERROR;
    	   break;
    	default:
    	     fprintf(stderr, "BusPirate did not respond correctly: %i \n", n_bytes_read);
    	     result = ERROR;
    }


	return result;
}

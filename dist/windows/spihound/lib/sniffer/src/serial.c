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

#include <fcntl.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "../include/serial.h"
#include "../include/mp.h"

#define PATH_LENGTH 32

int serial_setup(int fd, speed_t speed)
{
	int result = 0;

#ifdef _WIN32
	DCB dcb = {0};
	HANDLE hCom = (HANDLE)fd;

	COMMTIMEOUTS timeouts;

	dcb.DCBlength = sizeof(dcb);
	dcb.BaudRate = speed;
	dcb.ByteSize = 8;
	dcb.Parity = NOPARITY;
	dcb.StopBits = ONESTOPBIT;

	if (!SetCommState(hCom, &dcb))
		result = -1;
	else
	{
		timeouts.ReadIntervalTimeout = 100;
		timeouts.ReadTotalTimeoutMultiplier = 10;
		timeouts.ReadTotalTimeoutConstant = 100;
		timeouts.WriteTotalTimeoutMultiplier = 10;
		timeouts.WriteTotalTimeoutConstant = 100;

		if (!SetCommTimeouts(hCom, &timeouts))
			result = -1;
	}

#else
	// Get the current configuration of the serial port.
	struct termios options;
	result = tcgetattr(fd, &options);
	if (result)
	{
		perror("tcgetattr failed");
		close(fd);
		return -1;
	}

	// Turn off any options that might interfere with our ability to send and
	// receive raw binary bytes.
	options.c_iflag &= ~(INLCR | IGNCR | ICRNL | IXON | IXOFF);
	options.c_oflag &= ~(ONLCR | OCRNL);
	options.c_lflag &= ~(ECHO | ECHONL | ICANON | ISIG | IEXTEN);

	// Set up timeouts: Calls to read() will return as soon as there is
	// at least one byte available or when 100 ms has passed.
	options.c_cc[VTIME] = 1;
	options.c_cc[VMIN] = 0;

	// This code only supports certain standard baud rates. Supporting
	// non-standard baud rates should be possible but takes more work.
	switch (speed)
	{
	case 4800:
		cfsetospeed(&options, B4800);
		break;
	case 9600:
		cfsetospeed(&options, B9600);
		break;
	case 19200:
		cfsetospeed(&options, B19200);
		break;
	case 38400:
		cfsetospeed(&options, B38400);
		break;
	case 115200:
		cfsetospeed(&options, B115200);
		break;
	default:
		fprintf(stderr, "warning: baud rate %u is not supported, using 9600.\n",
				(unsigned int)speed);
		cfsetospeed(&options, B9600);
		break;
	}

	cfsetispeed(&options, cfgetospeed(&options));

	result = tcsetattr(fd, TCSANOW, &options);
	if (result)
	{
		perror("tcsetattr failed");
		close(fd);
		return -1;
	}
#endif

	return result;
}

int serial_write(int fd, char *buf, int size)
{
	int n_bytes_w = 0;
#ifdef _WIN32
	HANDLE hCom = (HANDLE)fd;

	if (WriteFile(hCom, buf, size, &n_bytes_w, NULL) == false)
		n_bytes_w = -1;

	if (n_bytes_w != size)
		fprintf(stderr, "Error sending data.\n");
#else
	n_bytes_w = write(fd, buf, size);
	if (n_bytes_w != size)
	{
		perror("failed to write to port");
		return -1;
	}
#endif
	return n_bytes_w;
}

int serial_read (int fd, char *buf, int size)
{
	int 			n_bytes_r 	= 0;
#ifdef _WIN32
	HANDLE 			hCom 		= (HANDLE)fd;

	if(ReadFile(hCom, buf, size, &n_bytes_r, NULL) == false || n_bytes_r < 1)
		n_bytes_r = -1;
#else
	while (n_bytes_r < size)
	{
		ssize_t r = read(fd, buf + n_bytes_r, size - n_bytes_r);
		if (r < 0)
		{
			perror("failed to read from port");
			return -1;
		}
		if (r == 0)
		{
			// Timeout
			break;
		}
		n_bytes_r += r;
	}
#endif

	return n_bytes_r;
}


int serial_open (const char *port)
{
	static char full_path[PATH_LENGTH] = {0};

	int 	fd	 = -1;

#ifdef _WIN32
	HANDLE 	hCom = NULL;

	if(port[0] != '\\') 
	{
		_snprintf(full_path, sizeof(full_path) - 1, "\\\\.\\%s", port);
		port = full_path;
	}

	hCom = CreateFileA(port, GENERIC_WRITE | GENERIC_READ, 0, NULL, 
					   OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);

	if (hCom && hCom != INVALID_HANDLE_VALUE) 
		fd = (int)hCom;

#else /* _WIN32 */

	fd = open(port, O_RDWR | O_NOCTTY);
	if (fd == -1)
	{
		perror(port);
		return -1;
	}

	// Flush away any bytes previously read or written.
	int result = tcflush(fd, TCIOFLUSH);
	if (result)
	{
		perror("tcflush failed"); // just a warning, not a fatal error
	}
#endif

	return fd;
}


int serial_close (int fd)
{
#ifdef _WIN32
	HANDLE hCom = (HANDLE)fd;

	CloseHandle(hCom);
#else
	close(fd);
#endif

	return 0;
}


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
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "../include/buspirate.h"
#include "../include/status_code.h"
#include "../include/serial.h"
#include "../include/mp.h"

#ifndef _WIN32

int _getch(void)
{

    char chbuf[1];

    struct termios oldstate, newstate;

    tcgetattr(0, &oldstate);

    newstate = oldstate;

    newstate.c_lflag &= ~ICANON;

    newstate.c_lflag &= ~ECHO;

    tcsetattr(0, TCSANOW, &newstate);

    read(0, &chbuf, 1);

    tcsetattr(0, TCSANOW, &oldstate);

    return *chbuf;
}


int _kbhit()
{
    static const int STDIN = 0;
    static bool initialized = false;

    if (!initialized)
    {
        // Use termios to turn off line buffering
        struct termios term;
        tcgetattr(STDIN, &term);
        term.c_lflag &= ~ICANON;
        tcsetattr(STDIN, TCSANOW, &term);
        setbuf(stdin, NULL);
        initialized = true;
    }

    int bytesWaiting;
    ioctl(STDIN, FIONREAD, &bytesWaiting);
    return bytesWaiting;
}

#endif

#define BUFFER_SIZE     256
#define CS_LOW          0x5B
#define CS_HIGH         0x5D
#define PAIR_DELIMITER  0x5C


static const char* kBaudrate        = "115200";
static const char* kClockEdge       = "0";
static const char* kPolarity        = "1";
static const char* kTrafficDirPath  = ".";


typedef enum state
{
    NULL_STATE = -1,
    PENDING_CS_LOW,
    PENDING_DATA,
    READ_MOSI,
    READ_MISO,
}
State;


static bool port_valid (const char* port)
{
    bool valid = port != NULL;

    if (!valid)
        fprintf (stderr, "Serial port was not set.\n");

    return valid;
}


static void setup_parameters (const char** traffic_dir_path,
                              const char** p_baudrate, 
                              const char** p_clock_edge, 
                              const char** p_polarity)
{
    if (*traffic_dir_path == NULL)
        *traffic_dir_path = kTrafficDirPath;

    if (*p_baudrate == NULL)
        *p_baudrate = kBaudrate;

    if (*p_clock_edge == NULL)
        *p_clock_edge = kClockEdge;

    if (*p_polarity == NULL)
        *p_polarity = kPolarity;
}


static void print_header (FILE*         fp_traffic, 
                          const char*   port, 
                          const char*   baudrate, 
                          const char*   clock_edge, 
                          const char*   polarity)
{
    time_t      t   = time(NULL);
    struct tm   tm  = *localtime(&t);

    fprintf (fp_traffic, "* ============================================ *\n");
    fprintf (fp_traffic, "* SPI Master-Slave traffic sniffing\n");
    fprintf (fp_traffic, "* Generated at: %d-%02d-%02d %02d:%02d:%02d\n", 
             tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday, tm.tm_hour, tm.tm_min, tm.tm_sec);
    fprintf (fp_traffic, "* Sniffer parameters:\n");
    fprintf (fp_traffic, "*     >>  Port:       %s\n", port);
    fprintf (fp_traffic, "*     >>  Baudrate:   %s\n", baudrate);
    fprintf (fp_traffic, "*     >>  ClockEdge:  %s\n", clock_edge);
    fprintf (fp_traffic, "*     >>  Polarity:   %s\n", polarity);
    fprintf (fp_traffic, "* ============================================ *\n");
    fprintf (fp_traffic, "\n");
}


static int open_buspirate (const char* port, const char* baudrate)
{
    int fd = ERROR;

    printf ("Opening BusPirate on %s at %sbps ...\n", port, baudrate);

 	fd = serial_open (port);

	if (fd < 0) 
		fprintf (stderr, "Failed opening serial port %s.\n", port);

    return fd;
}


static int configure_buspirate (int         fd, 
                                const char* baudrate, 
                                const char* clock_edge, 
                                const char* polarity)
{   
    char bp_cmd = 0;

    printf ("Configuring BusPirate ...\n");

 	serial_setup (fd, (speed_t) atoi(baudrate));

    printf("Entering SPI sniffing mode ...\n");

  	if(BP_EnableBinary (fd) != BBIO)
    {
        fprintf (stderr, "Buspirate cannot switch to binary mode.\n");
        fprintf (stderr, "Exiting...\n");
        return ERROR;
   	}

    if(BP_EnableMode(fd , BP_ACKNOWLEDGE) != BP_ACKNOWLEDGE)
    {
        fprintf (stderr, "Buspirate cannot switch to SPI mode.\n");
        fprintf (stderr, "Exiting...\n");
        return ERROR;
    }

    printf("Setting ClockEdge/Polarity...");
    bp_cmd = 0x80;

    if (strncmp (clock_edge, "1", 1) == 0){
        printf (" ClockEdge=1 ");
        bp_cmd |=0x02;
    }


    if (strncmp (polarity, "1", 1) == 0){
        printf (" Polarity=1 ");
        bp_cmd |=0x04;
    }

    if (BP_WriteToPirate (fd, &bp_cmd) == 0)
        printf ("OK.\n");
    else
    {
        printf ("Bad ClockEdge(%s)/Polarity(%s) settings.\n", clock_edge, polarity);
        return ERROR;
    }

    printf ("\nReady to sniff.\nWaiting for Master-Slave traffic.\n");
    serial_write (fd, "\x0E", 1);

    return OK;
}


static void read_traffic (FILE* fp_traffic, int fd)
{
    /* ==>  begin local stack <== */
    static const int kBatchSize = 100;

    char    buffer[BUFFER_SIZE] = {0},
            c                   = 0;
    int     bytes_read          = 0;
    State   state               = PENDING_CS_LOW,
            next_state          = NULL_STATE;
    bool    first_read          = true;
    /* ==> end local stack <== */

    while (true)
    {
        Sleep (1);

        bytes_read = serial_read (fd, buffer, kBatchSize);

        if (bytes_read == 1 && buffer[0] == CS_LOW) break;

        if (first_read && bytes_read > 1)
        {
            printf ("\nInitiating traffic sniffing.\n");
            first_read = false;
        }

        for (c = 0; c < bytes_read; c++)
        {
		    switch (state) 
            {
		    	default:
                    fprintf (fp_traffic, "Error - should not reach this");
                    break;

                case PENDING_CS_LOW:
                    if (buffer[c] == CS_LOW) 
                    {
                        fprintf (fp_traffic, "[");
                        next_state = PENDING_DATA;
                    } 
                    else 
                    {
                        fprintf (fp_traffic, "Sync: 0x%02X\n", (uint8_t) buffer[c]);
                        next_state = PENDING_CS_LOW;
                    }
                    break;

                case PENDING_DATA:
                    if (buffer[c] == PAIR_DELIMITER) 
                    {
                        next_state = READ_MOSI;
                    } 
                    else if (buffer[c] == CS_HIGH) 
                    {
                        fprintf(fp_traffic, "]\n");
                        next_state = PENDING_CS_LOW;
                    } 
                    else 
                    { 
                        fprintf (fp_traffic, "Sync: 0x%02X\n", (uint8_t) buffer[c]);
                        next_state = PENDING_CS_LOW;
                    }
                    break;

                    case READ_MOSI:
                        fprintf (fp_traffic, "0x%02X", (uint8_t) buffer[c]);
                        next_state = READ_MISO;
                        break;

                    case READ_MISO:
                        fprintf (fp_traffic, "(0x%02X)", (uint8_t) buffer[c]);
                        next_state = PENDING_DATA;
                        break;
            }
            state = next_state;
        }

        if (_kbhit())
        {
            c = _getch();
            break;
        }
    }
}


static FILE* create_traffic_file (const char* dir_path, char* fname)
{
    #ifdef _WIN32
    char path_fmt[] = "%s\\traffic-%d.com";
    #else
    char path_fmt[] = "%s/traffic-%d.com";
    #endif

    if (dir_path == NULL)
        goto create_traffic_file_exit;

    /* ==> begin local stack <== */
    char  file_path[FILENAME_MAX] = {0};
    FILE* fp_traffic    = NULL;
    int   version       = 0;
    /* ==> end local stack <== */

    sprintf (file_path, path_fmt, dir_path, version);

    while (access (file_path, F_OK) != -1)
    {
        version++;
        sprintf (file_path, path_fmt, dir_path, version);
    }

    fp_traffic = fopen (file_path, "w");

    create_traffic_file_exit:
    strcpy_s (fname, FILENAME_MAX, file_path);
    return fp_traffic;
}


export
int sniff (const char* traffic_dir_path, 
           const char* port, 
           const char* baudrate, 
           const char* clock_edge, 
           const char* polarity)
{
    if (!port_valid (port)) goto sniff_exit;

    /* ==>  begin local stack <== */
    char  fname[FILENAME_MAX] = {0};
    int   fd         = -1;
    int   status     = ERROR;
    FILE* fp_traffic = NULL;
    /* ==> end local stack <== */

    setup_parameters (&traffic_dir_path, &baudrate, &clock_edge, &polarity);

    fp_traffic = create_traffic_file (traffic_dir_path, fname);
    print_header (fp_traffic, port, baudrate, clock_edge, polarity);  

    fd = open_buspirate (port, baudrate);
    if (fd < 0) goto sniff_exit;

    status = configure_buspirate (fd, baudrate, clock_edge, polarity);
    if (status != OK) goto sniff_exit;

    read_traffic (fp_traffic, fd);
    printf ("\nSPI sniffing is done!\nCheck your sniffed traffic at %s\n", fname);

    sniff_exit:
    if (fp_traffic != NULL)
        fclose (fp_traffic);

    return status; 
}
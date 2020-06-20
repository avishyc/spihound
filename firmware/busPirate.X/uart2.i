# 1 "../uart2.c"
# 1 "C:\\Users\\avish\\Workspace\\Firmware\\busPirate.X//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../uart2.c"
# 18 "../uart2.c"
# 1 "../uart2.h" 1
# 21 "../uart2.h"
# 1 "../configuration.h" 1
# 22 "../uart2.h" 2



# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdbool.h" 1 3 4
# 26 "../uart2.h" 2
# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 13 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h" 3 4
typedef signed char int8_t;






typedef signed int int16_t;






typedef signed long int int32_t;






typedef signed long long int int64_t;
# 43 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h" 3 4
typedef unsigned char uint8_t;





typedef unsigned int uint16_t;





typedef unsigned long int uint32_t;





typedef unsigned long long int uint64_t;
# 70 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h" 3 4
typedef signed char int_least8_t;






typedef signed int int_least16_t;






typedef signed long int int_least24_t;






typedef signed long int int_least32_t;






typedef signed long long int int_least64_t;






typedef unsigned char uint_least8_t;





typedef unsigned int uint_least16_t;





typedef long int uint_least24_t;





typedef unsigned long int uint_least32_t;





typedef unsigned long long int uint_least64_t;







typedef signed int int_fast8_t;






typedef signed int int_fast16_t;






typedef signed long int int_fast24_t;






typedef signed long int int_fast32_t;






typedef signed long long int int_fast64_t;






typedef unsigned int uint_fast8_t;





typedef unsigned int uint_fast16_t;





typedef unsigned long int uint_fast24_t;





typedef unsigned long int uint_fast32_t;





typedef unsigned long long int uint_fast64_t;





typedef long long int intmax_t;




typedef unsigned long long int uintmax_t;
# 27 "../uart2.h" 2
# 133 "../uart2.h"
void uart2_setup(const uint16_t baud_rate_generator_prescaler,
                 const _Bool open_drain_output, const _Bool invert_polarity,
                 const uint8_t databits_and_parity, const _Bool stop_bits);




void uart2_enable(void);




void uart2_disable(void);
# 155 "../uart2.h"
void uart2_tx(const uint8_t character);






_Bool uart2_rx_ready(void);
# 172 "../uart2.h"
uint8_t uart2_rx(void);
# 19 "../uart2.c" 2



# 1 "../base.h" 1
# 32 "../base.h"
# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 1 3 4
# 12 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/subordinate_errors.h" 1 3 4
# 13 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 2 3 4
# 24 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern int __attach_input_file(const char *f);
void __close_input_file(void);
# 35 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern int __C30_UART;
# 45 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern void __delay32(unsigned long cycles);
# 83 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern __attribute__((space(prog))) int _PROGRAM_END;
# 96 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern void _dump_heap_info(void);
# 115 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
typedef unsigned long _prog_addressT;

extern _prog_addressT _memcpy_helper(_prog_addressT src, void *dst,
                                     unsigned int len, int flags);
# 128 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern void *_memcpy_df(__pack_upper_byte void *src,void *dst,unsigned int len);
# 147 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
_prog_addressT _memcpy_p2d16(void *dest, _prog_addressT src,
                             unsigned int len);
# 159 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
_prog_addressT _memcpy_p2d24(void *dest, _prog_addressT src,
                             unsigned int len);
# 172 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
_prog_addressT _strncpy_p2d16(char *dest, _prog_addressT src,
                              unsigned int len);
# 185 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
_prog_addressT _strncpy_p2d24(char *dest, _prog_addressT src,
                              unsigned int len);







void *_memcpy_packed(char *dest, __pack_upper_byte void *src, unsigned int len);



extern char *_strcpy_packed(char *dest, __pack_upper_byte void *src);
extern char *_strncpy_packed(char *dest, __pack_upper_byte void *src,
                             unsigned int len);






extern __eds__ void *_memcpy_eds_3(__eds__ void *src, __eds__ void *dst,
                                   int len);
# 222 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern __eds__ char *_strcpy_eds(__eds__ void *src, __eds__ void *dst);
extern __eds__ char *_strncpy_eds(__eds__ void *src, __eds__ void *dst,int len);
# 363 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern void _eedata_helper1 (_prog_addressT dst, int len);
extern void _eedata_helper2 (void);
extern void _eedata_helper3 (_prog_addressT dst, int dat);
extern void _eedata_helper4 (_prog_addressT dst, int *src);
extern void _eedata_helper5 (_prog_addressT dst, int len);
extern void _eedata_helper6 (void);
extern void _eedata_helper7 (_prog_addressT dst, int dat);
# 385 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern void _flash_helper1 (_prog_addressT dst, int code)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper2 (_prog_addressT dst, int *src, int len)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper3 (_prog_addressT dst, long *src, int len)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper4 (_prog_addressT dst, int dat)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper5 (_prog_addressT dst, long dat)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper6 (int code)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper7 (_prog_addressT dst, int len)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper8 (_prog_addressT dst, int *src, int len)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper9 (_prog_addressT dst, long *src, int len)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper10 (_prog_addressT dst, int dat1, int empty, int dat2)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper11 (_prog_addressT dst, long dat1, long dat2)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
# 530 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
void _erase_flash(_prog_addressT dst);
# 546 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
void _write_flash16(_prog_addressT dst, int *src);
# 562 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
void _write_flash24(_prog_addressT dst, long *src);
# 581 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
void _write_flash_word16(_prog_addressT dst, int dat);
# 599 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
void _write_flash_word24(_prog_addressT dst, long dat);
# 33 "../base.h" 2
# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 34 "../base.h" 2
# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdio.h" 1 3 4
# 28 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdio.h" 3 4
# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stddef.h" 1 3 4



typedef int ptrdiff_t;
typedef unsigned int size_t;
typedef short unsigned int wchar_t;
# 17 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stddef.h" 3 4
extern int errno;
# 29 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdio.h" 2 3 4



# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdarg.h" 1 3 4





typedef void *va_list;
# 33 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdio.h" 2 3 4
# 57 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdio.h" 3 4
extern struct _iobuf {
 char * _ptr;
 int _cnt;
 char * _base;
 unsigned short _flag;
 short _file;
 size_t _size;
} _iob[3];



extern struct _iobuf *_Files;
# 78 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdio.h" 3 4
extern struct _tfiles {
 char tname[81];
 struct _iobuf * tfp;
} * _tfilesptr;
# 258 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdio.h" 3 4
extern int _flsbuf(char, struct _iobuf *);
extern int _filbuf(struct _iobuf *);
extern int fclose(struct _iobuf *);
extern int fflush(struct _iobuf *);
extern int fgetc(struct _iobuf *);
extern int ungetc(int, struct _iobuf *);
extern int fputc(int, struct _iobuf *);
extern int getw(struct _iobuf *);
extern int putw(int, struct _iobuf *);
extern int fputs(const char *, struct _iobuf *);
extern int fread(void *, size_t, size_t, struct _iobuf *);
extern size_t fwrite(const void *, size_t, size_t, struct _iobuf *);
extern int fseek(struct _iobuf *, long, int);
extern int rewind(struct _iobuf *);
extern void setbuf(struct _iobuf *, char *);
extern int setvbuf(struct _iobuf *, char *, int, size_t);
extern int fprintf(struct _iobuf *, const char *, ...);
extern int fscanf(struct _iobuf *, const char *, ...);
extern int vfprintf(struct _iobuf *, const char *, va_list);
extern int vfscanf(struct _iobuf *, const char *, va_list);
extern int remove(const char *);
extern int rename(const char *, const char *);
extern struct _iobuf * fopen(const char *, const char *);
extern struct _iobuf * freopen(const char *, const char *, struct _iobuf *);
extern struct _iobuf * fdopen(int, const char *);
extern long ftell(struct _iobuf *);
extern char * fgets(char *, int, struct _iobuf *);
extern void perror(const char *);
extern char * _bufallo(void);
extern void _buffree(char *);
extern char * tmpnam(char *);
extern struct _iobuf * tmpfile(void);
# 302 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdio.h" 3 4
extern void (*_atexitptr)(void);
# 335 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdio.h" 3 4
extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...);
extern int sscanf(const char *, const char *, ...);
extern int snprintf(char *str, size_t size, const char * fmt, ...);
extern int vprintf(const char *, va_list);
extern int vsprintf(char *, const char *, va_list);
extern int vsnprintf(char *str, size_t size, const char *format, va_list ap);
extern int vscanf(const char *, va_list ap);
extern int vsscanf(const char *, const char *, va_list);
# 391 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdio.h" 3 4
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);
# 35 "../base.h" 2
# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdlib.h" 1 3 4
# 24 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdlib.h" 3 4
typedef struct {
 int quot;
 int rem;
} div_t;
typedef struct {
 unsigned quot;
 unsigned rem;
} udiv_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 unsigned long quot;
 unsigned long rem;
} uldiv_t;
# 73 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdlib.h" 3 4
extern double atof(const char *);
extern float strtof(const char *, char **);
extern double strtod(const char *, char **);
extern long double strtold(const char *, char **);


extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);
extern long strtol(const char *, char **, int);
extern unsigned long strtoul(const char *, char **, int);





extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);

extern void



abort(void);

extern void



exit(int);

extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;




extern int system(char *);


extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);
extern char * ltoa(char * buf, long val, int base);


extern char * ultoa(char * buf, unsigned long val, int base);
# 36 "../base.h" 2
# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/string.h" 1 3 4
# 14 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/string.h" 3 4
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);

extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);

extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strrchr(const char *, int);
# 37 "../base.h" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\generic\\h/xc.h" 1 3 4
# 218 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\generic\\h/xc.h" 3 4
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h" 1 3 4
# 41 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h" 3 4
# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 42 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h" 2 3 4
# 55 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h" 3 4
extern volatile uint16_t WREG0 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG1 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG2 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG3 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG4 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG5 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG6 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG7 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG8 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG9 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG10 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG11 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG12 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG13 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG14 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG15 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t SPLIM __attribute__((__sfr__));

extern volatile uint16_t PCL __attribute__((__sfr__));

extern volatile uint8_t PCH __attribute__((__sfr__));

extern volatile uint8_t TBLPAG __attribute__((__sfr__));

extern volatile uint8_t PSVPAG __attribute__((__sfr__));

extern volatile uint16_t RCOUNT __attribute__((__sfr__));

extern volatile uint16_t SR __attribute__((__sfr__));
__extension__ typedef struct tagSRBITS {
  union {
    struct {
      uint16_t C:1;
      uint16_t Z:1;
      uint16_t OV:1;
      uint16_t N:1;
      uint16_t RA:1;
      uint16_t IPL:3;
      uint16_t DC:1;
    };
    struct {
      uint16_t :5;
      uint16_t IPL0:1;
      uint16_t IPL1:1;
      uint16_t IPL2:1;
    };
  };
} SRBITS;
extern volatile SRBITS SRbits __attribute__((__sfr__));


extern volatile uint16_t CORCON __attribute__((__sfr__));
typedef struct tagCORCONBITS {
  uint16_t :2;
  uint16_t PSV:1;
  uint16_t IPL3:1;
} CORCONBITS;
extern volatile CORCONBITS CORCONbits __attribute__((__sfr__));


extern volatile uint16_t DISICNT __attribute__((__sfr__));

extern volatile uint16_t CNPD1 __attribute__((__sfr__));
typedef struct tagCNPD1BITS {
  uint16_t CN0PDE:1;
  uint16_t CN1PDE:1;
  uint16_t CN2PDE:1;
  uint16_t CN3PDE:1;
  uint16_t CN4PDE:1;
  uint16_t CN5PDE:1;
  uint16_t CN6PDE:1;
  uint16_t CN7PDE:1;
  uint16_t CN8PDE:1;
  uint16_t CN9PDE:1;
  uint16_t CN10PDE:1;
  uint16_t CN11PDE:1;
  uint16_t CN12PDE:1;
  uint16_t CN13PDE:1;
  uint16_t CN14PDE:1;
  uint16_t CN15PDE:1;
} CNPD1BITS;
extern volatile CNPD1BITS CNPD1bits __attribute__((__sfr__));


extern volatile uint16_t CNPD2 __attribute__((__sfr__));
typedef struct tagCNPD2BITS {
  uint16_t CN16PDE:1;
  uint16_t CN17PDE:1;
  uint16_t CN18PDE:1;
  uint16_t :3;
  uint16_t CN22PDE:1;
  uint16_t CN23PDE:1;
  uint16_t CN24PDE:1;
  uint16_t CN25PDE:1;
  uint16_t CN26PDE:1;
  uint16_t CN27PDE:1;
  uint16_t CN28PDE:1;
  uint16_t CN29PDE:1;
  uint16_t CN30PDE:1;
  uint16_t CN31PDE:1;
} CNPD2BITS;
extern volatile CNPD2BITS CNPD2bits __attribute__((__sfr__));


extern volatile uint16_t CNPD3 __attribute__((__sfr__));
typedef struct tagCNPD3BITS {
  uint16_t CN32PDE:1;
} CNPD3BITS;
extern volatile CNPD3BITS CNPD3bits __attribute__((__sfr__));


extern volatile uint16_t CNPD4 __attribute__((__sfr__));
typedef struct tagCNPD4BITS {
  uint16_t :1;
  uint16_t CN49PDE:1;
  uint16_t CN50PDE:1;
  uint16_t CN51PDE:1;
  uint16_t CN52PDE:1;
  uint16_t CN53PDE:1;
  uint16_t CN54PDE:1;
  uint16_t CN55PDE:1;
  uint16_t CN56PDE:1;
  uint16_t :1;
  uint16_t CN58PDE:1;
  uint16_t CN59PDE:1;
  uint16_t CN60PDE:1;
  uint16_t CN61PDE:1;
  uint16_t CN62PDE:1;
  uint16_t CN63PDE:1;
} CNPD4BITS;
extern volatile CNPD4BITS CNPD4bits __attribute__((__sfr__));


extern volatile uint16_t CNPD5 __attribute__((__sfr__));
typedef struct tagCNPD5BITS {
  uint16_t CN64PDE:1;
  uint16_t CN65PDE:1;
  uint16_t :2;
  uint16_t CN68PDE:1;
  uint16_t CN69PDE:1;
  uint16_t :1;
  uint16_t CN71PDE:1;
} CNPD5BITS;
extern volatile CNPD5BITS CNPD5bits __attribute__((__sfr__));


extern volatile uint16_t CNEN1 __attribute__((__sfr__));
typedef struct tagCNEN1BITS {
  uint16_t CN0IE:1;
  uint16_t CN1IE:1;
  uint16_t CN2IE:1;
  uint16_t CN3IE:1;
  uint16_t CN4IE:1;
  uint16_t CN5IE:1;
  uint16_t CN6IE:1;
  uint16_t CN7IE:1;
  uint16_t CN8IE:1;
  uint16_t CN9IE:1;
  uint16_t CN10IE:1;
  uint16_t CN11IE:1;
  uint16_t CN12IE:1;
  uint16_t CN13IE:1;
  uint16_t CN14IE:1;
  uint16_t CN15IE:1;
} CNEN1BITS;
extern volatile CNEN1BITS CNEN1bits __attribute__((__sfr__));


extern volatile uint16_t CNEN2 __attribute__((__sfr__));
typedef struct tagCNEN2BITS {
  uint16_t CN16IE:1;
  uint16_t CN17IE:1;
  uint16_t CN18IE:1;
  uint16_t :3;
  uint16_t CN22IE:1;
  uint16_t CN23IE:1;
  uint16_t CN24IE:1;
  uint16_t CN25IE:1;
  uint16_t CN26IE:1;
  uint16_t CN27IE:1;
  uint16_t CN28IE:1;
  uint16_t CN29IE:1;
  uint16_t CN30IE:1;
  uint16_t CN31IE:1;
} CNEN2BITS;
extern volatile CNEN2BITS CNEN2bits __attribute__((__sfr__));


extern volatile uint16_t CNEN3 __attribute__((__sfr__));
typedef struct tagCNEN3BITS {
  uint16_t CN32IE:1;
} CNEN3BITS;
extern volatile CNEN3BITS CNEN3bits __attribute__((__sfr__));


extern volatile uint16_t CNEN4 __attribute__((__sfr__));
typedef struct tagCNEN4BITS {
  uint16_t :1;
  uint16_t CN49IE:1;
  uint16_t CN50IE:1;
  uint16_t CN51IE:1;
  uint16_t CN52IE:1;
  uint16_t CN53IE:1;
  uint16_t CN54IE:1;
  uint16_t CN55IE:1;
  uint16_t CN56IE:1;
  uint16_t :1;
  uint16_t CN58IE:1;
  uint16_t CN59IE:1;
  uint16_t CN60IE:1;
  uint16_t CN61IE:1;
  uint16_t CN62IE:1;
  uint16_t CN63IE:1;
} CNEN4BITS;
extern volatile CNEN4BITS CNEN4bits __attribute__((__sfr__));


extern volatile uint16_t CNEN5 __attribute__((__sfr__));
typedef struct tagCNEN5BITS {
  uint16_t CN64IE:1;
  uint16_t CN65IE:1;
  uint16_t :2;
  uint16_t CN68IE:1;
  uint16_t CN69IE:1;
  uint16_t :1;
  uint16_t CN71IE:1;
} CNEN5BITS;
extern volatile CNEN5BITS CNEN5bits __attribute__((__sfr__));


extern volatile uint16_t CNPU1 __attribute__((__sfr__));
typedef struct tagCNPU1BITS {
  uint16_t CN0PUE:1;
  uint16_t CN1PUE:1;
  uint16_t CN2PUE:1;
  uint16_t CN3PUE:1;
  uint16_t CN4PUE:1;
  uint16_t CN5PUE:1;
  uint16_t CN6PUE:1;
  uint16_t CN7PUE:1;
  uint16_t CN8PUE:1;
  uint16_t CN9PUE:1;
  uint16_t CN10PUE:1;
  uint16_t CN11PUE:1;
  uint16_t CN12PUE:1;
  uint16_t CN13PUE:1;
  uint16_t CN14PUE:1;
  uint16_t CN15PUE:1;
} CNPU1BITS;
extern volatile CNPU1BITS CNPU1bits __attribute__((__sfr__));


extern volatile uint16_t CNPU2 __attribute__((__sfr__));
typedef struct tagCNPU2BITS {
  uint16_t CN16PUE:1;
  uint16_t CN17PUE:1;
  uint16_t CN18PUE:1;
  uint16_t :3;
  uint16_t CN22PUE:1;
  uint16_t CN23PUE:1;
  uint16_t CN24PUE:1;
  uint16_t CN25PUE:1;
  uint16_t CN26PUE:1;
  uint16_t CN27PUE:1;
  uint16_t CN28PUE:1;
  uint16_t CN29PUE:1;
  uint16_t CN30PUE:1;
  uint16_t CN31PUE:1;
} CNPU2BITS;
extern volatile CNPU2BITS CNPU2bits __attribute__((__sfr__));


extern volatile uint16_t CNPU3 __attribute__((__sfr__));
typedef struct tagCNPU3BITS {
  uint16_t CN32PUE:1;
} CNPU3BITS;
extern volatile CNPU3BITS CNPU3bits __attribute__((__sfr__));


extern volatile uint16_t CNPU4 __attribute__((__sfr__));
typedef struct tagCNPU4BITS {
  uint16_t :1;
  uint16_t CN49PUE:1;
  uint16_t CN50PUE:1;
  uint16_t CN51PUE:1;
  uint16_t CN52PUE:1;
  uint16_t CN53PUE:1;
  uint16_t CN54PUE:1;
  uint16_t CN55PUE:1;
  uint16_t CN56PUE:1;
  uint16_t :1;
  uint16_t CN58PUE:1;
  uint16_t CN59PUE:1;
  uint16_t CN60PUE:1;
  uint16_t CN61PUE:1;
  uint16_t CN62PUE:1;
  uint16_t CN63PUE:1;
} CNPU4BITS;
extern volatile CNPU4BITS CNPU4bits __attribute__((__sfr__));


extern volatile uint16_t CNPU5 __attribute__((__sfr__));
typedef struct tagCNPU5BITS {
  uint16_t CN64PUE:1;
  uint16_t CN65PUE:1;
  uint16_t :2;
  uint16_t CN68PUE:1;
  uint16_t CN69PUE:1;
  uint16_t :1;
  uint16_t CN71PUE:1;
} CNPU5BITS;
extern volatile CNPU5BITS CNPU5bits __attribute__((__sfr__));


extern volatile uint16_t INTCON1 __attribute__((__sfr__));
typedef struct tagINTCON1BITS {
  uint16_t :1;
  uint16_t OSCFAIL:1;
  uint16_t STKERR:1;
  uint16_t ADDRERR:1;
  uint16_t MATHERR:1;
  uint16_t :10;
  uint16_t NSTDIS:1;
} INTCON1BITS;
extern volatile INTCON1BITS INTCON1bits __attribute__((__sfr__));


extern volatile uint16_t INTCON2 __attribute__((__sfr__));
typedef struct tagINTCON2BITS {
  uint16_t INT0EP:1;
  uint16_t INT1EP:1;
  uint16_t INT2EP:1;
  uint16_t INT3EP:1;
  uint16_t INT4EP:1;
  uint16_t :9;
  uint16_t DISI:1;
  uint16_t ALTIVT:1;
} INTCON2BITS;
extern volatile INTCON2BITS INTCON2bits __attribute__((__sfr__));


extern volatile uint16_t IFS0 __attribute__((__sfr__));
typedef struct tagIFS0BITS {
  uint16_t INT0IF:1;
  uint16_t IC1IF:1;
  uint16_t OC1IF:1;
  uint16_t T1IF:1;
  uint16_t :1;
  uint16_t IC2IF:1;
  uint16_t OC2IF:1;
  uint16_t T2IF:1;
  uint16_t T3IF:1;
  uint16_t SPF1IF:1;
  uint16_t SPI1IF:1;
  uint16_t U1RXIF:1;
  uint16_t U1TXIF:1;
  uint16_t AD1IF:1;
} IFS0BITS;
extern volatile IFS0BITS IFS0bits __attribute__((__sfr__));


extern volatile uint16_t IFS1 __attribute__((__sfr__));
typedef struct tagIFS1BITS {
  uint16_t SI2C1IF:1;
  uint16_t MI2C1IF:1;
  uint16_t CMIF:1;
  uint16_t CNIF:1;
  uint16_t INT1IF:1;
  uint16_t :1;
  uint16_t IC7IF:1;
  uint16_t IC8IF:1;
  uint16_t :1;
  uint16_t OC3IF:1;
  uint16_t OC4IF:1;
  uint16_t T4IF:1;
  uint16_t T5IF:1;
  uint16_t INT2IF:1;
  uint16_t U2RXIF:1;
  uint16_t U2TXIF:1;
} IFS1BITS;
extern volatile IFS1BITS IFS1bits __attribute__((__sfr__));


extern volatile uint16_t IFS2 __attribute__((__sfr__));
typedef struct tagIFS2BITS {
  uint16_t SPF2IF:1;
  uint16_t SPI2IF:1;
  uint16_t :3;
  uint16_t IC3IF:1;
  uint16_t IC4IF:1;
  uint16_t IC5IF:1;
  uint16_t IC6IF:1;
  uint16_t OC5IF:1;
  uint16_t OC6IF:1;
  uint16_t OC7IF:1;
  uint16_t OC8IF:1;
  uint16_t PMPIF:1;
} IFS2BITS;
extern volatile IFS2BITS IFS2bits __attribute__((__sfr__));


extern volatile uint16_t IFS3 __attribute__((__sfr__));
typedef struct tagIFS3BITS {
  uint16_t :1;
  uint16_t SI2C2IF:1;
  uint16_t MI2C2IF:1;
  uint16_t :2;
  uint16_t INT3IF:1;
  uint16_t INT4IF:1;
  uint16_t :7;
  uint16_t RTCIF:1;
} IFS3BITS;
extern volatile IFS3BITS IFS3bits __attribute__((__sfr__));


extern volatile uint16_t IFS4 __attribute__((__sfr__));
typedef struct tagIFS4BITS {
  uint16_t :1;
  uint16_t U1ERIF:1;
  uint16_t U2ERIF:1;
  uint16_t CRCIF:1;
  uint16_t :4;
  uint16_t LVDIF:1;
  uint16_t :4;
  uint16_t CTMUIF:1;
} IFS4BITS;
extern volatile IFS4BITS IFS4bits __attribute__((__sfr__));


extern volatile uint16_t IFS5 __attribute__((__sfr__));
typedef struct tagIFS5BITS {
  uint16_t :1;
  uint16_t U3ERIF:1;
  uint16_t U3RXIF:1;
  uint16_t U3TXIF:1;
  uint16_t SI2C3IF:1;
  uint16_t MI2C3IF:1;
  uint16_t USB1IF:1;
  uint16_t U4ERIF:1;
  uint16_t U4RXIF:1;
  uint16_t U4TXIF:1;
  uint16_t SPF3IF:1;
  uint16_t SPI3IF:1;
  uint16_t OC9IF:1;
  uint16_t IC9IF:1;
} IFS5BITS;
extern volatile IFS5BITS IFS5bits __attribute__((__sfr__));


extern volatile uint16_t IEC0 __attribute__((__sfr__));
typedef struct tagIEC0BITS {
  uint16_t INT0IE:1;
  uint16_t IC1IE:1;
  uint16_t OC1IE:1;
  uint16_t T1IE:1;
  uint16_t :1;
  uint16_t IC2IE:1;
  uint16_t OC2IE:1;
  uint16_t T2IE:1;
  uint16_t T3IE:1;
  uint16_t SPF1IE:1;
  uint16_t SPI1IE:1;
  uint16_t U1RXIE:1;
  uint16_t U1TXIE:1;
  uint16_t AD1IE:1;
} IEC0BITS;
extern volatile IEC0BITS IEC0bits __attribute__((__sfr__));


extern volatile uint16_t IEC1 __attribute__((__sfr__));
typedef struct tagIEC1BITS {
  uint16_t SI2C1IE:1;
  uint16_t MI2C1IE:1;
  uint16_t CMIE:1;
  uint16_t CNIE:1;
  uint16_t INT1IE:1;
  uint16_t :1;
  uint16_t IC7IE:1;
  uint16_t IC8IE:1;
  uint16_t :1;
  uint16_t OC3IE:1;
  uint16_t OC4IE:1;
  uint16_t T4IE:1;
  uint16_t T5IE:1;
  uint16_t INT2IE:1;
  uint16_t U2RXIE:1;
  uint16_t U2TXIE:1;
} IEC1BITS;
extern volatile IEC1BITS IEC1bits __attribute__((__sfr__));


extern volatile uint16_t IEC2 __attribute__((__sfr__));
typedef struct tagIEC2BITS {
  uint16_t SPF2IE:1;
  uint16_t SPI2IE:1;
  uint16_t :3;
  uint16_t IC3IE:1;
  uint16_t IC4IE:1;
  uint16_t IC5IE:1;
  uint16_t IC6IE:1;
  uint16_t OC5IE:1;
  uint16_t OC6IE:1;
  uint16_t OC7IE:1;
  uint16_t OC8IE:1;
  uint16_t PMPIE:1;
} IEC2BITS;
extern volatile IEC2BITS IEC2bits __attribute__((__sfr__));


extern volatile uint16_t IEC3 __attribute__((__sfr__));
typedef struct tagIEC3BITS {
  uint16_t :1;
  uint16_t SI2C2IE:1;
  uint16_t MI2C2IE:1;
  uint16_t :2;
  uint16_t INT3IE:1;
  uint16_t INT4IE:1;
  uint16_t :7;
  uint16_t RTCIE:1;
} IEC3BITS;
extern volatile IEC3BITS IEC3bits __attribute__((__sfr__));


extern volatile uint16_t IEC4 __attribute__((__sfr__));
typedef struct tagIEC4BITS {
  uint16_t :1;
  uint16_t U1ERIE:1;
  uint16_t U2ERIE:1;
  uint16_t CRCIE:1;
  uint16_t :4;
  uint16_t LVDIE:1;
  uint16_t :4;
  uint16_t CTMUIE:1;
} IEC4BITS;
extern volatile IEC4BITS IEC4bits __attribute__((__sfr__));


extern volatile uint16_t IEC5 __attribute__((__sfr__));
typedef struct tagIEC5BITS {
  uint16_t :1;
  uint16_t U3ERIE:1;
  uint16_t U3RXIE:1;
  uint16_t U3TXIE:1;
  uint16_t SI2C3IE:1;
  uint16_t MI2C3IE:1;
  uint16_t USB1IE:1;
  uint16_t U4ERIE:1;
  uint16_t U4RXIE:1;
  uint16_t U4TXIE:1;
  uint16_t SPF3IE:1;
  uint16_t SPI3IE:1;
  uint16_t OC9IE:1;
  uint16_t IC9IE:1;
} IEC5BITS;
extern volatile IEC5BITS IEC5bits __attribute__((__sfr__));


extern volatile uint16_t IPC0 __attribute__((__sfr__));
__extension__ typedef struct tagIPC0BITS {
  union {
    struct {
      uint16_t INT0IP:3;
      uint16_t :1;
      uint16_t IC1IP:3;
      uint16_t :1;
      uint16_t OC1IP:3;
      uint16_t :1;
      uint16_t T1IP:3;
    };
    struct {
      uint16_t INT0IP0:1;
      uint16_t INT0IP1:1;
      uint16_t INT0IP2:1;
      uint16_t :1;
      uint16_t IC1IP0:1;
      uint16_t IC1IP1:1;
      uint16_t IC1IP2:1;
      uint16_t :1;
      uint16_t OC1IP0:1;
      uint16_t OC1IP1:1;
      uint16_t OC1IP2:1;
      uint16_t :1;
      uint16_t T1IP0:1;
      uint16_t T1IP1:1;
      uint16_t T1IP2:1;
    };
  };
} IPC0BITS;
extern volatile IPC0BITS IPC0bits __attribute__((__sfr__));


extern volatile uint16_t IPC1 __attribute__((__sfr__));
__extension__ typedef struct tagIPC1BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t IC2IP:3;
      uint16_t :1;
      uint16_t OC2IP:3;
      uint16_t :1;
      uint16_t T2IP:3;
    };
    struct {
      uint16_t :4;
      uint16_t IC2IP0:1;
      uint16_t IC2IP1:1;
      uint16_t IC2IP2:1;
      uint16_t :1;
      uint16_t OC2IP0:1;
      uint16_t OC2IP1:1;
      uint16_t OC2IP2:1;
      uint16_t :1;
      uint16_t T2IP0:1;
      uint16_t T2IP1:1;
      uint16_t T2IP2:1;
    };
  };
} IPC1BITS;
extern volatile IPC1BITS IPC1bits __attribute__((__sfr__));


extern volatile uint16_t IPC2 __attribute__((__sfr__));
__extension__ typedef struct tagIPC2BITS {
  union {
    struct {
      uint16_t T3IP:3;
      uint16_t :1;
      uint16_t SPF1IP:3;
      uint16_t :1;
      uint16_t SPI1IP:3;
      uint16_t :1;
      uint16_t U1RXIP:3;
    };
    struct {
      uint16_t T3IP0:1;
      uint16_t T3IP1:1;
      uint16_t T3IP2:1;
      uint16_t :1;
      uint16_t SPF1IP0:1;
      uint16_t SPF1IP1:1;
      uint16_t SPF1IP2:1;
      uint16_t :1;
      uint16_t SPI1IP0:1;
      uint16_t SPI1IP1:1;
      uint16_t SPI1IP2:1;
      uint16_t :1;
      uint16_t U1RXIP0:1;
      uint16_t U1RXIP1:1;
      uint16_t U1RXIP2:1;
    };
  };
} IPC2BITS;
extern volatile IPC2BITS IPC2bits __attribute__((__sfr__));


extern volatile uint16_t IPC3 __attribute__((__sfr__));
__extension__ typedef struct tagIPC3BITS {
  union {
    struct {
      uint16_t U1TXIP:3;
      uint16_t :1;
      uint16_t AD1IP:3;
    };
    struct {
      uint16_t U1TXIP0:1;
      uint16_t U1TXIP1:1;
      uint16_t U1TXIP2:1;
      uint16_t :1;
      uint16_t AD1IP0:1;
      uint16_t AD1IP1:1;
      uint16_t AD1IP2:1;
    };
  };
} IPC3BITS;
extern volatile IPC3BITS IPC3bits __attribute__((__sfr__));


extern volatile uint16_t IPC4 __attribute__((__sfr__));
__extension__ typedef struct tagIPC4BITS {
  union {
    struct {
      uint16_t SI2C1P:3;
      uint16_t :1;
      uint16_t MI2C1P:3;
      uint16_t :1;
      uint16_t CMIP:3;
      uint16_t :1;
      uint16_t CNIP:3;
    };
    struct {
      uint16_t SI2C1IP:3;
      uint16_t :1;
      uint16_t MI2C1IP:3;
    };
    struct {
      uint16_t SI2C1IP0:1;
      uint16_t SI2C1IP1:1;
      uint16_t SI2C1IP2:1;
      uint16_t :1;
      uint16_t MI2C1IP0:1;
      uint16_t MI2C1IP1:1;
      uint16_t MI2C1IP2:1;
      uint16_t :1;
      uint16_t CMIP0:1;
      uint16_t CMIP1:1;
      uint16_t CMIP2:1;
      uint16_t :1;
      uint16_t CNIP0:1;
      uint16_t CNIP1:1;
      uint16_t CNIP2:1;
    };
    struct {
      uint16_t SI2C1P0:1;
      uint16_t SI2C1P1:1;
      uint16_t SI2C1P2:1;
      uint16_t :1;
      uint16_t MI2C1P0:1;
      uint16_t MI2C1P1:1;
      uint16_t MI2C1P2:1;
    };
  };
} IPC4BITS;
extern volatile IPC4BITS IPC4bits __attribute__((__sfr__));


extern volatile uint16_t IPC5 __attribute__((__sfr__));
__extension__ typedef struct tagIPC5BITS {
  union {
    struct {
      uint16_t INT1IP:3;
      uint16_t :5;
      uint16_t IC7IP:3;
      uint16_t :1;
      uint16_t IC8IP:3;
    };
    struct {
      uint16_t INT1IP0:1;
      uint16_t INT1IP1:1;
      uint16_t INT1IP2:1;
      uint16_t :5;
      uint16_t IC7IP0:1;
      uint16_t IC7IP1:1;
      uint16_t IC7IP2:1;
      uint16_t :1;
      uint16_t IC8IP0:1;
      uint16_t IC8IP1:1;
      uint16_t IC8IP2:1;
    };
  };
} IPC5BITS;
extern volatile IPC5BITS IPC5bits __attribute__((__sfr__));


extern volatile uint16_t IPC6 __attribute__((__sfr__));
__extension__ typedef struct tagIPC6BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t OC3IP:3;
      uint16_t :1;
      uint16_t OC4IP:3;
      uint16_t :1;
      uint16_t T4IP:3;
    };
    struct {
      uint16_t :4;
      uint16_t OC3IP0:1;
      uint16_t OC3IP1:1;
      uint16_t OC3IP2:1;
      uint16_t :1;
      uint16_t OC4IP0:1;
      uint16_t OC4IP1:1;
      uint16_t OC4IP2:1;
      uint16_t :1;
      uint16_t T4IP0:1;
      uint16_t T4IP1:1;
      uint16_t T4IP2:1;
    };
  };
} IPC6BITS;
extern volatile IPC6BITS IPC6bits __attribute__((__sfr__));


extern volatile uint16_t IPC7 __attribute__((__sfr__));
__extension__ typedef struct tagIPC7BITS {
  union {
    struct {
      uint16_t T5IP:3;
      uint16_t :1;
      uint16_t INT2IP:3;
      uint16_t :1;
      uint16_t U2RXIP:3;
      uint16_t :1;
      uint16_t U2TXIP:3;
    };
    struct {
      uint16_t T5IP0:1;
      uint16_t T5IP1:1;
      uint16_t T5IP2:1;
      uint16_t :1;
      uint16_t INT2IP0:1;
      uint16_t INT2IP1:1;
      uint16_t INT2IP2:1;
      uint16_t :1;
      uint16_t U2RXIP0:1;
      uint16_t U2RXIP1:1;
      uint16_t U2RXIP2:1;
      uint16_t :1;
      uint16_t U2TXIP0:1;
      uint16_t U2TXIP1:1;
      uint16_t U2TXIP2:1;
    };
  };
} IPC7BITS;
extern volatile IPC7BITS IPC7bits __attribute__((__sfr__));


extern volatile uint16_t IPC8 __attribute__((__sfr__));
__extension__ typedef struct tagIPC8BITS {
  union {
    struct {
      uint16_t SPF2IP:3;
      uint16_t :1;
      uint16_t SPI2IP:3;
    };
    struct {
      uint16_t SPF2IP0:1;
      uint16_t SPF2IP1:1;
      uint16_t SPF2IP2:1;
      uint16_t :1;
      uint16_t SPI2IP0:1;
      uint16_t SPI2IP1:1;
      uint16_t SPI2IP2:1;
    };
  };
} IPC8BITS;
extern volatile IPC8BITS IPC8bits __attribute__((__sfr__));


extern volatile uint16_t IPC9 __attribute__((__sfr__));
__extension__ typedef struct tagIPC9BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t IC3IP:3;
      uint16_t :1;
      uint16_t IC4IP:3;
      uint16_t :1;
      uint16_t IC5IP:3;
    };
    struct {
      uint16_t :4;
      uint16_t IC3IP0:1;
      uint16_t IC3IP1:1;
      uint16_t IC3IP2:1;
      uint16_t :1;
      uint16_t IC4IP0:1;
      uint16_t IC4IP1:1;
      uint16_t IC4IP2:1;
      uint16_t :1;
      uint16_t IC5IP0:1;
      uint16_t IC5IP1:1;
      uint16_t IC5IP2:1;
    };
  };
} IPC9BITS;
extern volatile IPC9BITS IPC9bits __attribute__((__sfr__));


extern volatile uint16_t IPC10 __attribute__((__sfr__));
__extension__ typedef struct tagIPC10BITS {
  union {
    struct {
      uint16_t IC6IP:3;
      uint16_t :1;
      uint16_t OC5IP:3;
      uint16_t :1;
      uint16_t OC6IP:3;
      uint16_t :1;
      uint16_t OC7IP:3;
    };
    struct {
      uint16_t IC6IP0:1;
      uint16_t IC6IP1:1;
      uint16_t IC6IP2:1;
      uint16_t :1;
      uint16_t OC5IP0:1;
      uint16_t OC5IP1:1;
      uint16_t OC5IP2:1;
      uint16_t :1;
      uint16_t OC6IP0:1;
      uint16_t OC6IP1:1;
      uint16_t OC6IP2:1;
      uint16_t :1;
      uint16_t OC7IP0:1;
      uint16_t OC7IP1:1;
      uint16_t OC7IP2:1;
    };
  };
} IPC10BITS;
extern volatile IPC10BITS IPC10bits __attribute__((__sfr__));


extern volatile uint16_t IPC11 __attribute__((__sfr__));
__extension__ typedef struct tagIPC11BITS {
  union {
    struct {
      uint16_t OC8IP:3;
      uint16_t :1;
      uint16_t PMPIP:3;
    };
    struct {
      uint16_t OC8IP0:1;
      uint16_t OC8IP1:1;
      uint16_t OC8IP2:1;
      uint16_t :1;
      uint16_t PMPIP0:1;
      uint16_t PMPIP1:1;
      uint16_t PMPIP2:1;
    };
  };
} IPC11BITS;
extern volatile IPC11BITS IPC11bits __attribute__((__sfr__));


extern volatile uint16_t IPC12 __attribute__((__sfr__));
__extension__ typedef struct tagIPC12BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t SI2C2P:3;
      uint16_t :1;
      uint16_t MI2C2P:3;
    };
    struct {
      uint16_t :4;
      uint16_t SI2C2IP:3;
      uint16_t :1;
      uint16_t MI2C2IP:3;
    };
    struct {
      uint16_t :4;
      uint16_t SI2C2P0:1;
      uint16_t SI2C2P1:1;
      uint16_t SI2C2P2:1;
      uint16_t :1;
      uint16_t MI2C2P0:1;
      uint16_t MI2C2P1:1;
      uint16_t MI2C2P2:1;
    };
    struct {
      uint16_t :4;
      uint16_t SI2C2IP0:1;
      uint16_t SI2C2IP1:1;
      uint16_t SI2C2IP2:1;
      uint16_t :1;
      uint16_t MI2C2IP0:1;
      uint16_t MI2C2IP1:1;
      uint16_t MI2C2IP2:1;
    };
  };
} IPC12BITS;
extern volatile IPC12BITS IPC12bits __attribute__((__sfr__));


extern volatile uint16_t IPC13 __attribute__((__sfr__));
__extension__ typedef struct tagIPC13BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t INT3IP:3;
      uint16_t :1;
      uint16_t INT4IP:3;
    };
    struct {
      uint16_t :4;
      uint16_t INT3IP0:1;
      uint16_t INT3IP1:1;
      uint16_t INT3IP2:1;
      uint16_t :1;
      uint16_t INT4IP0:1;
      uint16_t INT4IP1:1;
      uint16_t INT4IP2:1;
    };
  };
} IPC13BITS;
extern volatile IPC13BITS IPC13bits __attribute__((__sfr__));


extern volatile uint16_t IPC15 __attribute__((__sfr__));
__extension__ typedef struct tagIPC15BITS {
  union {
    struct {
      uint16_t :8;
      uint16_t RTCIP:3;
    };
    struct {
      uint16_t :8;
      uint16_t RTCIP0:1;
      uint16_t RTCIP1:1;
      uint16_t RTCIP2:1;
    };
  };
} IPC15BITS;
extern volatile IPC15BITS IPC15bits __attribute__((__sfr__));


extern volatile uint16_t IPC16 __attribute__((__sfr__));
__extension__ typedef struct tagIPC16BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t U1ERIP:3;
      uint16_t :1;
      uint16_t U2ERIP:3;
      uint16_t :1;
      uint16_t CRCIP:3;
    };
    struct {
      uint16_t :4;
      uint16_t U1ERIP0:1;
      uint16_t U1ERIP1:1;
      uint16_t U1ERIP2:1;
      uint16_t :1;
      uint16_t U2ERIP0:1;
      uint16_t U2ERIP1:1;
      uint16_t U2ERIP2:1;
      uint16_t :1;
      uint16_t CRCIP0:1;
      uint16_t CRCIP1:1;
      uint16_t CRCIP2:1;
    };
  };
} IPC16BITS;
extern volatile IPC16BITS IPC16bits __attribute__((__sfr__));


extern volatile uint16_t IPC18 __attribute__((__sfr__));
__extension__ typedef struct tagIPC18BITS {
  union {
    struct {
      uint16_t LVDIP:3;
    };
    struct {
      uint16_t LVDIP0:1;
      uint16_t LVDIP1:1;
      uint16_t LVDIP2:1;
    };
  };
} IPC18BITS;
extern volatile IPC18BITS IPC18bits __attribute__((__sfr__));


extern volatile uint16_t IPC19 __attribute__((__sfr__));
__extension__ typedef struct tagIPC19BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t CTMUIP:3;
    };
    struct {
      uint16_t :4;
      uint16_t CTMUIP0:1;
      uint16_t CTMUIP1:1;
      uint16_t CTMUIP2:1;
    };
  };
} IPC19BITS;
extern volatile IPC19BITS IPC19bits __attribute__((__sfr__));


extern volatile uint16_t IPC20 __attribute__((__sfr__));
__extension__ typedef struct tagIPC20BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t U3ERIP:3;
      uint16_t :1;
      uint16_t U3RXIP:3;
      uint16_t :1;
      uint16_t U3TXIP:3;
    };
    struct {
      uint16_t :4;
      uint16_t U3ERIP0:1;
      uint16_t U3ERIP1:1;
      uint16_t U3ERIP2:1;
      uint16_t :1;
      uint16_t U3RXIP0:1;
      uint16_t U3RXIP1:1;
      uint16_t U3RXIP2:1;
      uint16_t :1;
      uint16_t U3TXIP0:1;
      uint16_t U3TXIP1:1;
      uint16_t U3TXIP2:1;
    };
  };
} IPC20BITS;
extern volatile IPC20BITS IPC20bits __attribute__((__sfr__));


extern volatile uint16_t IPC21 __attribute__((__sfr__));
__extension__ typedef struct tagIPC21BITS {
  union {
    struct {
      uint16_t SI2C3P:3;
      uint16_t :1;
      uint16_t MI2C3P:3;
      uint16_t :1;
      uint16_t USB1IP:3;
      uint16_t :1;
      uint16_t U4ERIP:3;
    };
    struct {
      uint16_t SI2C3P0:1;
      uint16_t SI2C3P1:1;
      uint16_t SI2C3P2:1;
      uint16_t :1;
      uint16_t MI2C3P0:1;
      uint16_t MI2C3P1:1;
      uint16_t MI2C3P2:1;
      uint16_t :1;
      uint16_t USB1IP0:1;
      uint16_t USB1IP1:1;
      uint16_t USB1IP2:1;
      uint16_t :1;
      uint16_t U4ERIP0:1;
      uint16_t U4ERIP1:1;
      uint16_t U4ERIP2:1;
    };
  };
} IPC21BITS;
extern volatile IPC21BITS IPC21bits __attribute__((__sfr__));


extern volatile uint16_t IPC22 __attribute__((__sfr__));
__extension__ typedef struct tagIPC22BITS {
  union {
    struct {
      uint16_t U4RXIP:3;
      uint16_t :1;
      uint16_t U4TXIP:3;
      uint16_t :1;
      uint16_t SPF3IP:3;
      uint16_t :1;
      uint16_t SPI3IP:3;
    };
    struct {
      uint16_t U4RXIP0:1;
      uint16_t U4RXIP1:1;
      uint16_t U4RXIP2:1;
      uint16_t :1;
      uint16_t U4TXIP0:1;
      uint16_t U4TXIP1:1;
      uint16_t U4TXIP2:1;
      uint16_t :1;
      uint16_t SPF3IP0:1;
      uint16_t SPF3IP1:1;
      uint16_t SPF3IP2:1;
      uint16_t :1;
      uint16_t SPI3IP0:1;
      uint16_t SPI3IP1:1;
      uint16_t SPI3IP2:1;
    };
  };
} IPC22BITS;
extern volatile IPC22BITS IPC22bits __attribute__((__sfr__));


extern volatile uint16_t IPC23 __attribute__((__sfr__));
__extension__ typedef struct tagIPC23BITS {
  union {
    struct {
      uint16_t OC9IP:3;
      uint16_t :1;
      uint16_t IC9IP:3;
    };
    struct {
      uint16_t OC9IP0:1;
      uint16_t OC9IP1:1;
      uint16_t OC9IP2:1;
      uint16_t :1;
      uint16_t IC9IP0:1;
      uint16_t IC9IP1:1;
      uint16_t IC9IP2:1;
    };
  };
} IPC23BITS;
extern volatile IPC23BITS IPC23bits __attribute__((__sfr__));


extern volatile uint16_t INTTREG __attribute__((__sfr__));
__extension__ typedef struct tagINTTREGBITS {
  union {
    struct {
      uint16_t VECNUM:6;
      uint16_t :2;
      uint16_t ILR:4;
      uint16_t :2;
      uint16_t TMODE:1;
      uint16_t IRQtoCPU:1;
    };
    struct {
      uint16_t VECNUM0:1;
      uint16_t VECNUM1:1;
      uint16_t VECNUM2:1;
      uint16_t VECNUM3:1;
      uint16_t VECNUM4:1;
      uint16_t VECNUM5:1;
      uint16_t :2;
      uint16_t ILR0:1;
      uint16_t ILR1:1;
      uint16_t ILR2:1;
      uint16_t ILR3:1;
    };
  };
} INTTREGBITS;
extern volatile INTTREGBITS INTTREGbits __attribute__((__sfr__));


extern volatile uint16_t TMR1 __attribute__((__sfr__));

extern volatile uint16_t PR1 __attribute__((__sfr__));

extern volatile uint16_t T1CON __attribute__((__sfr__));
__extension__ typedef struct tagT1CONBITS {
  union {
    struct {
      uint16_t :1;
      uint16_t TCS:1;
      uint16_t TSYNC:1;
      uint16_t :1;
      uint16_t TCKPS:2;
      uint16_t TGATE:1;
      uint16_t :6;
      uint16_t TSIDL:1;
      uint16_t :1;
      uint16_t TON:1;
    };
    struct {
      uint16_t :4;
      uint16_t TCKPS0:1;
      uint16_t TCKPS1:1;
    };
  };
} T1CONBITS;
extern volatile T1CONBITS T1CONbits __attribute__((__sfr__));


extern volatile uint16_t TMR2 __attribute__((__sfr__));

extern volatile uint16_t TMR3HLD __attribute__((__sfr__));

extern volatile uint16_t TMR3 __attribute__((__sfr__));

extern volatile uint16_t PR2 __attribute__((__sfr__));

extern volatile uint16_t PR3 __attribute__((__sfr__));

extern volatile uint16_t T2CON __attribute__((__sfr__));
__extension__ typedef struct tagT2CONBITS {
  union {
    struct {
      uint16_t :1;
      uint16_t TCS:1;
      uint16_t :1;
      uint16_t T32:1;
      uint16_t TCKPS:2;
      uint16_t TGATE:1;
      uint16_t :6;
      uint16_t TSIDL:1;
      uint16_t :1;
      uint16_t TON:1;
    };
    struct {
      uint16_t :4;
      uint16_t TCKPS0:1;
      uint16_t TCKPS1:1;
    };
  };
} T2CONBITS;
extern volatile T2CONBITS T2CONbits __attribute__((__sfr__));


extern volatile uint16_t T3CON __attribute__((__sfr__));
__extension__ typedef struct tagT3CONBITS {
  union {
    struct {
      uint16_t :1;
      uint16_t TCS:1;
      uint16_t :2;
      uint16_t TCKPS:2;
      uint16_t TGATE:1;
      uint16_t :6;
      uint16_t TSIDL:1;
      uint16_t :1;
      uint16_t TON:1;
    };
    struct {
      uint16_t :4;
      uint16_t TCKPS0:1;
      uint16_t TCKPS1:1;
    };
  };
} T3CONBITS;
extern volatile T3CONBITS T3CONbits __attribute__((__sfr__));


extern volatile uint16_t TMR4 __attribute__((__sfr__));

extern volatile uint16_t TMR5HLD __attribute__((__sfr__));

extern volatile uint16_t TMR5 __attribute__((__sfr__));

extern volatile uint16_t PR4 __attribute__((__sfr__));

extern volatile uint16_t PR5 __attribute__((__sfr__));

extern volatile uint16_t T4CON __attribute__((__sfr__));
__extension__ typedef struct tagT4CONBITS {
  union {
    struct {
      uint16_t :1;
      uint16_t TCS:1;
      uint16_t :1;
      uint16_t T32:1;
      uint16_t TCKPS:2;
      uint16_t TGATE:1;
      uint16_t :6;
      uint16_t TSIDL:1;
      uint16_t :1;
      uint16_t TON:1;
    };
    struct {
      uint16_t :4;
      uint16_t TCKPS0:1;
      uint16_t TCKPS1:1;
    };
  };
} T4CONBITS;
extern volatile T4CONBITS T4CONbits __attribute__((__sfr__));


extern volatile uint16_t T5CON __attribute__((__sfr__));
__extension__ typedef struct tagT5CONBITS {
  union {
    struct {
      uint16_t :1;
      uint16_t TCS:1;
      uint16_t :2;
      uint16_t TCKPS:2;
      uint16_t TGATE:1;
      uint16_t :6;
      uint16_t TSIDL:1;
      uint16_t :1;
      uint16_t TON:1;
    };
    struct {
      uint16_t :4;
      uint16_t TCKPS0:1;
      uint16_t TCKPS1:1;
    };
  };
} T5CONBITS;
extern volatile T5CONBITS T5CONbits __attribute__((__sfr__));


extern volatile uint16_t IC1CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC1CON1BITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t :3;
      uint16_t ICTSEL:3;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
      uint16_t :3;
      uint16_t ICTSEL0:1;
      uint16_t ICTSEL1:1;
      uint16_t ICTSEL2:1;
    };
  };
} IC1CON1BITS;
extern volatile IC1CON1BITS IC1CON1bits __attribute__((__sfr__));


extern volatile uint16_t IC1CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC1CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t :1;
      uint16_t TRIGSTAT:1;
      uint16_t ICTRIG:1;
      uint16_t IC32:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
    };
  };
} IC1CON2BITS;
extern volatile IC1CON2BITS IC1CON2bits __attribute__((__sfr__));



typedef struct tagIC {
        uint16_t icxbuf;
        uint16_t icxcon;
} IC, *PIC;



extern volatile IC ACC1 __attribute__((__sfr__));

extern volatile IC ACC2 __attribute__((__sfr__));

extern volatile IC ACC3 __attribute__((__sfr__));

extern volatile IC ACC4 __attribute__((__sfr__));

extern volatile IC ACC5 __attribute__((__sfr__));


extern volatile uint16_t IC1BUF __attribute__((__sfr__));

extern volatile uint16_t IC1TMR __attribute__((__sfr__));

extern volatile uint16_t IC2CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC2CON1BITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t :3;
      uint16_t ICTSEL:3;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
      uint16_t :3;
      uint16_t ICTSEL0:1;
      uint16_t ICTSEL1:1;
      uint16_t ICTSEL2:1;
    };
  };
} IC2CON1BITS;
extern volatile IC2CON1BITS IC2CON1bits __attribute__((__sfr__));


extern volatile uint16_t IC2CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC2CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t :1;
      uint16_t TRIGSTAT:1;
      uint16_t ICTRIG:1;
      uint16_t IC32:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
    };
  };
} IC2CON2BITS;
extern volatile IC2CON2BITS IC2CON2bits __attribute__((__sfr__));


extern volatile uint16_t IC2BUF __attribute__((__sfr__));

extern volatile uint16_t IC2TMR __attribute__((__sfr__));

extern volatile uint16_t IC3CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC3CON1BITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t :3;
      uint16_t ICTSEL:3;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
      uint16_t :3;
      uint16_t ICTSEL0:1;
      uint16_t ICTSEL1:1;
      uint16_t ICTSEL2:1;
    };
  };
} IC3CON1BITS;
extern volatile IC3CON1BITS IC3CON1bits __attribute__((__sfr__));


extern volatile uint16_t IC3CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC3CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t :1;
      uint16_t TRIGSTAT:1;
      uint16_t ICTRIG:1;
      uint16_t IC32:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
    };
  };
} IC3CON2BITS;
extern volatile IC3CON2BITS IC3CON2bits __attribute__((__sfr__));


extern volatile uint16_t IC3BUF __attribute__((__sfr__));

extern volatile uint16_t IC3TMR __attribute__((__sfr__));

extern volatile uint16_t IC4CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC4CON1BITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t :3;
      uint16_t ICTSEL:3;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
      uint16_t :3;
      uint16_t ICTSEL0:1;
      uint16_t ICTSEL1:1;
      uint16_t ICTSEL2:1;
    };
  };
} IC4CON1BITS;
extern volatile IC4CON1BITS IC4CON1bits __attribute__((__sfr__));


extern volatile uint16_t IC4CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC4CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t :1;
      uint16_t TRIGSTAT:1;
      uint16_t ICTRIG:1;
      uint16_t IC32:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
    };
  };
} IC4CON2BITS;
extern volatile IC4CON2BITS IC4CON2bits __attribute__((__sfr__));


extern volatile uint16_t IC4BUF __attribute__((__sfr__));

extern volatile uint16_t IC4TMR __attribute__((__sfr__));

extern volatile uint16_t IC5CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC5CON1BITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t :3;
      uint16_t ICTSEL:3;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
      uint16_t :3;
      uint16_t ICTSEL0:1;
      uint16_t ICTSEL1:1;
      uint16_t ICTSEL2:1;
    };
  };
} IC5CON1BITS;
extern volatile IC5CON1BITS IC5CON1bits __attribute__((__sfr__));


extern volatile uint16_t IC5CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC5CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t :1;
      uint16_t TRIGSTAT:1;
      uint16_t ICTRIG:1;
      uint16_t IC32:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
    };
  };
} IC5CON2BITS;
extern volatile IC5CON2BITS IC5CON2bits __attribute__((__sfr__));


extern volatile uint16_t IC5BUF __attribute__((__sfr__));

extern volatile uint16_t IC5TMR __attribute__((__sfr__));

extern volatile uint16_t IC6CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC6CON1BITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t :3;
      uint16_t ICTSEL:3;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
      uint16_t :3;
      uint16_t ICTSEL0:1;
      uint16_t ICTSEL1:1;
      uint16_t ICTSEL2:1;
    };
  };
} IC6CON1BITS;
extern volatile IC6CON1BITS IC6CON1bits __attribute__((__sfr__));


extern volatile uint16_t IC6CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC6CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t :1;
      uint16_t TRIGSTAT:1;
      uint16_t ICTRIG:1;
      uint16_t IC32:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
    };
  };
} IC6CON2BITS;
extern volatile IC6CON2BITS IC6CON2bits __attribute__((__sfr__));


extern volatile uint16_t IC6BUF __attribute__((__sfr__));

extern volatile uint16_t IC6TMR __attribute__((__sfr__));

extern volatile uint16_t IC7CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC7CON1BITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t :3;
      uint16_t ICTSEL:3;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
      uint16_t :3;
      uint16_t ICTSEL0:1;
      uint16_t ICTSEL1:1;
      uint16_t ICTSEL2:1;
    };
  };
} IC7CON1BITS;
extern volatile IC7CON1BITS IC7CON1bits __attribute__((__sfr__));


extern volatile uint16_t IC7CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC7CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t :1;
      uint16_t TRIGSTAT:1;
      uint16_t ICTRIG:1;
      uint16_t IC32:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
    };
  };
} IC7CON2BITS;
extern volatile IC7CON2BITS IC7CON2bits __attribute__((__sfr__));


extern volatile uint16_t IC7BUF __attribute__((__sfr__));

extern volatile uint16_t IC7TMR __attribute__((__sfr__));

extern volatile uint16_t IC8CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC8CON1BITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t :3;
      uint16_t ICTSEL:3;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
      uint16_t :3;
      uint16_t ICTSEL0:1;
      uint16_t ICTSEL1:1;
      uint16_t ICTSEL2:1;
    };
  };
} IC8CON1BITS;
extern volatile IC8CON1BITS IC8CON1bits __attribute__((__sfr__));


extern volatile uint16_t IC8CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC8CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t :1;
      uint16_t TRIGSTAT:1;
      uint16_t ICTRIG:1;
      uint16_t IC32:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
    };
  };
} IC8CON2BITS;
extern volatile IC8CON2BITS IC8CON2bits __attribute__((__sfr__));


extern volatile uint16_t IC8BUF __attribute__((__sfr__));

extern volatile uint16_t IC8TMR __attribute__((__sfr__));

extern volatile uint16_t IC9CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC9CON1BITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t :3;
      uint16_t ICTSEL:3;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
      uint16_t :3;
      uint16_t ICTSEL0:1;
      uint16_t ICTSEL1:1;
      uint16_t ICTSEL2:1;
    };
  };
} IC9CON1BITS;
extern volatile IC9CON1BITS IC9CON1bits __attribute__((__sfr__));


extern volatile uint16_t IC9CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC9CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t :1;
      uint16_t TRIGSTAT:1;
      uint16_t ICTRIG:1;
      uint16_t IC32:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
    };
  };
} IC9CON2BITS;
extern volatile IC9CON2BITS IC9CON2bits __attribute__((__sfr__));


extern volatile uint16_t IC9BUF __attribute__((__sfr__));

extern volatile uint16_t IC9TMR __attribute__((__sfr__));

extern volatile uint16_t OC1CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC1CON1BITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t TRIGMODE:1;
      uint16_t OCFLT0:1;
      uint16_t :2;
      uint16_t ENFLT0:1;
      uint16_t :2;
      uint16_t OCTSEL:3;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
      uint16_t :1;
      uint16_t OCFLT:1;
      uint16_t :2;
      uint16_t ENFLT:1;
      uint16_t :2;
      uint16_t OCTSEL0:1;
      uint16_t OCTSEL1:1;
      uint16_t OCTSEL2:1;
    };
  };
} OC1CON1BITS;
extern volatile OC1CON1BITS OC1CON1bits __attribute__((__sfr__));


extern volatile uint16_t OC1CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC1CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t OCTRIS:1;
      uint16_t TRIGSTAT:1;
      uint16_t OCTRIG:1;
      uint16_t OC32:1;
      uint16_t :3;
      uint16_t OCINV:1;
      uint16_t FLTTRIEN:1;
      uint16_t FLTOUT:1;
      uint16_t FLTMD:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
      uint16_t :10;
      uint16_t FLTMODE:1;
    };
  };
} OC1CON2BITS;
extern volatile OC1CON2BITS OC1CON2bits __attribute__((__sfr__));



typedef struct tagOC {
        uint16_t ocxrs;
        uint16_t ocxr;
        uint16_t ocxcon;
} OC, *POC;



extern volatile OC OC1 __attribute__((__sfr__));

extern volatile OC OC2 __attribute__((__sfr__));

extern volatile OC OC3 __attribute__((__sfr__));

extern volatile OC OC4 __attribute__((__sfr__));

extern volatile OC OC5 __attribute__((__sfr__));


extern volatile uint16_t OC1RS __attribute__((__sfr__));

extern volatile uint16_t OC1R __attribute__((__sfr__));

extern volatile uint16_t OC1TMR __attribute__((__sfr__));

extern volatile uint16_t OC2CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC2CON1BITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t TRIGMODE:1;
      uint16_t OCFLT0:1;
      uint16_t :2;
      uint16_t ENFLT0:1;
      uint16_t :2;
      uint16_t OCTSEL:3;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
      uint16_t :1;
      uint16_t OCFLT:1;
      uint16_t :2;
      uint16_t ENFLT:1;
      uint16_t :2;
      uint16_t OCTSEL0:1;
      uint16_t OCTSEL1:1;
      uint16_t OCTSEL2:1;
    };
  };
} OC2CON1BITS;
extern volatile OC2CON1BITS OC2CON1bits __attribute__((__sfr__));


extern volatile uint16_t OC2CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC2CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t OCTRIS:1;
      uint16_t TRIGSTAT:1;
      uint16_t OCTRIG:1;
      uint16_t OC32:1;
      uint16_t :3;
      uint16_t OCINV:1;
      uint16_t FLTTRIEN:1;
      uint16_t FLTOUT:1;
      uint16_t FLTMD:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
      uint16_t :10;
      uint16_t FLTMODE:1;
    };
  };
} OC2CON2BITS;
extern volatile OC2CON2BITS OC2CON2bits __attribute__((__sfr__));


extern volatile uint16_t OC2RS __attribute__((__sfr__));

extern volatile uint16_t OC2R __attribute__((__sfr__));

extern volatile uint16_t OC2TMR __attribute__((__sfr__));

extern volatile uint16_t OC3CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC3CON1BITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t TRIGMODE:1;
      uint16_t OCFLT0:1;
      uint16_t :2;
      uint16_t ENFLT0:1;
      uint16_t :2;
      uint16_t OCTSEL:3;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
      uint16_t :1;
      uint16_t OCFLT:1;
      uint16_t :2;
      uint16_t ENFLT:1;
      uint16_t :2;
      uint16_t OCTSEL0:1;
      uint16_t OCTSEL1:1;
      uint16_t OCTSEL2:1;
    };
  };
} OC3CON1BITS;
extern volatile OC3CON1BITS OC3CON1bits __attribute__((__sfr__));


extern volatile uint16_t OC3CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC3CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t OCTRIS:1;
      uint16_t TRIGSTAT:1;
      uint16_t OCTRIG:1;
      uint16_t OC32:1;
      uint16_t :3;
      uint16_t OCINV:1;
      uint16_t FLTTRIEN:1;
      uint16_t FLTOUT:1;
      uint16_t FLTMD:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
      uint16_t :10;
      uint16_t FLTMODE:1;
    };
  };
} OC3CON2BITS;
extern volatile OC3CON2BITS OC3CON2bits __attribute__((__sfr__));


extern volatile uint16_t OC3RS __attribute__((__sfr__));

extern volatile uint16_t OC3R __attribute__((__sfr__));

extern volatile uint16_t OC3TMR __attribute__((__sfr__));

extern volatile uint16_t OC4CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC4CON1BITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t TRIGMODE:1;
      uint16_t OCFLT0:1;
      uint16_t :2;
      uint16_t ENFLT0:1;
      uint16_t :2;
      uint16_t OCTSEL:3;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
      uint16_t :1;
      uint16_t OCFLT:1;
      uint16_t :2;
      uint16_t ENFLT:1;
      uint16_t :2;
      uint16_t OCTSEL0:1;
      uint16_t OCTSEL1:1;
      uint16_t OCTSEL2:1;
    };
  };
} OC4CON1BITS;
extern volatile OC4CON1BITS OC4CON1bits __attribute__((__sfr__));


extern volatile uint16_t OC4CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC4CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t OCTRIS:1;
      uint16_t TRIGSTAT:1;
      uint16_t OCTRIG:1;
      uint16_t OC32:1;
      uint16_t :3;
      uint16_t OCINV:1;
      uint16_t FLTTRIEN:1;
      uint16_t FLTOUT:1;
      uint16_t FLTMD:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
      uint16_t :10;
      uint16_t FLTMODE:1;
    };
  };
} OC4CON2BITS;
extern volatile OC4CON2BITS OC4CON2bits __attribute__((__sfr__));


extern volatile uint16_t OC4RS __attribute__((__sfr__));

extern volatile uint16_t OC4R __attribute__((__sfr__));

extern volatile uint16_t OC4TMR __attribute__((__sfr__));

extern volatile uint16_t OC5CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC5CON1BITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t TRIGMODE:1;
      uint16_t OCFLT0:1;
      uint16_t :2;
      uint16_t ENFLT0:1;
      uint16_t :2;
      uint16_t OCTSEL:3;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
      uint16_t :1;
      uint16_t OCFLT:1;
      uint16_t :2;
      uint16_t ENFLT:1;
      uint16_t :2;
      uint16_t OCTSEL0:1;
      uint16_t OCTSEL1:1;
      uint16_t OCTSEL2:1;
    };
  };
} OC5CON1BITS;
extern volatile OC5CON1BITS OC5CON1bits __attribute__((__sfr__));


extern volatile uint16_t OC5CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC5CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t OCTRIS:1;
      uint16_t TRIGSTAT:1;
      uint16_t OCTRIG:1;
      uint16_t OC32:1;
      uint16_t :3;
      uint16_t OCINV:1;
      uint16_t FLTTRIEN:1;
      uint16_t FLTOUT:1;
      uint16_t FLTMD:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
      uint16_t :10;
      uint16_t FLTMODE:1;
    };
  };
} OC5CON2BITS;
extern volatile OC5CON2BITS OC5CON2bits __attribute__((__sfr__));


extern volatile uint16_t OC5RS __attribute__((__sfr__));

extern volatile uint16_t OC5R __attribute__((__sfr__));

extern volatile uint16_t OC5TMR __attribute__((__sfr__));

extern volatile uint16_t OC6CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC6CON1BITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t TRIGMODE:1;
      uint16_t OCFLT0:1;
      uint16_t :2;
      uint16_t ENFLT0:1;
      uint16_t :2;
      uint16_t OCTSEL:3;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
      uint16_t :1;
      uint16_t OCFLT:1;
      uint16_t :2;
      uint16_t ENFLT:1;
      uint16_t :2;
      uint16_t OCTSEL0:1;
      uint16_t OCTSEL1:1;
      uint16_t OCTSEL2:1;
    };
  };
} OC6CON1BITS;
extern volatile OC6CON1BITS OC6CON1bits __attribute__((__sfr__));


extern volatile uint16_t OC6CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC6CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t OCTRIS:1;
      uint16_t TRIGSTAT:1;
      uint16_t OCTRIG:1;
      uint16_t OC32:1;
      uint16_t :3;
      uint16_t OCINV:1;
      uint16_t FLTTRIEN:1;
      uint16_t FLTOUT:1;
      uint16_t FLTMD:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
      uint16_t :10;
      uint16_t FLTMODE:1;
    };
  };
} OC6CON2BITS;
extern volatile OC6CON2BITS OC6CON2bits __attribute__((__sfr__));


extern volatile uint16_t OC6RS __attribute__((__sfr__));

extern volatile uint16_t OC6R __attribute__((__sfr__));

extern volatile uint16_t OC6TMR __attribute__((__sfr__));

extern volatile uint16_t OC7CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC7CON1BITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t TRIGMODE:1;
      uint16_t OCFLT0:1;
      uint16_t :2;
      uint16_t ENFLT0:1;
      uint16_t :2;
      uint16_t OCTSEL:3;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
      uint16_t :1;
      uint16_t OCFLT:1;
      uint16_t :2;
      uint16_t ENFLT:1;
      uint16_t :2;
      uint16_t OCTSEL0:1;
      uint16_t OCTSEL1:1;
      uint16_t OCTSEL2:1;
    };
  };
} OC7CON1BITS;
extern volatile OC7CON1BITS OC7CON1bits __attribute__((__sfr__));


extern volatile uint16_t OC7CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC7CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t OCTRIS:1;
      uint16_t TRIGSTAT:1;
      uint16_t OCTRIG:1;
      uint16_t OC32:1;
      uint16_t :3;
      uint16_t OCINV:1;
      uint16_t FLTTRIEN:1;
      uint16_t FLTOUT:1;
      uint16_t FLTMD:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
      uint16_t :10;
      uint16_t FLTMODE:1;
    };
  };
} OC7CON2BITS;
extern volatile OC7CON2BITS OC7CON2bits __attribute__((__sfr__));


extern volatile uint16_t OC7RS __attribute__((__sfr__));

extern volatile uint16_t OC7R __attribute__((__sfr__));

extern volatile uint16_t OC7TMR __attribute__((__sfr__));

extern volatile uint16_t OC8CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC8CON1BITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t TRIGMODE:1;
      uint16_t OCFLT0:1;
      uint16_t :2;
      uint16_t ENFLT0:1;
      uint16_t :2;
      uint16_t OCTSEL:3;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
      uint16_t :1;
      uint16_t OCFLT:1;
      uint16_t :2;
      uint16_t ENFLT:1;
      uint16_t :2;
      uint16_t OCTSEL0:1;
      uint16_t OCTSEL1:1;
      uint16_t OCTSEL2:1;
    };
  };
} OC8CON1BITS;
extern volatile OC8CON1BITS OC8CON1bits __attribute__((__sfr__));


extern volatile uint16_t OC8CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC8CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t OCTRIS:1;
      uint16_t TRIGSTAT:1;
      uint16_t OCTRIG:1;
      uint16_t OC32:1;
      uint16_t :3;
      uint16_t OCINV:1;
      uint16_t FLTTRIEN:1;
      uint16_t FLTOUT:1;
      uint16_t FLTMD:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
      uint16_t :10;
      uint16_t FLTMODE:1;
    };
  };
} OC8CON2BITS;
extern volatile OC8CON2BITS OC8CON2bits __attribute__((__sfr__));


extern volatile uint16_t OC8RS __attribute__((__sfr__));

extern volatile uint16_t OC8R __attribute__((__sfr__));

extern volatile uint16_t OC8TMR __attribute__((__sfr__));

extern volatile uint16_t OC9CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC9CON1BITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t TRIGMODE:1;
      uint16_t OCFLT0:1;
      uint16_t :2;
      uint16_t ENFLT0:1;
      uint16_t :2;
      uint16_t OCTSEL:3;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
      uint16_t :1;
      uint16_t OCFLT:1;
      uint16_t :2;
      uint16_t ENFLT:1;
      uint16_t :2;
      uint16_t OCTSEL0:1;
      uint16_t OCTSEL1:1;
      uint16_t OCTSEL2:1;
    };
  };
} OC9CON1BITS;
extern volatile OC9CON1BITS OC9CON1bits __attribute__((__sfr__));


extern volatile uint16_t OC9CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC9CON2BITS {
  union {
    struct {
      uint16_t SYNCSEL:5;
      uint16_t OCTRIS:1;
      uint16_t TRIGSTAT:1;
      uint16_t OCTRIG:1;
      uint16_t OC32:1;
      uint16_t :3;
      uint16_t OCINV:1;
      uint16_t FLTTRIEN:1;
      uint16_t FLTOUT:1;
      uint16_t FLTMD:1;
    };
    struct {
      uint16_t SYNCSEL0:1;
      uint16_t SYNCSEL1:1;
      uint16_t SYNCSEL2:1;
      uint16_t SYNCSEL3:1;
      uint16_t SYNCSEL4:1;
      uint16_t :10;
      uint16_t FLTMODE:1;
    };
  };
} OC9CON2BITS;
extern volatile OC9CON2BITS OC9CON2bits __attribute__((__sfr__));


extern volatile uint16_t OC9RS __attribute__((__sfr__));

extern volatile uint16_t OC9R __attribute__((__sfr__));

extern volatile uint16_t OC9TMR __attribute__((__sfr__));

extern volatile uint16_t I2C1RCV __attribute__((__sfr__));

extern volatile uint16_t I2C1TRN __attribute__((__sfr__));

extern volatile uint16_t I2C1BRG __attribute__((__sfr__));

extern volatile uint16_t I2C1CON __attribute__((__sfr__));
typedef struct tagI2C1CONBITS {
  uint16_t SEN:1;
  uint16_t RSEN:1;
  uint16_t PEN:1;
  uint16_t RCEN:1;
  uint16_t ACKEN:1;
  uint16_t ACKDT:1;
  uint16_t STREN:1;
  uint16_t GCEN:1;
  uint16_t SMEN:1;
  uint16_t DISSLW:1;
  uint16_t A10M:1;
  uint16_t IPMIEN:1;
  uint16_t SCLREL:1;
  uint16_t I2CSIDL:1;
  uint16_t :1;
  uint16_t I2CEN:1;
} I2C1CONBITS;
extern volatile I2C1CONBITS I2C1CONbits __attribute__((__sfr__));


extern volatile uint16_t I2C1STAT __attribute__((__sfr__));
__extension__ typedef struct tagI2C1STATBITS {
  union {
    struct {
      uint16_t TBF:1;
      uint16_t RBF:1;
      uint16_t R_NOT_W:1;
      uint16_t S:1;
      uint16_t P:1;
      uint16_t D_NOT_A:1;
      uint16_t I2COV:1;
      uint16_t IWCOL:1;
      uint16_t ADD10:1;
      uint16_t GCSTAT:1;
      uint16_t BCL:1;
      uint16_t :3;
      uint16_t TRSTAT:1;
      uint16_t ACKSTAT:1;
    };
    struct {
      uint16_t :2;
      uint16_t R_W:1;
      uint16_t :2;
      uint16_t D_A:1;
    };
  };
} I2C1STATBITS;
extern volatile I2C1STATBITS I2C1STATbits __attribute__((__sfr__));


extern volatile uint16_t I2C1ADD __attribute__((__sfr__));

extern volatile uint16_t I2C1MSK __attribute__((__sfr__));

extern volatile uint16_t I2C2RCV __attribute__((__sfr__));

extern volatile uint16_t I2C2TRN __attribute__((__sfr__));

extern volatile uint16_t I2C2BRG __attribute__((__sfr__));

extern volatile uint16_t I2C2CON __attribute__((__sfr__));
typedef struct tagI2C2CONBITS {
  uint16_t SEN:1;
  uint16_t RSEN:1;
  uint16_t PEN:1;
  uint16_t RCEN:1;
  uint16_t ACKEN:1;
  uint16_t ACKDT:1;
  uint16_t STREN:1;
  uint16_t GCEN:1;
  uint16_t SMEN:1;
  uint16_t DISSLW:1;
  uint16_t A10M:1;
  uint16_t IPMIEN:1;
  uint16_t SCLREL:1;
  uint16_t I2CSIDL:1;
  uint16_t :1;
  uint16_t I2CEN:1;
} I2C2CONBITS;
extern volatile I2C2CONBITS I2C2CONbits __attribute__((__sfr__));


extern volatile uint16_t I2C2STAT __attribute__((__sfr__));
__extension__ typedef struct tagI2C2STATBITS {
  union {
    struct {
      uint16_t TBF:1;
      uint16_t RBF:1;
      uint16_t R_NOT_W:1;
      uint16_t S:1;
      uint16_t P:1;
      uint16_t D_NOT_A:1;
      uint16_t I2COV:1;
      uint16_t IWCOL:1;
      uint16_t ADD10:1;
      uint16_t GCSTAT:1;
      uint16_t BCL:1;
      uint16_t :3;
      uint16_t TRSTAT:1;
      uint16_t ACKSTAT:1;
    };
    struct {
      uint16_t :2;
      uint16_t R_W:1;
      uint16_t :2;
      uint16_t D_A:1;
    };
  };
} I2C2STATBITS;
extern volatile I2C2STATBITS I2C2STATbits __attribute__((__sfr__));


extern volatile uint16_t I2C2ADD __attribute__((__sfr__));

extern volatile uint16_t I2C2MSK __attribute__((__sfr__));


typedef struct tagUART {
        uint16_t uxmode;
        uint16_t uxsta;
        uint16_t uxtxreg;
        uint16_t uxrxreg;
        uint16_t uxbrg;
} UART, *PUART;
# 2707 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h" 3 4
extern volatile UART UART1 __attribute__((__sfr__));

extern volatile UART UART2 __attribute__((__sfr__));


extern volatile uint16_t U1MODE __attribute__((__sfr__));
__extension__ typedef struct tagU1MODEBITS {
  union {
    struct {
      uint16_t STSEL:1;
      uint16_t PDSEL:2;
      uint16_t BRGH:1;
      uint16_t RXINV:1;
      uint16_t ABAUD:1;
      uint16_t LPBACK:1;
      uint16_t WAKE:1;
      uint16_t UEN:2;
      uint16_t :1;
      uint16_t RTSMD:1;
      uint16_t IREN:1;
      uint16_t USIDL:1;
      uint16_t :1;
      uint16_t UARTEN:1;
    };
    struct {
      uint16_t :1;
      uint16_t PDSEL0:1;
      uint16_t PDSEL1:1;
      uint16_t :5;
      uint16_t UEN0:1;
      uint16_t UEN1:1;
    };
  };
} U1MODEBITS;
extern volatile U1MODEBITS U1MODEbits __attribute__((__sfr__));


extern volatile uint16_t U1STA __attribute__((__sfr__));
__extension__ typedef struct tagU1STABITS {
  union {
    struct {
      uint16_t URXDA:1;
      uint16_t OERR:1;
      uint16_t FERR:1;
      uint16_t PERR:1;
      uint16_t RIDLE:1;
      uint16_t ADDEN:1;
      uint16_t URXISEL:2;
      uint16_t TRMT:1;
      uint16_t UTXBF:1;
      uint16_t UTXEN:1;
      uint16_t UTXBRK:1;
      uint16_t :1;
      uint16_t UTXISEL0:1;
      uint16_t UTXINV:1;
      uint16_t UTXISEL1:1;
    };
    struct {
      uint16_t :6;
      uint16_t URXISEL0:1;
      uint16_t URXISEL1:1;
    };
  };
} U1STABITS;
extern volatile U1STABITS U1STAbits __attribute__((__sfr__));


extern volatile uint16_t U1TXREG __attribute__((__sfr__));

extern volatile uint16_t U1RXREG __attribute__((__sfr__));

extern volatile uint16_t U1BRG __attribute__((__sfr__));

extern volatile uint16_t U2MODE __attribute__((__sfr__));
__extension__ typedef struct tagU2MODEBITS {
  union {
    struct {
      uint16_t STSEL:1;
      uint16_t PDSEL:2;
      uint16_t BRGH:1;
      uint16_t RXINV:1;
      uint16_t ABAUD:1;
      uint16_t LPBACK:1;
      uint16_t WAKE:1;
      uint16_t UEN:2;
      uint16_t :1;
      uint16_t RTSMD:1;
      uint16_t IREN:1;
      uint16_t USIDL:1;
      uint16_t :1;
      uint16_t UARTEN:1;
    };
    struct {
      uint16_t :1;
      uint16_t PDSEL0:1;
      uint16_t PDSEL1:1;
      uint16_t :5;
      uint16_t UEN0:1;
      uint16_t UEN1:1;
    };
  };
} U2MODEBITS;
extern volatile U2MODEBITS U2MODEbits __attribute__((__sfr__));


extern volatile uint16_t U2STA __attribute__((__sfr__));
__extension__ typedef struct tagU2STABITS {
  union {
    struct {
      uint16_t URXDA:1;
      uint16_t OERR:1;
      uint16_t FERR:1;
      uint16_t PERR:1;
      uint16_t RIDLE:1;
      uint16_t ADDEN:1;
      uint16_t URXISEL:2;
      uint16_t TRMT:1;
      uint16_t UTXBF:1;
      uint16_t UTXEN:1;
      uint16_t UTXBRK:1;
      uint16_t :1;
      uint16_t UTXISEL0:1;
      uint16_t UTXINV:1;
      uint16_t UTXISEL1:1;
    };
    struct {
      uint16_t :6;
      uint16_t URXISEL0:1;
      uint16_t URXISEL1:1;
    };
  };
} U2STABITS;
extern volatile U2STABITS U2STAbits __attribute__((__sfr__));


extern volatile uint16_t U2TXREG __attribute__((__sfr__));

extern volatile uint16_t U2RXREG __attribute__((__sfr__));

extern volatile uint16_t U2BRG __attribute__((__sfr__));


typedef struct tagSPI {
        uint16_t spixstat;
        uint16_t spixcon1;
        uint16_t spixcon2;
        uint16_t unused;
        uint16_t spixbuf;
} SPI, *PSPI;






extern volatile SPI SPI1 __attribute__((__sfr__));

extern volatile SPI SPI2 __attribute__((__sfr__));


extern volatile uint16_t SPI1STAT __attribute__((__sfr__));
__extension__ typedef struct tagSPI1STATBITS {
  union {
    struct {
      uint16_t SPIRBF:1;
      uint16_t SPITBF:1;
      uint16_t SISEL:3;
      uint16_t SRXMPT:1;
      uint16_t SPIROV:1;
      uint16_t SRMPT:1;
      uint16_t SPIBEC:3;
      uint16_t :2;
      uint16_t SPISIDL:1;
      uint16_t :1;
      uint16_t SPIEN:1;
    };
    struct {
      uint16_t :2;
      uint16_t SISEL0:1;
      uint16_t SISEL1:1;
      uint16_t SISEL2:1;
      uint16_t :3;
      uint16_t SPIBEC0:1;
      uint16_t SPIBEC1:1;
      uint16_t SPIBEC2:1;
    };
  };
} SPI1STATBITS;
extern volatile SPI1STATBITS SPI1STATbits __attribute__((__sfr__));


extern volatile uint16_t SPI1CON1 __attribute__((__sfr__));
__extension__ typedef struct tagSPI1CON1BITS {
  union {
    struct {
      uint16_t PPRE:2;
      uint16_t SPRE:3;
      uint16_t MSTEN:1;
      uint16_t CKP:1;
      uint16_t SSEN:1;
      uint16_t CKE:1;
      uint16_t SMP:1;
      uint16_t MODE16:1;
      uint16_t DISSDO:1;
      uint16_t DISSCK:1;
    };
    struct {
      uint16_t PPRE0:1;
      uint16_t PPRE1:1;
      uint16_t SPRE0:1;
      uint16_t SPRE1:1;
      uint16_t SPRE2:1;
    };
  };
} SPI1CON1BITS;
extern volatile SPI1CON1BITS SPI1CON1bits __attribute__((__sfr__));


extern volatile uint16_t SPI1CON2 __attribute__((__sfr__));
typedef struct tagSPI1CON2BITS {
  uint16_t SPIBEN:1;
  uint16_t SPIFE:1;
  uint16_t :11;
  uint16_t SPIFPOL:1;
  uint16_t SPIFSD:1;
  uint16_t FRMEN:1;
} SPI1CON2BITS;
extern volatile SPI1CON2BITS SPI1CON2bits __attribute__((__sfr__));


extern volatile uint16_t SPI1BUF __attribute__((__sfr__));

extern volatile uint16_t U3MODE __attribute__((__sfr__));
__extension__ typedef struct tagU3MODEBITS {
  union {
    struct {
      uint16_t STSEL:1;
      uint16_t PDSEL:2;
      uint16_t BRGH:1;
      uint16_t RXINV:1;
      uint16_t ABAUD:1;
      uint16_t LPBACK:1;
      uint16_t WAKE:1;
      uint16_t UEN:2;
      uint16_t :1;
      uint16_t RTSMD:1;
      uint16_t IREN:1;
      uint16_t USIDL:1;
      uint16_t :1;
      uint16_t UARTEN:1;
    };
    struct {
      uint16_t :1;
      uint16_t PDSEL0:1;
      uint16_t PDSEL1:1;
      uint16_t :5;
      uint16_t UEN0:1;
      uint16_t UEN1:1;
    };
  };
} U3MODEBITS;
extern volatile U3MODEBITS U3MODEbits __attribute__((__sfr__));


extern volatile uint16_t U3STA __attribute__((__sfr__));
__extension__ typedef struct tagU3STABITS {
  union {
    struct {
      uint16_t URXDA:1;
      uint16_t OERR:1;
      uint16_t FERR:1;
      uint16_t PERR:1;
      uint16_t RIDLE:1;
      uint16_t ADDEN:1;
      uint16_t URXISEL:2;
      uint16_t TRMT:1;
      uint16_t UTXBF:1;
      uint16_t UTXEN:1;
      uint16_t UTXBRK:1;
      uint16_t :1;
      uint16_t UTXISEL0:1;
      uint16_t UTXINV:1;
      uint16_t UTXISEL1:1;
    };
    struct {
      uint16_t :6;
      uint16_t URXISEL0:1;
      uint16_t URXISEL1:1;
    };
  };
} U3STABITS;
extern volatile U3STABITS U3STAbits __attribute__((__sfr__));


extern volatile uint16_t U3TXREG __attribute__((__sfr__));

extern volatile uint16_t U3RXREG __attribute__((__sfr__));

extern volatile uint16_t U3BRG __attribute__((__sfr__));

extern volatile uint16_t SPI2STAT __attribute__((__sfr__));
__extension__ typedef struct tagSPI2STATBITS {
  union {
    struct {
      uint16_t SPIRBF:1;
      uint16_t SPITBF:1;
      uint16_t SISEL:3;
      uint16_t SRXMPT:1;
      uint16_t SPIROV:1;
      uint16_t SRMPT:1;
      uint16_t SPIBEC:3;
      uint16_t :2;
      uint16_t SPISIDL:1;
      uint16_t :1;
      uint16_t SPIEN:1;
    };
    struct {
      uint16_t :2;
      uint16_t SISEL0:1;
      uint16_t SISEL1:1;
      uint16_t SISEL2:1;
      uint16_t :3;
      uint16_t SPIBEC0:1;
      uint16_t SPIBEC1:1;
      uint16_t SPIBEC2:1;
    };
  };
} SPI2STATBITS;
extern volatile SPI2STATBITS SPI2STATbits __attribute__((__sfr__));


extern volatile uint16_t SPI2CON1 __attribute__((__sfr__));
__extension__ typedef struct tagSPI2CON1BITS {
  union {
    struct {
      uint16_t PPRE:2;
      uint16_t SPRE:3;
      uint16_t MSTEN:1;
      uint16_t CKP:1;
      uint16_t SSEN:1;
      uint16_t CKE:1;
      uint16_t SMP:1;
      uint16_t MODE16:1;
      uint16_t DISSDO:1;
      uint16_t DISSCK:1;
    };
    struct {
      uint16_t PPRE0:1;
      uint16_t PPRE1:1;
      uint16_t SPRE0:1;
      uint16_t SPRE1:1;
      uint16_t SPRE2:1;
    };
  };
} SPI2CON1BITS;
extern volatile SPI2CON1BITS SPI2CON1bits __attribute__((__sfr__));


extern volatile uint16_t SPI2CON2 __attribute__((__sfr__));
typedef struct tagSPI2CON2BITS {
  uint16_t SPIBEN:1;
  uint16_t SPIFE:1;
  uint16_t :11;
  uint16_t SPIFPOL:1;
  uint16_t SPIFSD:1;
  uint16_t FRMEN:1;
} SPI2CON2BITS;
extern volatile SPI2CON2BITS SPI2CON2bits __attribute__((__sfr__));


extern volatile uint16_t SPI2BUF __attribute__((__sfr__));

extern volatile uint16_t I2C3RCV __attribute__((__sfr__));

extern volatile uint16_t I2C3TRN __attribute__((__sfr__));

extern volatile uint16_t I2C3BRG __attribute__((__sfr__));

extern volatile uint16_t I2C3CON __attribute__((__sfr__));
typedef struct tagI2C3CONBITS {
  uint16_t SEN:1;
  uint16_t RSEN:1;
  uint16_t PEN:1;
  uint16_t RCEN:1;
  uint16_t ACKEN:1;
  uint16_t ACKDT:1;
  uint16_t STREN:1;
  uint16_t GCEN:1;
  uint16_t SMEN:1;
  uint16_t DISSLW:1;
  uint16_t A10M:1;
  uint16_t IPMIEN:1;
  uint16_t SCLREL:1;
  uint16_t I2CSIDL:1;
  uint16_t :1;
  uint16_t I2CEN:1;
} I2C3CONBITS;
extern volatile I2C3CONBITS I2C3CONbits __attribute__((__sfr__));


extern volatile uint16_t I2C3STAT __attribute__((__sfr__));
__extension__ typedef struct tagI2C3STATBITS {
  union {
    struct {
      uint16_t TBF:1;
      uint16_t RBF:1;
      uint16_t R_NOT_W:1;
      uint16_t S:1;
      uint16_t P:1;
      uint16_t D_NOT_A:1;
      uint16_t I2COV:1;
      uint16_t IWCOL:1;
      uint16_t ADD10:1;
      uint16_t GCSTAT:1;
      uint16_t BCL:1;
      uint16_t :3;
      uint16_t TRSTAT:1;
      uint16_t ACKSTAT:1;
    };
    struct {
      uint16_t :2;
      uint16_t R_W:1;
      uint16_t :2;
      uint16_t D_A:1;
    };
  };
} I2C3STATBITS;
extern volatile I2C3STATBITS I2C3STATbits __attribute__((__sfr__));


extern volatile uint16_t I2C3ADD __attribute__((__sfr__));

extern volatile uint16_t I2C3MSK __attribute__((__sfr__));

extern volatile uint16_t SPI3STAT __attribute__((__sfr__));
__extension__ typedef struct tagSPI3STATBITS {
  union {
    struct {
      uint16_t SPIRBF:1;
      uint16_t SPITBF:1;
      uint16_t SISEL:3;
      uint16_t SRXMPT:1;
      uint16_t SPIROV:1;
      uint16_t SRMPT:1;
      uint16_t SPIBEC:3;
      uint16_t :2;
      uint16_t SPISIDL:1;
      uint16_t :1;
      uint16_t SPIEN:1;
    };
    struct {
      uint16_t :2;
      uint16_t SISEL0:1;
      uint16_t SISEL1:1;
      uint16_t SISEL2:1;
      uint16_t :3;
      uint16_t SPIBEC0:1;
      uint16_t SPIBEC1:1;
      uint16_t SPIBEC2:1;
    };
  };
} SPI3STATBITS;
extern volatile SPI3STATBITS SPI3STATbits __attribute__((__sfr__));


extern volatile uint16_t SPI3CON1 __attribute__((__sfr__));
__extension__ typedef struct tagSPI3CON1BITS {
  union {
    struct {
      uint16_t PPRE:2;
      uint16_t SPRE:3;
      uint16_t MSTEN:1;
      uint16_t CKP:1;
      uint16_t SSEN:1;
      uint16_t CKE:1;
      uint16_t SMP:1;
      uint16_t MODE16:1;
      uint16_t DISSDO:1;
      uint16_t DISSCK:1;
    };
    struct {
      uint16_t PPRE0:1;
      uint16_t PPRE1:1;
      uint16_t SPRE0:1;
      uint16_t SPRE1:1;
      uint16_t SPRE2:1;
    };
  };
} SPI3CON1BITS;
extern volatile SPI3CON1BITS SPI3CON1bits __attribute__((__sfr__));


extern volatile uint16_t SPI3CON2 __attribute__((__sfr__));
typedef struct tagSPI3CON2BITS {
  uint16_t SPIBEN:1;
  uint16_t SPIFE:1;
  uint16_t :11;
  uint16_t SPIFPOL:1;
  uint16_t SPIFSD:1;
  uint16_t FRMEN:1;
} SPI3CON2BITS;
extern volatile SPI3CON2BITS SPI3CON2bits __attribute__((__sfr__));


extern volatile uint16_t SPI3BUF __attribute__((__sfr__));

extern volatile uint16_t U4MODE __attribute__((__sfr__));
__extension__ typedef struct tagU4MODEBITS {
  union {
    struct {
      uint16_t STSEL:1;
      uint16_t PDSEL:2;
      uint16_t BRGH:1;
      uint16_t RXINV:1;
      uint16_t ABAUD:1;
      uint16_t LPBACK:1;
      uint16_t WAKE:1;
      uint16_t UEN:2;
      uint16_t :1;
      uint16_t RTSMD:1;
      uint16_t IREN:1;
      uint16_t USIDL:1;
      uint16_t :1;
      uint16_t UARTEN:1;
    };
    struct {
      uint16_t :1;
      uint16_t PDSEL0:1;
      uint16_t PDSEL1:1;
      uint16_t :5;
      uint16_t UEN0:1;
      uint16_t UEN1:1;
    };
  };
} U4MODEBITS;
extern volatile U4MODEBITS U4MODEbits __attribute__((__sfr__));


extern volatile uint16_t U4STA __attribute__((__sfr__));
__extension__ typedef struct tagU4STABITS {
  union {
    struct {
      uint16_t URXDA:1;
      uint16_t OERR:1;
      uint16_t FERR:1;
      uint16_t PERR:1;
      uint16_t RIDLE:1;
      uint16_t ADDEN:1;
      uint16_t URXISEL:2;
      uint16_t TRMT:1;
      uint16_t UTXBF:1;
      uint16_t UTXEN:1;
      uint16_t UTXBRK:1;
      uint16_t :1;
      uint16_t UTXISEL0:1;
      uint16_t UTXINV:1;
      uint16_t UTXISEL1:1;
    };
    struct {
      uint16_t :6;
      uint16_t URXISEL0:1;
      uint16_t URXISEL1:1;
    };
  };
} U4STABITS;
extern volatile U4STABITS U4STAbits __attribute__((__sfr__));


extern volatile uint16_t U4TXREG __attribute__((__sfr__));

extern volatile uint16_t U4RXREG __attribute__((__sfr__));

extern volatile uint16_t U4BRG __attribute__((__sfr__));

extern volatile uint16_t TRISB __attribute__((__sfr__));
typedef struct tagTRISBBITS {
  uint16_t TRISB0:1;
  uint16_t TRISB1:1;
  uint16_t TRISB2:1;
  uint16_t TRISB3:1;
  uint16_t TRISB4:1;
  uint16_t TRISB5:1;
  uint16_t TRISB6:1;
  uint16_t TRISB7:1;
  uint16_t TRISB8:1;
  uint16_t TRISB9:1;
  uint16_t TRISB10:1;
  uint16_t TRISB11:1;
  uint16_t TRISB12:1;
  uint16_t TRISB13:1;
  uint16_t TRISB14:1;
  uint16_t TRISB15:1;
} TRISBBITS;
extern volatile TRISBBITS TRISBbits __attribute__((__sfr__));


extern volatile uint16_t PORTB __attribute__((__sfr__));
typedef struct tagPORTBBITS {
  uint16_t RB0:1;
  uint16_t RB1:1;
  uint16_t RB2:1;
  uint16_t RB3:1;
  uint16_t RB4:1;
  uint16_t RB5:1;
  uint16_t RB6:1;
  uint16_t RB7:1;
  uint16_t RB8:1;
  uint16_t RB9:1;
  uint16_t RB10:1;
  uint16_t RB11:1;
  uint16_t RB12:1;
  uint16_t RB13:1;
  uint16_t RB14:1;
  uint16_t RB15:1;
} PORTBBITS;
extern volatile PORTBBITS PORTBbits __attribute__((__sfr__));


extern volatile uint16_t LATB __attribute__((__sfr__));
typedef struct tagLATBBITS {
  uint16_t LATB0:1;
  uint16_t LATB1:1;
  uint16_t LATB2:1;
  uint16_t LATB3:1;
  uint16_t LATB4:1;
  uint16_t LATB5:1;
  uint16_t LATB6:1;
  uint16_t LATB7:1;
  uint16_t LATB8:1;
  uint16_t LATB9:1;
  uint16_t LATB10:1;
  uint16_t LATB11:1;
  uint16_t LATB12:1;
  uint16_t LATB13:1;
  uint16_t LATB14:1;
  uint16_t LATB15:1;
} LATBBITS;
extern volatile LATBBITS LATBbits __attribute__((__sfr__));


extern volatile uint16_t ODCB __attribute__((__sfr__));
typedef struct tagODCBBITS {
  uint16_t ODB0:1;
  uint16_t ODB1:1;
  uint16_t ODB2:1;
  uint16_t ODB3:1;
  uint16_t ODB4:1;
  uint16_t ODB5:1;
  uint16_t ODB6:1;
  uint16_t ODB7:1;
  uint16_t ODB8:1;
  uint16_t ODB9:1;
  uint16_t ODB10:1;
  uint16_t ODB11:1;
  uint16_t ODB12:1;
  uint16_t ODB13:1;
  uint16_t ODB14:1;
  uint16_t ODB15:1;
} ODCBBITS;
extern volatile ODCBBITS ODCBbits __attribute__((__sfr__));


extern volatile uint16_t TRISC __attribute__((__sfr__));
typedef struct tagTRISCBITS {
  uint16_t :12;
  uint16_t TRISC12:1;
  uint16_t TRISC13:1;
  uint16_t TRISC14:1;
  uint16_t TRISC15:1;
} TRISCBITS;
extern volatile TRISCBITS TRISCbits __attribute__((__sfr__));


extern volatile uint16_t PORTC __attribute__((__sfr__));
typedef struct tagPORTCBITS {
  uint16_t :12;
  uint16_t RC12:1;
  uint16_t RC13:1;
  uint16_t RC14:1;
  uint16_t RC15:1;
} PORTCBITS;
extern volatile PORTCBITS PORTCbits __attribute__((__sfr__));


extern volatile uint16_t LATC __attribute__((__sfr__));
typedef struct tagLATCBITS {
  uint16_t :12;
  uint16_t LATC12:1;
  uint16_t LATC13:1;
  uint16_t LATC14:1;
  uint16_t LATC15:1;
} LATCBITS;
extern volatile LATCBITS LATCbits __attribute__((__sfr__));


extern volatile uint16_t ODCC __attribute__((__sfr__));
typedef struct tagODCCBITS {
  uint16_t :12;
  uint16_t ODC12:1;
  uint16_t ODC13:1;
  uint16_t ODC14:1;
  uint16_t ODC15:1;
} ODCCBITS;
extern volatile ODCCBITS ODCCbits __attribute__((__sfr__));


extern volatile uint16_t TRISD __attribute__((__sfr__));
typedef struct tagTRISDBITS {
  uint16_t TRISD0:1;
  uint16_t TRISD1:1;
  uint16_t TRISD2:1;
  uint16_t TRISD3:1;
  uint16_t TRISD4:1;
  uint16_t TRISD5:1;
  uint16_t TRISD6:1;
  uint16_t TRISD7:1;
  uint16_t TRISD8:1;
  uint16_t TRISD9:1;
  uint16_t TRISD10:1;
  uint16_t TRISD11:1;
} TRISDBITS;
extern volatile TRISDBITS TRISDbits __attribute__((__sfr__));


extern volatile uint16_t PORTD __attribute__((__sfr__));
typedef struct tagPORTDBITS {
  uint16_t RD0:1;
  uint16_t RD1:1;
  uint16_t RD2:1;
  uint16_t RD3:1;
  uint16_t RD4:1;
  uint16_t RD5:1;
  uint16_t RD6:1;
  uint16_t RD7:1;
  uint16_t RD8:1;
  uint16_t RD9:1;
  uint16_t RD10:1;
  uint16_t RD11:1;
} PORTDBITS;
extern volatile PORTDBITS PORTDbits __attribute__((__sfr__));


extern volatile uint16_t LATD __attribute__((__sfr__));
typedef struct tagLATDBITS {
  uint16_t LATD0:1;
  uint16_t LATD1:1;
  uint16_t LATD2:1;
  uint16_t LATD3:1;
  uint16_t LATD4:1;
  uint16_t LATD5:1;
  uint16_t LATD6:1;
  uint16_t LATD7:1;
  uint16_t LATD8:1;
  uint16_t LATD9:1;
  uint16_t LATD10:1;
  uint16_t LATD11:1;
} LATDBITS;
extern volatile LATDBITS LATDbits __attribute__((__sfr__));


extern volatile uint16_t ODCD __attribute__((__sfr__));
typedef struct tagODCDBITS {
  uint16_t ODD0:1;
  uint16_t ODD1:1;
  uint16_t ODD2:1;
  uint16_t ODD3:1;
  uint16_t ODD4:1;
  uint16_t ODD5:1;
  uint16_t ODD6:1;
  uint16_t ODD7:1;
  uint16_t ODD8:1;
  uint16_t ODD9:1;
  uint16_t ODD10:1;
  uint16_t ODD11:1;
} ODCDBITS;
extern volatile ODCDBITS ODCDbits __attribute__((__sfr__));


extern volatile uint16_t TRISE __attribute__((__sfr__));
typedef struct tagTRISEBITS {
  uint16_t TRISE0:1;
  uint16_t TRISE1:1;
  uint16_t TRISE2:1;
  uint16_t TRISE3:1;
  uint16_t TRISE4:1;
  uint16_t TRISE5:1;
  uint16_t TRISE6:1;
  uint16_t TRISE7:1;
} TRISEBITS;
extern volatile TRISEBITS TRISEbits __attribute__((__sfr__));


extern volatile uint16_t PORTE __attribute__((__sfr__));
typedef struct tagPORTEBITS {
  uint16_t RE0:1;
  uint16_t RE1:1;
  uint16_t RE2:1;
  uint16_t RE3:1;
  uint16_t RE4:1;
  uint16_t RE5:1;
  uint16_t RE6:1;
  uint16_t RE7:1;
} PORTEBITS;
extern volatile PORTEBITS PORTEbits __attribute__((__sfr__));


extern volatile uint16_t LATE __attribute__((__sfr__));
typedef struct tagLATEBITS {
  uint16_t LATE0:1;
  uint16_t LATE1:1;
  uint16_t LATE2:1;
  uint16_t LATE3:1;
  uint16_t LATE4:1;
  uint16_t LATE5:1;
  uint16_t LATE6:1;
  uint16_t LATE7:1;
} LATEBITS;
extern volatile LATEBITS LATEbits __attribute__((__sfr__));


extern volatile uint16_t ODCE __attribute__((__sfr__));
typedef struct tagODCEBITS {
  uint16_t ODE0:1;
  uint16_t ODE1:1;
  uint16_t ODE2:1;
  uint16_t ODE3:1;
  uint16_t ODE4:1;
  uint16_t ODE5:1;
  uint16_t ODE6:1;
  uint16_t ODE7:1;
} ODCEBITS;
extern volatile ODCEBITS ODCEbits __attribute__((__sfr__));


extern volatile uint16_t TRISF __attribute__((__sfr__));
typedef struct tagTRISFBITS {
  uint16_t TRISF0:1;
  uint16_t TRISF1:1;
  uint16_t :1;
  uint16_t TRISF3:1;
  uint16_t TRISF4:1;
  uint16_t TRISF5:1;
} TRISFBITS;
extern volatile TRISFBITS TRISFbits __attribute__((__sfr__));


extern volatile uint16_t PORTF __attribute__((__sfr__));
typedef struct tagPORTFBITS {
  uint16_t RF0:1;
  uint16_t RF1:1;
  uint16_t :1;
  uint16_t RF3:1;
  uint16_t RF4:1;
  uint16_t RF5:1;
} PORTFBITS;
extern volatile PORTFBITS PORTFbits __attribute__((__sfr__));


extern volatile uint16_t LATF __attribute__((__sfr__));
typedef struct tagLATFBITS {
  uint16_t LATF0:1;
  uint16_t LATF1:1;
  uint16_t :1;
  uint16_t LATF3:1;
  uint16_t LATF4:1;
  uint16_t LATF5:1;
} LATFBITS;
extern volatile LATFBITS LATFbits __attribute__((__sfr__));


extern volatile uint16_t ODCF __attribute__((__sfr__));
typedef struct tagODCFBITS {
  uint16_t ODF0:1;
  uint16_t ODF1:1;
  uint16_t :1;
  uint16_t ODF3:1;
  uint16_t ODF4:1;
  uint16_t ODF5:1;
} ODCFBITS;
extern volatile ODCFBITS ODCFbits __attribute__((__sfr__));


extern volatile uint16_t TRISG __attribute__((__sfr__));
typedef struct tagTRISGBITS {
  uint16_t :2;
  uint16_t TRISG2:1;
  uint16_t TRISG3:1;
  uint16_t :2;
  uint16_t TRISG6:1;
  uint16_t TRISG7:1;
  uint16_t TRISG8:1;
  uint16_t TRISG9:1;
} TRISGBITS;
extern volatile TRISGBITS TRISGbits __attribute__((__sfr__));


extern volatile uint16_t PORTG __attribute__((__sfr__));
typedef struct tagPORTGBITS {
  uint16_t :2;
  uint16_t RG2:1;
  uint16_t RG3:1;
  uint16_t :2;
  uint16_t RG6:1;
  uint16_t RG7:1;
  uint16_t RG8:1;
  uint16_t RG9:1;
} PORTGBITS;
extern volatile PORTGBITS PORTGbits __attribute__((__sfr__));


extern volatile uint16_t LATG __attribute__((__sfr__));
typedef struct tagLATGBITS {
  uint16_t :2;
  uint16_t LATG2:1;
  uint16_t LATG3:1;
  uint16_t :2;
  uint16_t LATG6:1;
  uint16_t LATG7:1;
  uint16_t LATG8:1;
  uint16_t LATG9:1;
} LATGBITS;
extern volatile LATGBITS LATGbits __attribute__((__sfr__));


extern volatile uint16_t ODCG __attribute__((__sfr__));
typedef struct tagODCGBITS {
  uint16_t :2;
  uint16_t ODG2:1;
  uint16_t ODG3:1;
  uint16_t :2;
  uint16_t ODG6:1;
  uint16_t ODG7:1;
  uint16_t ODG8:1;
  uint16_t ODG9:1;
} ODCGBITS;
extern volatile ODCGBITS ODCGbits __attribute__((__sfr__));


extern volatile uint16_t PADCFG1 __attribute__((__sfr__));
__extension__ typedef struct tagPADCFG1BITS {
  union {
    struct {
      uint16_t PMPTTL:1;
      uint16_t RTSECSEL:1;
    };
    struct {
      uint16_t :1;
      uint16_t RTSECSEL0:1;
    };
  };
} PADCFG1BITS;
extern volatile PADCFG1BITS PADCFG1bits __attribute__((__sfr__));


extern volatile uint16_t ADC1BUF0 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF1 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF2 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF3 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF4 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF5 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF6 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF7 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF8 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF9 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUFA __attribute__((__sfr__));

extern volatile uint16_t ADC1BUFB __attribute__((__sfr__));

extern volatile uint16_t ADC1BUFC __attribute__((__sfr__));

extern volatile uint16_t ADC1BUFD __attribute__((__sfr__));

extern volatile uint16_t ADC1BUFE __attribute__((__sfr__));

extern volatile uint16_t ADC1BUFF __attribute__((__sfr__));

extern volatile uint16_t AD1CON1 __attribute__((__sfr__));
__extension__ typedef struct tagAD1CON1BITS {
  union {
    struct {
      uint16_t DONE:1;
      uint16_t SAMP:1;
      uint16_t ASAM:1;
      uint16_t :2;
      uint16_t SSRC:3;
      uint16_t FORM:2;
      uint16_t :3;
      uint16_t ADSIDL:1;
      uint16_t :1;
      uint16_t ADON:1;
    };
    struct {
      uint16_t :5;
      uint16_t SSRC0:1;
      uint16_t SSRC1:1;
      uint16_t SSRC2:1;
      uint16_t FORM0:1;
      uint16_t FORM1:1;
    };
  };
} AD1CON1BITS;
extern volatile AD1CON1BITS AD1CON1bits __attribute__((__sfr__));


extern volatile uint16_t AD1CON2 __attribute__((__sfr__));
__extension__ typedef struct tagAD1CON2BITS {
  union {
    struct {
      uint16_t ALTS:1;
      uint16_t BUFM:1;
      uint16_t SMPI:4;
      uint16_t :1;
      uint16_t BUFS:1;
      uint16_t :2;
      uint16_t CSCNA:1;
      uint16_t :2;
      uint16_t VCFG:3;
    };
    struct {
      uint16_t :2;
      uint16_t SMPI0:1;
      uint16_t SMPI1:1;
      uint16_t SMPI2:1;
      uint16_t SMPI3:1;
      uint16_t :7;
      uint16_t VCFG0:1;
      uint16_t VCFG1:1;
      uint16_t VCFG2:1;
    };
  };
} AD1CON2BITS;
extern volatile AD1CON2BITS AD1CON2bits __attribute__((__sfr__));


extern volatile uint16_t AD1CON3 __attribute__((__sfr__));
__extension__ typedef struct tagAD1CON3BITS {
  union {
    struct {
      uint16_t ADCS:8;
      uint16_t SAMC:5;
      uint16_t :2;
      uint16_t ADRC:1;
    };
    struct {
      uint16_t ADCS0:1;
      uint16_t ADCS1:1;
      uint16_t ADCS2:1;
      uint16_t ADCS3:1;
      uint16_t ADCS4:1;
      uint16_t ADCS5:1;
      uint16_t ADCS6:1;
      uint16_t ADCS7:1;
      uint16_t SAMC0:1;
      uint16_t SAMC1:1;
      uint16_t SAMC2:1;
      uint16_t SAMC3:1;
      uint16_t SAMC4:1;
    };
  };
} AD1CON3BITS;
extern volatile AD1CON3BITS AD1CON3bits __attribute__((__sfr__));


extern volatile uint16_t AD1CHS __attribute__((__sfr__));
__extension__ typedef struct tagAD1CHSBITS {
  union {
    struct {
      uint16_t CH0SA:5;
      uint16_t :2;
      uint16_t CH0NA:1;
      uint16_t CH0SB:5;
      uint16_t :2;
      uint16_t CH0NB:1;
    };
    struct {
      uint16_t CH0SA0:1;
      uint16_t CH0SA1:1;
      uint16_t CH0SA2:1;
      uint16_t CH0SA3:1;
      uint16_t CH0SA4:1;
      uint16_t :3;
      uint16_t CH0SB0:1;
      uint16_t CH0SB1:1;
      uint16_t CH0SB2:1;
      uint16_t CH0SB3:1;
      uint16_t CH0SB4:1;
    };
  };
} AD1CHSBITS;
extern volatile AD1CHSBITS AD1CHSbits __attribute__((__sfr__));


extern volatile uint16_t AD1CHS0 __attribute__((__sfr__));
__extension__ typedef struct tagAD1CHS0BITS {
  union {
    struct {
      uint16_t CH0SA:5;
      uint16_t :2;
      uint16_t CH0NA:1;
      uint16_t CH0SB:5;
      uint16_t :2;
      uint16_t CH0NB:1;
    };
    struct {
      uint16_t CH0SA0:1;
      uint16_t CH0SA1:1;
      uint16_t CH0SA2:1;
      uint16_t CH0SA3:1;
      uint16_t CH0SA4:1;
      uint16_t :3;
      uint16_t CH0SB0:1;
      uint16_t CH0SB1:1;
      uint16_t CH0SB2:1;
      uint16_t CH0SB3:1;
      uint16_t CH0SB4:1;
    };
  };
} AD1CHS0BITS;
extern volatile AD1CHS0BITS AD1CHS0bits __attribute__((__sfr__));


extern volatile uint16_t AD1PCFGH __attribute__((__sfr__));
typedef struct tagAD1PCFGHBITS {
  uint16_t PCFG16:1;
  uint16_t PCFG17:1;
} AD1PCFGHBITS;
extern volatile AD1PCFGHBITS AD1PCFGHbits __attribute__((__sfr__));


extern volatile uint16_t AD1PCFG __attribute__((__sfr__));
typedef struct tagAD1PCFGBITS {
  uint16_t PCFG0:1;
  uint16_t PCFG1:1;
  uint16_t PCFG2:1;
  uint16_t PCFG3:1;
  uint16_t PCFG4:1;
  uint16_t PCFG5:1;
  uint16_t PCFG6:1;
  uint16_t PCFG7:1;
  uint16_t PCFG8:1;
  uint16_t PCFG9:1;
  uint16_t PCFG10:1;
  uint16_t PCFG11:1;
  uint16_t PCFG12:1;
  uint16_t PCFG13:1;
  uint16_t PCFG14:1;
  uint16_t PCFG15:1;
} AD1PCFGBITS;
extern volatile AD1PCFGBITS AD1PCFGbits __attribute__((__sfr__));


extern volatile uint16_t AD1PCFGL __attribute__((__sfr__));
typedef struct tagAD1PCFGLBITS {
  uint16_t PCFG0:1;
  uint16_t PCFG1:1;
  uint16_t PCFG2:1;
  uint16_t PCFG3:1;
  uint16_t PCFG4:1;
  uint16_t PCFG5:1;
  uint16_t PCFG6:1;
  uint16_t PCFG7:1;
  uint16_t PCFG8:1;
  uint16_t PCFG9:1;
  uint16_t PCFG10:1;
  uint16_t PCFG11:1;
  uint16_t PCFG12:1;
  uint16_t PCFG13:1;
  uint16_t PCFG14:1;
  uint16_t PCFG15:1;
} AD1PCFGLBITS;
extern volatile AD1PCFGLBITS AD1PCFGLbits __attribute__((__sfr__));


extern volatile uint16_t AD1CSSL __attribute__((__sfr__));
typedef struct tagAD1CSSLBITS {
  uint16_t CSSL0:1;
  uint16_t CSSL1:1;
  uint16_t CSSL2:1;
  uint16_t CSSL3:1;
  uint16_t CSSL4:1;
  uint16_t CSSL5:1;
  uint16_t CSSL6:1;
  uint16_t CSSL7:1;
  uint16_t CSSL8:1;
  uint16_t CSSL9:1;
  uint16_t CSSL10:1;
  uint16_t CSSL11:1;
  uint16_t CSSL12:1;
  uint16_t CSSL13:1;
  uint16_t CSSL14:1;
  uint16_t CSSL15:1;
} AD1CSSLBITS;
extern volatile AD1CSSLBITS AD1CSSLbits __attribute__((__sfr__));


extern volatile uint16_t AD1CSSH __attribute__((__sfr__));
typedef struct tagAD1CSSHBITS {
  uint16_t CSSL16:1;
  uint16_t CSSL17:1;
} AD1CSSHBITS;
extern volatile AD1CSSHBITS AD1CSSHbits __attribute__((__sfr__));


extern volatile uint16_t CTMUCON __attribute__((__sfr__));
__extension__ typedef struct tagCTMUCONBITS {
  union {
    struct {
      uint16_t EDG1STAT:1;
      uint16_t EDG2STAT:1;
      uint16_t EDG1SEL:2;
      uint16_t EDG1POL:1;
      uint16_t EDG2SEL:2;
      uint16_t EDG2POL:1;
      uint16_t CTTRIG:1;
      uint16_t IDISSEN:1;
      uint16_t EDGSEQEN:1;
      uint16_t EDGEN:1;
      uint16_t TGEN:1;
      uint16_t CTMUSIDL:1;
      uint16_t :1;
      uint16_t CTMUEN:1;
    };
    struct {
      uint16_t :2;
      uint16_t EDG1SEL0:1;
      uint16_t EDG1SEL1:1;
      uint16_t :1;
      uint16_t EDG2SEL0:1;
      uint16_t EDG2SEL1:1;
    };
  };
} CTMUCONBITS;
extern volatile CTMUCONBITS CTMUCONbits __attribute__((__sfr__));


extern volatile uint16_t CTMUICON __attribute__((__sfr__));
__extension__ typedef struct tagCTMUICONBITS {
  union {
    struct {
      uint16_t :8;
      uint16_t IRNG:2;
      uint16_t ITRIM:6;
    };
    struct {
      uint16_t :8;
      uint16_t IRNG0:1;
      uint16_t IRNG1:1;
      uint16_t ITRIM0:1;
      uint16_t ITRIM1:1;
      uint16_t ITRIM2:1;
      uint16_t ITRIM3:1;
      uint16_t ITRIM4:1;
      uint16_t ITRIM5:1;
    };
  };
} CTMUICONBITS;
extern volatile CTMUICONBITS CTMUICONbits __attribute__((__sfr__));


extern volatile uint16_t U1OTGIR __attribute__((__sfr__));
typedef struct tagU1OTGIRBITS {
  uint16_t VBUSVDIF:1;
  uint16_t :1;
  uint16_t SESENDIF:1;
  uint16_t SESVDIF:1;
  uint16_t ACTVIF:1;
  uint16_t LSTATEIF:1;
  uint16_t T1MSECIF:1;
  uint16_t IDIF:1;
} U1OTGIRBITS;
extern volatile U1OTGIRBITS U1OTGIRbits __attribute__((__sfr__));


extern volatile uint16_t U1OTGIE __attribute__((__sfr__));
typedef struct tagU1OTGIEBITS {
  uint16_t VBUSVDIE:1;
  uint16_t :1;
  uint16_t SESENDIE:1;
  uint16_t SESVDIE:1;
  uint16_t ACTVIE:1;
  uint16_t LSTATEIE:1;
  uint16_t T1MSECIE:1;
  uint16_t IDIE:1;
} U1OTGIEBITS;
extern volatile U1OTGIEBITS U1OTGIEbits __attribute__((__sfr__));


extern volatile uint16_t U1OTGSTAT __attribute__((__sfr__));
typedef struct tagU1OTGSTATBITS {
  uint16_t VBUSVD:1;
  uint16_t :1;
  uint16_t SESEND:1;
  uint16_t SESVD:1;
  uint16_t :1;
  uint16_t LSTATE:1;
  uint16_t :1;
  uint16_t ID:1;
} U1OTGSTATBITS;
extern volatile U1OTGSTATBITS U1OTGSTATbits __attribute__((__sfr__));


extern volatile uint16_t U1OTGCON __attribute__((__sfr__));
typedef struct tagU1OTGCONBITS {
  uint16_t VBUSDIS:1;
  uint16_t VBUSCHG:1;
  uint16_t OTGEN:1;
  uint16_t VBUSON:1;
  uint16_t DMPULDWN:1;
  uint16_t DPPULDWN:1;
  uint16_t DMPULUP:1;
  uint16_t DPPULUP:1;
} U1OTGCONBITS;
extern volatile U1OTGCONBITS U1OTGCONbits __attribute__((__sfr__));


extern volatile uint16_t U1PWRC __attribute__((__sfr__));
__extension__ typedef struct tagU1PWRCBITS {
  union {
    struct {
      uint16_t USBPWR:1;
      uint16_t USUSPEND:1;
      uint16_t :2;
      uint16_t USLPGRD:1;
      uint16_t :2;
      uint16_t UACTPND:1;
    };
    struct {
      uint16_t :1;
      uint16_t USUSPND:1;
    };
  };
} U1PWRCBITS;
extern volatile U1PWRCBITS U1PWRCbits __attribute__((__sfr__));


extern volatile uint16_t U1IR __attribute__((__sfr__));
__extension__ typedef struct tagU1IRBITS {
  union {
    struct {
      uint16_t URSTIF:1;
      uint16_t UERRIF:1;
      uint16_t SOFIF:1;
      uint16_t TRNIF:1;
      uint16_t IDLEIF:1;
      uint16_t RESUMEIF:1;
      uint16_t ATTACHIF:1;
      uint16_t STALLIF:1;
    };
    struct {
      uint16_t DETACHIF:1;
    };
  };
} U1IRBITS;
extern volatile U1IRBITS U1IRbits __attribute__((__sfr__));


extern volatile uint16_t U1IE __attribute__((__sfr__));
__extension__ typedef struct tagU1IEBITS {
  union {
    struct {
      uint16_t URSTIE:1;
      uint16_t UERRIE:1;
      uint16_t SOFIE:1;
      uint16_t TRNIE:1;
      uint16_t IDLEIE:1;
      uint16_t RESUMEIE:1;
      uint16_t ATTACHIE:1;
      uint16_t STALLIE:1;
    };
    struct {
      uint16_t DETACHIE:1;
    };
  };
} U1IEBITS;
extern volatile U1IEBITS U1IEbits __attribute__((__sfr__));


extern volatile uint16_t U1EIR __attribute__((__sfr__));
__extension__ typedef struct tagU1EIRBITS {
  union {
    struct {
      uint16_t PIDEF:1;
      uint16_t CRC5EF:1;
      uint16_t CRC16EF:1;
      uint16_t DFN8EF:1;
      uint16_t BTOEF:1;
      uint16_t DMAEF:1;
      uint16_t :1;
      uint16_t BTSEF:1;
    };
    struct {
      uint16_t :1;
      uint16_t EOFEF:1;
    };
  };
} U1EIRBITS;
extern volatile U1EIRBITS U1EIRbits __attribute__((__sfr__));


extern volatile uint16_t U1EIE __attribute__((__sfr__));
__extension__ typedef struct tagU1EIEBITS {
  union {
    struct {
      uint16_t PIDEE:1;
      uint16_t CRC5EE:1;
      uint16_t CRC16EE:1;
      uint16_t DFN8EE:1;
      uint16_t BTOEE:1;
      uint16_t DMAEE:1;
      uint16_t :1;
      uint16_t BTSEE:1;
    };
    struct {
      uint16_t :1;
      uint16_t EOFEE:1;
    };
  };
} U1EIEBITS;
extern volatile U1EIEBITS U1EIEbits __attribute__((__sfr__));


extern volatile uint16_t U1STAT __attribute__((__sfr__));
__extension__ typedef struct tagU1STATBITS {
  union {
    struct {
      uint16_t :2;
      uint16_t PPBI:1;
      uint16_t DIR:1;
      uint16_t ENDPT0:1;
      uint16_t ENDPT1:1;
      uint16_t ENDPT2:1;
      uint16_t ENDPT3:1;
    };
    struct {
      uint16_t :4;
      uint16_t ENDPT:4;
    };
  };
} U1STATBITS;
extern volatile U1STATBITS U1STATbits __attribute__((__sfr__));


extern volatile uint16_t U1CON __attribute__((__sfr__));
__extension__ typedef struct tagU1CONBITS {
  union {
    struct {
      uint16_t USBEN:1;
      uint16_t PPBRST:1;
      uint16_t RESUME:1;
      uint16_t HOSTEN:1;
      uint16_t RESET:1;
      uint16_t PKTDIS:1;
      uint16_t SE0:1;
      uint16_t JSTATE:1;
    };
    struct {
      uint16_t SOFEN:1;
      uint16_t :3;
      uint16_t USBRST:1;
      uint16_t TOKBUSY:1;
    };
  };
} U1CONBITS;
extern volatile U1CONBITS U1CONbits __attribute__((__sfr__));


extern volatile uint16_t U1ADDR __attribute__((__sfr__));
__extension__ typedef struct tagU1ADDRBITS {
  union {
    struct {
      uint16_t ADDR0:1;
      uint16_t ADDR1:1;
      uint16_t ADDR2:1;
      uint16_t ADDR3:1;
      uint16_t ADDR4:1;
      uint16_t ADDR5:1;
      uint16_t ADDR6:1;
      uint16_t LSPDEN:1;
    };
    struct {
      uint16_t DEVADDR0:1;
      uint16_t DEVADDR1:1;
      uint16_t DEVADDR2:1;
      uint16_t DEVADDR3:1;
      uint16_t DEVADDR4:1;
      uint16_t DEVADDR5:1;
      uint16_t DEVADDR6:1;
      uint16_t LOWSPDEN:1;
    };
    struct {
      uint16_t DEVADDR:7;
    };
  };
} U1ADDRBITS;
extern volatile U1ADDRBITS U1ADDRbits __attribute__((__sfr__));


extern volatile uint16_t U1BDTP1 __attribute__((__sfr__));
typedef struct tagU1BDTP1BITS {
  uint16_t :1;
  uint16_t BDTPTRL:7;
} U1BDTP1BITS;
extern volatile U1BDTP1BITS U1BDTP1bits __attribute__((__sfr__));


extern volatile uint16_t U1FRML __attribute__((__sfr__));
typedef struct tagU1FRMLBITS {
  uint16_t FRM0:1;
  uint16_t FRM1:1;
  uint16_t FRM2:1;
  uint16_t FRM3:1;
  uint16_t FRM4:1;
  uint16_t FRM5:1;
  uint16_t FRM6:1;
  uint16_t FRM7:1;
} U1FRMLBITS;
extern volatile U1FRMLBITS U1FRMLbits __attribute__((__sfr__));


extern volatile uint16_t U1FRMH __attribute__((__sfr__));
typedef struct tagU1FRMHBITS {
  uint16_t FRM8:1;
  uint16_t FRM9:1;
  uint16_t FRM10:1;
  uint16_t FRM11:1;
  uint16_t FRM12:1;
  uint16_t FRM13:1;
  uint16_t FRM14:1;
  uint16_t FRM15:1;
} U1FRMHBITS;
extern volatile U1FRMHBITS U1FRMHbits __attribute__((__sfr__));


extern volatile uint16_t U1TOK __attribute__((__sfr__));
__extension__ typedef struct tagU1TOKBITS {
  union {
    struct {
      uint16_t EP0:1;
      uint16_t EP1:1;
      uint16_t EP2:1;
      uint16_t EP3:1;
      uint16_t PID0:1;
      uint16_t PID1:1;
      uint16_t PID2:1;
      uint16_t PID3:1;
    };
    struct {
      uint16_t EP:4;
      uint16_t PID:4;
    };
  };
} U1TOKBITS;
extern volatile U1TOKBITS U1TOKbits __attribute__((__sfr__));


extern volatile uint16_t U1SOF __attribute__((__sfr__));
typedef struct tagU1SOFBITS {
  uint16_t CNT:8;
} U1SOFBITS;
extern volatile U1SOFBITS U1SOFbits __attribute__((__sfr__));


extern volatile uint16_t U1CNFG1 __attribute__((__sfr__));
__extension__ typedef struct tagU1CNFG1BITS {
  union {
    struct {
      uint16_t PPB0:1;
      uint16_t PPB1:1;
      uint16_t :2;
      uint16_t USBSIDL:1;
      uint16_t :1;
      uint16_t UOEMON:1;
      uint16_t UTEYE:1;
    };
    struct {
      uint16_t PPB:2;
    };
  };
} U1CNFG1BITS;
extern volatile U1CNFG1BITS U1CNFG1bits __attribute__((__sfr__));


extern volatile uint16_t U1CNFG2 __attribute__((__sfr__));
typedef struct tagU1CNFG2BITS {
  uint16_t UTRDIS:1;
  uint16_t UVCMPDIS:1;
  uint16_t UVBUSDIS:1;
  uint16_t EXTI2CEN:1;
} U1CNFG2BITS;
extern volatile U1CNFG2BITS U1CNFG2bits __attribute__((__sfr__));


extern volatile uint16_t U1EP0 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP0BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
      uint16_t :1;
      uint16_t RETRYDIS:1;
      uint16_t LSPD:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
    struct {
      uint16_t :7;
      uint16_t LOWSPD:1;
    };
  };
} U1EP0BITS;
extern volatile U1EP0BITS U1EP0bits __attribute__((__sfr__));


extern volatile uint16_t U1EP1 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP1BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP1BITS;
extern volatile U1EP1BITS U1EP1bits __attribute__((__sfr__));


extern volatile uint16_t U1EP2 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP2BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP2BITS;
extern volatile U1EP2BITS U1EP2bits __attribute__((__sfr__));


extern volatile uint16_t U1EP3 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP3BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP3BITS;
extern volatile U1EP3BITS U1EP3bits __attribute__((__sfr__));


extern volatile uint16_t U1EP4 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP4BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP4BITS;
extern volatile U1EP4BITS U1EP4bits __attribute__((__sfr__));


extern volatile uint16_t U1EP5 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP5BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP5BITS;
extern volatile U1EP5BITS U1EP5bits __attribute__((__sfr__));


extern volatile uint16_t U1EP6 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP6BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP6BITS;
extern volatile U1EP6BITS U1EP6bits __attribute__((__sfr__));


extern volatile uint16_t U1EP7 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP7BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP7BITS;
extern volatile U1EP7BITS U1EP7bits __attribute__((__sfr__));


extern volatile uint16_t U1EP8 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP8BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP8BITS;
extern volatile U1EP8BITS U1EP8bits __attribute__((__sfr__));


extern volatile uint16_t U1EP9 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP9BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP9BITS;
extern volatile U1EP9BITS U1EP9bits __attribute__((__sfr__));


extern volatile uint16_t U1EP10 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP10BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP10BITS;
extern volatile U1EP10BITS U1EP10bits __attribute__((__sfr__));


extern volatile uint16_t U1EP11 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP11BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP11BITS;
extern volatile U1EP11BITS U1EP11bits __attribute__((__sfr__));


extern volatile uint16_t U1EP12 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP12BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP12BITS;
extern volatile U1EP12BITS U1EP12bits __attribute__((__sfr__));


extern volatile uint16_t U1EP13 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP13BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP13BITS;
extern volatile U1EP13BITS U1EP13bits __attribute__((__sfr__));


extern volatile uint16_t U1EP14 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP14BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP14BITS;
extern volatile U1EP14BITS U1EP14bits __attribute__((__sfr__));


extern volatile uint16_t U1EP15 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP15BITS {
  union {
    struct {
      uint16_t EPHSHK:1;
      uint16_t EPSTALL:1;
      uint16_t EPTXEN:1;
      uint16_t EPRXEN:1;
      uint16_t EPCONDIS:1;
    };
    struct {
      uint16_t :2;
      uint16_t EPINEN:1;
      uint16_t EPOUTEN:1;
    };
  };
} U1EP15BITS;
extern volatile U1EP15BITS U1EP15bits __attribute__((__sfr__));


extern volatile uint16_t U1PWMRRS __attribute__((__sfr__));
__extension__ typedef struct tagU1PWMRRSBITS {
  union {
    struct {
      uint16_t PER0:1;
      uint16_t PER1:1;
      uint16_t PER2:1;
      uint16_t PER3:1;
      uint16_t PER4:1;
      uint16_t PER5:1;
      uint16_t PER6:1;
      uint16_t PER7:1;
      uint16_t DC0:1;
      uint16_t DC1:1;
      uint16_t DC2:1;
      uint16_t DC3:1;
      uint16_t DC4:1;
      uint16_t DC5:1;
      uint16_t DC6:1;
      uint16_t DC7:1;
    };
    struct {
      uint16_t USBRS0:1;
      uint16_t USBRS1:1;
      uint16_t USBRS2:1;
      uint16_t USBRS3:1;
      uint16_t USBRS4:1;
      uint16_t USBRS5:1;
      uint16_t USBRS6:1;
      uint16_t USBRS7:1;
      uint16_t USBR0:1;
      uint16_t USBR1:1;
      uint16_t USBR2:1;
      uint16_t USBR3:1;
      uint16_t USBR4:1;
      uint16_t USBR5:1;
      uint16_t USBR6:1;
      uint16_t USBR7:1;
    };
    struct {
      uint16_t USBRS:8;
      uint16_t USBR:8;
    };
    struct {
      uint16_t PER:8;
      uint16_t DC:8;
    };
  };
} U1PWMRRSBITS;
extern volatile U1PWMRRSBITS U1PWMRRSbits __attribute__((__sfr__));


extern volatile uint16_t U1PWMCON __attribute__((__sfr__));
__extension__ typedef struct tagU1PWMCONBITS {
  union {
    struct {
      uint16_t :8;
      uint16_t CNTEN:1;
      uint16_t PWMPOL:1;
      uint16_t USBTSEL:3;
      uint16_t :2;
      uint16_t PWMEN:1;
    };
    struct {
      uint16_t :10;
      uint16_t USBTSEL0:1;
      uint16_t USBTSEL1:1;
      uint16_t USBTSEL2:1;
    };
  };
} U1PWMCONBITS;
extern volatile U1PWMCONBITS U1PWMCONbits __attribute__((__sfr__));


extern volatile uint16_t PMCON __attribute__((__sfr__));
__extension__ typedef struct tagPMCONBITS {
  union {
    struct {
      uint16_t RDSP:1;
      uint16_t WRSP:1;
      uint16_t BEP:1;
      uint16_t CS1P:1;
      uint16_t CS2P:1;
      uint16_t ALP:1;
      uint16_t CSF:2;
      uint16_t PTRDEN:1;
      uint16_t PTWREN:1;
      uint16_t PTBEEN:1;
      uint16_t ADRMUX:2;
      uint16_t PSIDL:1;
      uint16_t :1;
      uint16_t PMPEN:1;
    };
    struct {
      uint16_t :6;
      uint16_t CSF0:1;
      uint16_t CSF1:1;
      uint16_t :3;
      uint16_t ADRMUX0:1;
      uint16_t ADRMUX1:1;
    };
  };
} PMCONBITS;
extern volatile PMCONBITS PMCONbits __attribute__((__sfr__));


extern volatile uint16_t PMMODE __attribute__((__sfr__));
__extension__ typedef struct tagPMMODEBITS {
  union {
    struct {
      uint16_t WAITE:2;
      uint16_t WAITM:4;
      uint16_t WAITB:2;
      uint16_t MODE0:1;
      uint16_t MODE1:1;
      uint16_t MODE16:1;
      uint16_t INCM:2;
      uint16_t IRQM:2;
      uint16_t BUSY:1;
    };
    struct {
      uint16_t WAITE0:1;
      uint16_t WAITE1:1;
      uint16_t WAITM0:1;
      uint16_t WAITM1:1;
      uint16_t WAITM2:1;
      uint16_t WAITM3:1;
      uint16_t WAITB0:1;
      uint16_t WAITB1:1;
      uint16_t MODE:2;
      uint16_t :1;
      uint16_t INCM0:1;
      uint16_t INCM1:1;
      uint16_t IRQM0:1;
      uint16_t IRQM1:1;
    };
  };
} PMMODEBITS;
extern volatile PMMODEBITS PMMODEbits __attribute__((__sfr__));


extern volatile uint16_t PMADDR __attribute__((__sfr__));
__extension__ typedef struct tagPMADDRBITS {
  union {
    struct {
      uint16_t ADDR:14;
      uint16_t CS:2;
    };
    struct {
      uint16_t ADDR0:1;
      uint16_t ADDR1:1;
      uint16_t ADDR2:1;
      uint16_t ADDR3:1;
      uint16_t ADDR4:1;
      uint16_t ADDR5:1;
      uint16_t ADDR6:1;
      uint16_t ADDR7:1;
      uint16_t ADDR8:1;
      uint16_t ADDR9:1;
      uint16_t ADDR10:1;
      uint16_t ADDR11:1;
      uint16_t ADDR12:1;
      uint16_t ADDR13:1;
      uint16_t CS1:1;
      uint16_t CS2:1;
    };
  };
} PMADDRBITS;
extern volatile PMADDRBITS PMADDRbits __attribute__((__sfr__));


extern volatile uint16_t PMDOUT1 __attribute__((__sfr__));
__extension__ typedef struct tagPMDOUT1BITS {
  union {
    struct {
      uint16_t ADDR:14;
      uint16_t CS:2;
    };
    struct {
      uint16_t ADDR0:1;
      uint16_t ADDR1:1;
      uint16_t ADDR2:1;
      uint16_t ADDR3:1;
      uint16_t ADDR4:1;
      uint16_t ADDR5:1;
      uint16_t ADDR6:1;
      uint16_t ADDR7:1;
      uint16_t ADDR8:1;
      uint16_t ADDR9:1;
      uint16_t ADDR10:1;
      uint16_t ADDR11:1;
      uint16_t ADDR12:1;
      uint16_t ADDR13:1;
      uint16_t CS1:1;
      uint16_t CS2:1;
    };
  };
} PMDOUT1BITS;
extern volatile PMDOUT1BITS PMDOUT1bits __attribute__((__sfr__));


extern volatile uint16_t PMDOUT2 __attribute__((__sfr__));

extern volatile uint16_t PMDIN1 __attribute__((__sfr__));

extern volatile uint16_t PMDIN2 __attribute__((__sfr__));

extern volatile uint16_t PMAEN __attribute__((__sfr__));
typedef struct tagPMAENBITS {
  uint16_t PTEN0:1;
  uint16_t PTEN1:1;
  uint16_t PTEN2:1;
  uint16_t PTEN3:1;
  uint16_t PTEN4:1;
  uint16_t PTEN5:1;
  uint16_t PTEN6:1;
  uint16_t PTEN7:1;
  uint16_t PTEN8:1;
  uint16_t PTEN9:1;
  uint16_t PTEN10:1;
  uint16_t PTEN11:1;
  uint16_t PTEN12:1;
  uint16_t PTEN13:1;
  uint16_t PTEN14:1;
  uint16_t PTEN15:1;
} PMAENBITS;
extern volatile PMAENBITS PMAENbits __attribute__((__sfr__));


extern volatile uint16_t PMSTAT __attribute__((__sfr__));
typedef struct tagPMSTATBITS {
  uint16_t OB0E:1;
  uint16_t OB1E:1;
  uint16_t OB2E:1;
  uint16_t OB3E:1;
  uint16_t :2;
  uint16_t OBUF:1;
  uint16_t OBE:1;
  uint16_t IB0F:1;
  uint16_t IB1F:1;
  uint16_t IB2F:1;
  uint16_t IB3F:1;
  uint16_t :2;
  uint16_t IBOV:1;
  uint16_t IBF:1;
} PMSTATBITS;
extern volatile PMSTATBITS PMSTATbits __attribute__((__sfr__));


extern volatile uint16_t ALRMVAL __attribute__((__sfr__));

extern volatile uint16_t ALCFGRPT __attribute__((__sfr__));
__extension__ typedef struct tagALCFGRPTBITS {
  union {
    struct {
      uint16_t ARPT:8;
      uint16_t ALRMPTR:2;
      uint16_t AMASK:4;
      uint16_t CHIME:1;
      uint16_t ALRMEN:1;
    };
    struct {
      uint16_t ARPT0:1;
      uint16_t ARPT1:1;
      uint16_t ARPT2:1;
      uint16_t ARPT3:1;
      uint16_t ARPT4:1;
      uint16_t ARPT5:1;
      uint16_t ARPT6:1;
      uint16_t ARPT7:1;
      uint16_t ALRMPTR0:1;
      uint16_t ALRMPTR1:1;
      uint16_t AMASK0:1;
      uint16_t AMASK1:1;
      uint16_t AMASK2:1;
      uint16_t AMASK3:1;
    };
  };
} ALCFGRPTBITS;
extern volatile ALCFGRPTBITS ALCFGRPTbits __attribute__((__sfr__));


extern volatile uint16_t RTCVAL __attribute__((__sfr__));

extern volatile uint16_t RCFGCAL __attribute__((__sfr__));
__extension__ typedef struct tagRCFGCALBITS {
  union {
    struct {
      uint16_t CAL:8;
      uint16_t RTCPTR:2;
      uint16_t RTCOE:1;
      uint16_t HALFSEC:1;
      uint16_t RTCSYNC:1;
      uint16_t RTCWREN:1;
      uint16_t :1;
      uint16_t RTCEN:1;
    };
    struct {
      uint16_t CAL0:1;
      uint16_t CAL1:1;
      uint16_t CAL2:1;
      uint16_t CAL3:1;
      uint16_t CAL4:1;
      uint16_t CAL5:1;
      uint16_t CAL6:1;
      uint16_t CAL7:1;
      uint16_t RTCPTR0:1;
      uint16_t RTCPTR1:1;
    };
  };
} RCFGCALBITS;
extern volatile RCFGCALBITS RCFGCALbits __attribute__((__sfr__));


extern volatile uint16_t CMSTAT __attribute__((__sfr__));
typedef struct tagCMSTATBITS {
  uint16_t C1OUT:1;
  uint16_t C2OUT:1;
  uint16_t C3OUT:1;
  uint16_t C4OUT:1;
  uint16_t C5OUT:1;
  uint16_t C6OUT:1;
  uint16_t :2;
  uint16_t C1EVT:1;
  uint16_t C2EVT:1;
  uint16_t C3EVT:1;
  uint16_t C4EVT:1;
  uint16_t C5EVT:1;
  uint16_t C6EVT:1;
  uint16_t :1;
  uint16_t CMIDL:1;
} CMSTATBITS;
extern volatile CMSTATBITS CMSTATbits __attribute__((__sfr__));


extern volatile uint16_t CVRCON __attribute__((__sfr__));
__extension__ typedef struct tagCVRCONBITS {
  union {
    struct {
      uint16_t CVR:4;
      uint16_t CVRSS:1;
      uint16_t CVRR:1;
      uint16_t CVROE:1;
      uint16_t CVREN:1;
    };
    struct {
      uint16_t CVR0:1;
      uint16_t CVR1:1;
      uint16_t CVR2:1;
      uint16_t CVR3:1;
    };
  };
} CVRCONBITS;
extern volatile CVRCONBITS CVRCONbits __attribute__((__sfr__));


extern volatile uint16_t CM1CON __attribute__((__sfr__));
__extension__ typedef struct tagCM1CONBITS {
  union {
    struct {
      uint16_t CCH0:1;
      uint16_t CCH1:1;
      uint16_t :2;
      uint16_t CREF:1;
      uint16_t :1;
      uint16_t EVPOL0:1;
      uint16_t EVPOL1:1;
      uint16_t COUT:1;
      uint16_t CEVT:1;
      uint16_t :3;
      uint16_t CPOL:1;
      uint16_t COE:1;
      uint16_t CON:1;
    };
    struct {
      uint16_t CCH:2;
      uint16_t :4;
      uint16_t EVPOL:2;
      uint16_t :7;
      uint16_t CEN:1;
    };
  };
} CM1CONBITS;
extern volatile CM1CONBITS CM1CONbits __attribute__((__sfr__));


extern volatile uint16_t CM2CON __attribute__((__sfr__));
__extension__ typedef struct tagCM2CONBITS {
  union {
    struct {
      uint16_t CCH0:1;
      uint16_t CCH1:1;
      uint16_t :2;
      uint16_t CREF:1;
      uint16_t :1;
      uint16_t EVPOL0:1;
      uint16_t EVPOL1:1;
      uint16_t COUT:1;
      uint16_t CEVT:1;
      uint16_t :3;
      uint16_t CPOL:1;
      uint16_t COE:1;
      uint16_t CON:1;
    };
    struct {
      uint16_t CCH:2;
      uint16_t :4;
      uint16_t EVPOL:2;
      uint16_t :7;
      uint16_t CEN:1;
    };
  };
} CM2CONBITS;
extern volatile CM2CONBITS CM2CONbits __attribute__((__sfr__));


extern volatile uint16_t CM3CON __attribute__((__sfr__));
__extension__ typedef struct tagCM3CONBITS {
  union {
    struct {
      uint16_t CCH0:1;
      uint16_t CCH1:1;
      uint16_t :2;
      uint16_t CREF:1;
      uint16_t :1;
      uint16_t EVPOL0:1;
      uint16_t EVPOL1:1;
      uint16_t COUT:1;
      uint16_t CEVT:1;
      uint16_t :3;
      uint16_t CPOL:1;
      uint16_t COE:1;
      uint16_t CON:1;
    };
    struct {
      uint16_t CCH:2;
      uint16_t :4;
      uint16_t EVPOL:2;
      uint16_t :7;
      uint16_t CEN:1;
    };
  };
} CM3CONBITS;
extern volatile CM3CONBITS CM3CONbits __attribute__((__sfr__));


extern volatile uint16_t CRCCON __attribute__((__sfr__));
__extension__ typedef struct tagCRCCONBITS {
  union {
    struct {
      uint16_t PLEN:4;
      uint16_t CRCGO:1;
      uint16_t :1;
      uint16_t CRCMPT:1;
      uint16_t CRCFUL:1;
      uint16_t VWORD:5;
      uint16_t CSIDL:1;
    };
    struct {
      uint16_t PLEN0:1;
      uint16_t PLEN1:1;
      uint16_t PLEN2:1;
      uint16_t PLEN3:1;
      uint16_t :4;
      uint16_t VWORD0:1;
      uint16_t VWORD1:1;
      uint16_t VWORD2:1;
      uint16_t VWORD3:1;
      uint16_t VWORD4:1;
    };
  };
} CRCCONBITS;
extern volatile CRCCONBITS CRCCONbits __attribute__((__sfr__));


extern volatile uint16_t CRCXOR __attribute__((__sfr__));
typedef struct tagCRCXORBITS {
  uint16_t :1;
  uint16_t X1:1;
  uint16_t X2:1;
  uint16_t X3:1;
  uint16_t X4:1;
  uint16_t X5:1;
  uint16_t X6:1;
  uint16_t X7:1;
  uint16_t X8:1;
  uint16_t X9:1;
  uint16_t X10:1;
  uint16_t X11:1;
  uint16_t X12:1;
  uint16_t X13:1;
  uint16_t X14:1;
  uint16_t X15:1;
} CRCXORBITS;
extern volatile CRCXORBITS CRCXORbits __attribute__((__sfr__));


extern volatile uint16_t CRCDAT __attribute__((__sfr__));

extern volatile uint16_t CRCWDAT __attribute__((__sfr__));

extern volatile uint16_t RPINR0 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR0BITS {
  union {
    struct {
      uint16_t :8;
      uint16_t INT1R:6;
    };
    struct {
      uint16_t :8;
      uint16_t INT1R0:1;
      uint16_t INT1R1:1;
      uint16_t INT1R2:1;
      uint16_t INT1R3:1;
      uint16_t INT1R4:1;
      uint16_t INT1R5:1;
    };
  };
} RPINR0BITS;
extern volatile RPINR0BITS RPINR0bits __attribute__((__sfr__));


extern volatile uint16_t RPINR1 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR1BITS {
  union {
    struct {
      uint16_t INT2R:6;
      uint16_t :2;
      uint16_t INT3R:6;
    };
    struct {
      uint16_t INT2R0:1;
      uint16_t INT2R1:1;
      uint16_t INT2R2:1;
      uint16_t INT2R3:1;
      uint16_t INT2R4:1;
      uint16_t INT2R5:1;
      uint16_t :2;
      uint16_t INT3R0:1;
      uint16_t INT3R1:1;
      uint16_t INT3R2:1;
      uint16_t INT3R3:1;
      uint16_t INT3R4:1;
      uint16_t INT3R5:1;
    };
  };
} RPINR1BITS;
extern volatile RPINR1BITS RPINR1bits __attribute__((__sfr__));


extern volatile uint16_t RPINR2 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR2BITS {
  union {
    struct {
      uint16_t INT4R:6;
      uint16_t :2;
      uint16_t T1CKR:6;
    };
    struct {
      uint16_t INT4R0:1;
      uint16_t INT4R1:1;
      uint16_t INT4R2:1;
      uint16_t INT4R3:1;
      uint16_t INT4R4:1;
      uint16_t INT4R5:1;
      uint16_t :2;
      uint16_t T1CKR0:1;
      uint16_t T1CKR1:1;
      uint16_t T1CKR2:1;
      uint16_t T1CKR3:1;
      uint16_t T1CKR4:1;
      uint16_t T1CKR5:1;
    };
  };
} RPINR2BITS;
extern volatile RPINR2BITS RPINR2bits __attribute__((__sfr__));


extern volatile uint16_t RPINR3 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR3BITS {
  union {
    struct {
      uint16_t T2CKR:6;
      uint16_t :2;
      uint16_t T3CKR:6;
    };
    struct {
      uint16_t T2CKR0:1;
      uint16_t T2CKR1:1;
      uint16_t T2CKR2:1;
      uint16_t T2CKR3:1;
      uint16_t T2CKR4:1;
      uint16_t T2CKR5:1;
      uint16_t :2;
      uint16_t T3CKR0:1;
      uint16_t T3CKR1:1;
      uint16_t T3CKR2:1;
      uint16_t T3CKR3:1;
      uint16_t T3CKR4:1;
      uint16_t T3CKR5:1;
    };
  };
} RPINR3BITS;
extern volatile RPINR3BITS RPINR3bits __attribute__((__sfr__));


extern volatile uint16_t RPINR4 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR4BITS {
  union {
    struct {
      uint16_t T4CKR:6;
      uint16_t :2;
      uint16_t T5CKR:6;
    };
    struct {
      uint16_t T4CKR0:1;
      uint16_t T4CKR1:1;
      uint16_t T4CKR2:1;
      uint16_t T4CKR3:1;
      uint16_t T4CKR4:1;
      uint16_t T4CKR5:1;
      uint16_t :2;
      uint16_t T5CKR0:1;
      uint16_t T5CKR1:1;
      uint16_t T5CKR2:1;
      uint16_t T5CKR3:1;
      uint16_t T5CKR4:1;
      uint16_t T5CKR5:1;
    };
  };
} RPINR4BITS;
extern volatile RPINR4BITS RPINR4bits __attribute__((__sfr__));


extern volatile uint16_t RPINR7 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR7BITS {
  union {
    struct {
      uint16_t IC1R:6;
      uint16_t :2;
      uint16_t IC2R:6;
    };
    struct {
      uint16_t IC1R0:1;
      uint16_t IC1R1:1;
      uint16_t IC1R2:1;
      uint16_t IC1R3:1;
      uint16_t IC1R4:1;
      uint16_t IC1R5:1;
      uint16_t :2;
      uint16_t IC2R0:1;
      uint16_t IC2R1:1;
      uint16_t IC2R2:1;
      uint16_t IC2R3:1;
      uint16_t IC2R4:1;
      uint16_t IC2R5:1;
    };
  };
} RPINR7BITS;
extern volatile RPINR7BITS RPINR7bits __attribute__((__sfr__));


extern volatile uint16_t RPINR8 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR8BITS {
  union {
    struct {
      uint16_t IC3R:6;
      uint16_t :2;
      uint16_t IC4R:6;
    };
    struct {
      uint16_t IC3R0:1;
      uint16_t IC3R1:1;
      uint16_t IC3R2:1;
      uint16_t IC3R3:1;
      uint16_t IC3R4:1;
      uint16_t IC3R5:1;
      uint16_t :2;
      uint16_t IC4R0:1;
      uint16_t IC4R1:1;
      uint16_t IC4R2:1;
      uint16_t IC4R3:1;
      uint16_t IC4R4:1;
      uint16_t IC4R5:1;
    };
  };
} RPINR8BITS;
extern volatile RPINR8BITS RPINR8bits __attribute__((__sfr__));


extern volatile uint16_t RPINR9 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR9BITS {
  union {
    struct {
      uint16_t IC5R:6;
      uint16_t :2;
      uint16_t IC6R:6;
    };
    struct {
      uint16_t IC5R0:1;
      uint16_t IC5R1:1;
      uint16_t IC5R2:1;
      uint16_t IC5R3:1;
      uint16_t IC5R4:1;
      uint16_t IC5R5:1;
      uint16_t :2;
      uint16_t IC6R0:1;
      uint16_t IC6R1:1;
      uint16_t IC6R2:1;
      uint16_t IC6R3:1;
      uint16_t IC6R4:1;
      uint16_t IC6R5:1;
    };
  };
} RPINR9BITS;
extern volatile RPINR9BITS RPINR9bits __attribute__((__sfr__));


extern volatile uint16_t RPINR10 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR10BITS {
  union {
    struct {
      uint16_t IC7R:6;
      uint16_t :2;
      uint16_t IC8R:6;
    };
    struct {
      uint16_t IC7R0:1;
      uint16_t IC7R1:1;
      uint16_t IC7R2:1;
      uint16_t IC7R3:1;
      uint16_t IC7R4:1;
      uint16_t IC7R5:1;
      uint16_t :2;
      uint16_t IC8R0:1;
      uint16_t IC8R1:1;
      uint16_t IC8R2:1;
      uint16_t IC8R3:1;
      uint16_t IC8R4:1;
      uint16_t IC8R5:1;
    };
  };
} RPINR10BITS;
extern volatile RPINR10BITS RPINR10bits __attribute__((__sfr__));


extern volatile uint16_t RPINR11 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR11BITS {
  union {
    struct {
      uint16_t OCFAR:6;
      uint16_t :2;
      uint16_t OCFBR:6;
    };
    struct {
      uint16_t OCFAR0:1;
      uint16_t OCFAR1:1;
      uint16_t OCFAR2:1;
      uint16_t OCFAR3:1;
      uint16_t OCFAR4:1;
      uint16_t OCFAR5:1;
      uint16_t :2;
      uint16_t OCFBR0:1;
      uint16_t OCFBR1:1;
      uint16_t OCFBR2:1;
      uint16_t OCFBR3:1;
      uint16_t OCFBR4:1;
      uint16_t OCFBR5:1;
    };
  };
} RPINR11BITS;
extern volatile RPINR11BITS RPINR11bits __attribute__((__sfr__));


extern volatile uint16_t RPINR15 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR15BITS {
  union {
    struct {
      uint16_t :8;
      uint16_t IC9R:6;
    };
    struct {
      uint16_t :8;
      uint16_t IC9R0:1;
      uint16_t IC9R1:1;
      uint16_t IC9R2:1;
      uint16_t IC9R3:1;
      uint16_t IC9R4:1;
      uint16_t IC9R5:1;
    };
  };
} RPINR15BITS;
extern volatile RPINR15BITS RPINR15bits __attribute__((__sfr__));


extern volatile uint16_t RPINR17 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR17BITS {
  union {
    struct {
      uint16_t :8;
      uint16_t U3RXR:6;
    };
    struct {
      uint16_t :8;
      uint16_t U3RXR0:1;
      uint16_t U3RXR1:1;
      uint16_t U3RXR2:1;
      uint16_t U3RXR3:1;
      uint16_t U3RXR4:1;
      uint16_t U3RXR5:1;
    };
  };
} RPINR17BITS;
extern volatile RPINR17BITS RPINR17bits __attribute__((__sfr__));


extern volatile uint16_t RPINR18 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR18BITS {
  union {
    struct {
      uint16_t U1RXR:6;
      uint16_t :2;
      uint16_t U1CTSR:6;
    };
    struct {
      uint16_t U1RXR0:1;
      uint16_t U1RXR1:1;
      uint16_t U1RXR2:1;
      uint16_t U1RXR3:1;
      uint16_t U1RXR4:1;
      uint16_t U1RXR5:1;
      uint16_t :2;
      uint16_t U1CTSR0:1;
      uint16_t U1CTSR1:1;
      uint16_t U1CTSR2:1;
      uint16_t U1CTSR3:1;
      uint16_t U1CTSR4:1;
      uint16_t U1CTSR5:1;
    };
  };
} RPINR18BITS;
extern volatile RPINR18BITS RPINR18bits __attribute__((__sfr__));


extern volatile uint16_t RPINR19 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR19BITS {
  union {
    struct {
      uint16_t U2RXR:6;
      uint16_t :2;
      uint16_t U2CTSR:6;
    };
    struct {
      uint16_t U2RXR0:1;
      uint16_t U2RXR1:1;
      uint16_t U2RXR2:1;
      uint16_t U2RXR3:1;
      uint16_t U2RXR4:1;
      uint16_t U2RXR5:1;
      uint16_t :2;
      uint16_t U2CTSR0:1;
      uint16_t U2CTSR1:1;
      uint16_t U2CTSR2:1;
      uint16_t U2CTSR3:1;
      uint16_t U2CTSR4:1;
      uint16_t U2CTSR5:1;
    };
  };
} RPINR19BITS;
extern volatile RPINR19BITS RPINR19bits __attribute__((__sfr__));


extern volatile uint16_t RPINR20 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR20BITS {
  union {
    struct {
      uint16_t SDI1R:6;
      uint16_t :2;
      uint16_t SCK1R:6;
    };
    struct {
      uint16_t SDI1R0:1;
      uint16_t SDI1R1:1;
      uint16_t SDI1R2:1;
      uint16_t SDI1R3:1;
      uint16_t SDI1R4:1;
      uint16_t SDI1R5:1;
      uint16_t :2;
      uint16_t SCK1R0:1;
      uint16_t SCK1R1:1;
      uint16_t SCK1R2:1;
      uint16_t SCK1R3:1;
      uint16_t SCK1R4:1;
      uint16_t SCK1R5:1;
    };
  };
} RPINR20BITS;
extern volatile RPINR20BITS RPINR20bits __attribute__((__sfr__));


extern volatile uint16_t RPINR21 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR21BITS {
  union {
    struct {
      uint16_t SS1R:6;
      uint16_t :2;
      uint16_t U3CTSR:6;
    };
    struct {
      uint16_t SS1R0:1;
      uint16_t SS1R1:1;
      uint16_t SS1R2:1;
      uint16_t SS1R3:1;
      uint16_t SS1R4:1;
      uint16_t SS1R5:1;
      uint16_t :2;
      uint16_t U3CTSR0:1;
      uint16_t U3CTSR1:1;
      uint16_t U3CTSR2:1;
      uint16_t U3CTSR3:1;
      uint16_t U3CTSR4:1;
      uint16_t U3CTSR5:1;
    };
  };
} RPINR21BITS;
extern volatile RPINR21BITS RPINR21bits __attribute__((__sfr__));


extern volatile uint16_t RPINR22 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR22BITS {
  union {
    struct {
      uint16_t SDI2R:6;
      uint16_t :2;
      uint16_t SCK2R:6;
    };
    struct {
      uint16_t SDI2R0:1;
      uint16_t SDI2R1:1;
      uint16_t SDI2R2:1;
      uint16_t SDI2R3:1;
      uint16_t SDI2R4:1;
      uint16_t SDI2R5:1;
      uint16_t :2;
      uint16_t SCK2R0:1;
      uint16_t SCK2R1:1;
      uint16_t SCK2R2:1;
      uint16_t SCK2R3:1;
      uint16_t SCK2R4:1;
      uint16_t SCK2R5:1;
    };
  };
} RPINR22BITS;
extern volatile RPINR22BITS RPINR22bits __attribute__((__sfr__));


extern volatile uint16_t RPINR23 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR23BITS {
  union {
    struct {
      uint16_t SS2R:6;
    };
    struct {
      uint16_t SS2R0:1;
      uint16_t SS2R1:1;
      uint16_t SS2R2:1;
      uint16_t SS2R3:1;
      uint16_t SS2R4:1;
      uint16_t SS2R5:1;
    };
  };
} RPINR23BITS;
extern volatile RPINR23BITS RPINR23bits __attribute__((__sfr__));


extern volatile uint16_t RPINR27 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR27BITS {
  union {
    struct {
      uint16_t U4RXR:6;
      uint16_t :2;
      uint16_t U4CTSR:6;
    };
    struct {
      uint16_t U4RXR0:1;
      uint16_t U4RXR1:1;
      uint16_t U4RXR2:1;
      uint16_t U4RXR3:1;
      uint16_t U4RXR4:1;
      uint16_t U4RXR5:1;
      uint16_t :2;
      uint16_t U4CTSR0:1;
      uint16_t U4CTSR1:1;
      uint16_t U4CTSR2:1;
      uint16_t U4CTSR3:1;
      uint16_t U4CTSR4:1;
      uint16_t U4CTSR5:1;
    };
  };
} RPINR27BITS;
extern volatile RPINR27BITS RPINR27bits __attribute__((__sfr__));


extern volatile uint16_t RPINR28 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR28BITS {
  union {
    struct {
      uint16_t SDI3R:6;
      uint16_t :2;
      uint16_t SCK3R:6;
    };
    struct {
      uint16_t SDI3R0:1;
      uint16_t SDI3R1:1;
      uint16_t SDI3R2:1;
      uint16_t SDI3R3:1;
      uint16_t SDI3R4:1;
      uint16_t SDI3R5:1;
      uint16_t :2;
      uint16_t SCK3R0:1;
      uint16_t SCK3R1:1;
      uint16_t SCK3R2:1;
      uint16_t SCK3R3:1;
      uint16_t SCK3R4:1;
      uint16_t SCK3R5:1;
    };
  };
} RPINR28BITS;
extern volatile RPINR28BITS RPINR28bits __attribute__((__sfr__));


extern volatile uint16_t RPINR29 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR29BITS {
  union {
    struct {
      uint16_t SS3R:6;
    };
    struct {
      uint16_t SS3R0:1;
      uint16_t SS3R1:1;
      uint16_t SS3R2:1;
      uint16_t SS3R3:1;
      uint16_t SS3R4:1;
      uint16_t SS3R5:1;
    };
  };
} RPINR29BITS;
extern volatile RPINR29BITS RPINR29bits __attribute__((__sfr__));


extern volatile uint16_t RPOR0 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR0BITS {
  union {
    struct {
      uint16_t RP0R:6;
      uint16_t :2;
      uint16_t RP1R:6;
    };
    struct {
      uint16_t RP0R0:1;
      uint16_t RP0R1:1;
      uint16_t RP0R2:1;
      uint16_t RP0R3:1;
      uint16_t RP0R4:1;
      uint16_t RP0R5:1;
      uint16_t :2;
      uint16_t RP1R0:1;
      uint16_t RP1R1:1;
      uint16_t RP1R2:1;
      uint16_t RP1R3:1;
      uint16_t RP1R4:1;
      uint16_t RP1R5:1;
    };
  };
} RPOR0BITS;
extern volatile RPOR0BITS RPOR0bits __attribute__((__sfr__));


extern volatile uint16_t RPOR1 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR1BITS {
  union {
    struct {
      uint16_t RP2R:6;
      uint16_t :2;
      uint16_t RP3R:6;
    };
    struct {
      uint16_t RP2R0:1;
      uint16_t RP2R1:1;
      uint16_t RP2R2:1;
      uint16_t RP2R3:1;
      uint16_t RP2R4:1;
      uint16_t RP2R5:1;
      uint16_t :2;
      uint16_t RP3R0:1;
      uint16_t RP3R1:1;
      uint16_t RP3R2:1;
      uint16_t RP3R3:1;
      uint16_t RP3R4:1;
      uint16_t RP3R5:1;
    };
  };
} RPOR1BITS;
extern volatile RPOR1BITS RPOR1bits __attribute__((__sfr__));


extern volatile uint16_t RPOR2 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR2BITS {
  union {
    struct {
      uint16_t RP4R:6;
    };
    struct {
      uint16_t RP4R0:1;
      uint16_t RP4R1:1;
      uint16_t RP4R2:1;
      uint16_t RP4R3:1;
      uint16_t RP4R4:1;
      uint16_t RP4R5:1;
    };
  };
} RPOR2BITS;
extern volatile RPOR2BITS RPOR2bits __attribute__((__sfr__));


extern volatile uint16_t RPOR3 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR3BITS {
  union {
    struct {
      uint16_t RP6R:6;
      uint16_t :2;
      uint16_t RP7R:6;
    };
    struct {
      uint16_t RP6R0:1;
      uint16_t RP6R1:1;
      uint16_t RP6R2:1;
      uint16_t RP6R3:1;
      uint16_t RP6R4:1;
      uint16_t RP6R5:1;
      uint16_t :2;
      uint16_t RP7R0:1;
      uint16_t RP7R1:1;
      uint16_t RP7R2:1;
      uint16_t RP7R3:1;
      uint16_t RP7R4:1;
      uint16_t RP7R5:1;
    };
  };
} RPOR3BITS;
extern volatile RPOR3BITS RPOR3bits __attribute__((__sfr__));


extern volatile uint16_t RPOR4 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR4BITS {
  union {
    struct {
      uint16_t RP8R:6;
      uint16_t :2;
      uint16_t RP9R:6;
    };
    struct {
      uint16_t RP8R0:1;
      uint16_t RP8R1:1;
      uint16_t RP8R2:1;
      uint16_t RP8R3:1;
      uint16_t RP8R4:1;
      uint16_t RP8R5:1;
      uint16_t :2;
      uint16_t RP9R0:1;
      uint16_t RP9R1:1;
      uint16_t RP9R2:1;
      uint16_t RP9R3:1;
      uint16_t RP9R4:1;
      uint16_t RP9R5:1;
    };
  };
} RPOR4BITS;
extern volatile RPOR4BITS RPOR4bits __attribute__((__sfr__));


extern volatile uint16_t RPOR5 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR5BITS {
  union {
    struct {
      uint16_t RP10R:6;
      uint16_t :2;
      uint16_t RP11R:6;
    };
    struct {
      uint16_t RP10R0:1;
      uint16_t RP10R1:1;
      uint16_t RP10R2:1;
      uint16_t RP10R3:1;
      uint16_t RP10R4:1;
      uint16_t RP10R5:1;
      uint16_t :2;
      uint16_t RP11R0:1;
      uint16_t RP11R1:1;
      uint16_t RP11R2:1;
      uint16_t RP11R3:1;
      uint16_t RP11R4:1;
      uint16_t RP11R5:1;
    };
  };
} RPOR5BITS;
extern volatile RPOR5BITS RPOR5bits __attribute__((__sfr__));


extern volatile uint16_t RPOR6 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR6BITS {
  union {
    struct {
      uint16_t RP12R:6;
      uint16_t :2;
      uint16_t RP13R:6;
    };
    struct {
      uint16_t RP12R0:1;
      uint16_t RP12R1:1;
      uint16_t RP12R2:1;
      uint16_t RP12R3:1;
      uint16_t RP12R4:1;
      uint16_t RP12R5:1;
      uint16_t :2;
      uint16_t RP13R0:1;
      uint16_t RP13R1:1;
      uint16_t RP13R2:1;
      uint16_t RP13R3:1;
      uint16_t RP13R4:1;
      uint16_t RP13R5:1;
    };
  };
} RPOR6BITS;
extern volatile RPOR6BITS RPOR6bits __attribute__((__sfr__));


extern volatile uint16_t RPOR7 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR7BITS {
  union {
    struct {
      uint16_t RP14R:6;
    };
    struct {
      uint16_t RP14R0:1;
      uint16_t RP14R1:1;
      uint16_t RP14R2:1;
      uint16_t RP14R3:1;
      uint16_t RP14R4:1;
      uint16_t RP14R5:1;
    };
  };
} RPOR7BITS;
extern volatile RPOR7BITS RPOR7bits __attribute__((__sfr__));


extern volatile uint16_t RPOR8 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR8BITS {
  union {
    struct {
      uint16_t RP16R:6;
      uint16_t :2;
      uint16_t RP17R:6;
    };
    struct {
      uint16_t RP16R0:1;
      uint16_t RP16R1:1;
      uint16_t RP16R2:1;
      uint16_t RP16R3:1;
      uint16_t RP16R4:1;
      uint16_t RP16R5:1;
      uint16_t :2;
      uint16_t RP17R0:1;
      uint16_t RP17R1:1;
      uint16_t RP17R2:1;
      uint16_t RP17R3:1;
      uint16_t RP17R4:1;
      uint16_t RP17R5:1;
    };
  };
} RPOR8BITS;
extern volatile RPOR8BITS RPOR8bits __attribute__((__sfr__));


extern volatile uint16_t RPOR9 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR9BITS {
  union {
    struct {
      uint16_t RP18R:6;
      uint16_t :2;
      uint16_t RP19R:6;
    };
    struct {
      uint16_t RP18R0:1;
      uint16_t RP18R1:1;
      uint16_t RP18R2:1;
      uint16_t RP18R3:1;
      uint16_t RP18R4:1;
      uint16_t RP18R5:1;
      uint16_t :2;
      uint16_t RP19R0:1;
      uint16_t RP19R1:1;
      uint16_t RP19R2:1;
      uint16_t RP19R3:1;
      uint16_t RP19R4:1;
      uint16_t RP19R5:1;
    };
  };
} RPOR9BITS;
extern volatile RPOR9BITS RPOR9bits __attribute__((__sfr__));


extern volatile uint16_t RPOR10 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR10BITS {
  union {
    struct {
      uint16_t RP20R:6;
      uint16_t :2;
      uint16_t RP21R:6;
    };
    struct {
      uint16_t RP20R0:1;
      uint16_t RP20R1:1;
      uint16_t RP20R2:1;
      uint16_t RP20R3:1;
      uint16_t RP20R4:1;
      uint16_t RP20R5:1;
      uint16_t :2;
      uint16_t RP21R0:1;
      uint16_t RP21R1:1;
      uint16_t RP21R2:1;
      uint16_t RP21R3:1;
      uint16_t RP21R4:1;
      uint16_t RP21R5:1;
    };
  };
} RPOR10BITS;
extern volatile RPOR10BITS RPOR10bits __attribute__((__sfr__));


extern volatile uint16_t RPOR11 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR11BITS {
  union {
    struct {
      uint16_t RP22R:6;
      uint16_t :2;
      uint16_t RP23R:6;
    };
    struct {
      uint16_t RP22R0:1;
      uint16_t RP22R1:1;
      uint16_t RP22R2:1;
      uint16_t RP22R3:1;
      uint16_t RP22R4:1;
      uint16_t RP22R5:1;
      uint16_t :2;
      uint16_t RP23R0:1;
      uint16_t RP23R1:1;
      uint16_t RP23R2:1;
      uint16_t RP23R3:1;
      uint16_t RP23R4:1;
      uint16_t RP23R5:1;
    };
  };
} RPOR11BITS;
extern volatile RPOR11BITS RPOR11bits __attribute__((__sfr__));


extern volatile uint16_t RPOR12 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR12BITS {
  union {
    struct {
      uint16_t RP24R:6;
      uint16_t :2;
      uint16_t RP25R:6;
    };
    struct {
      uint16_t RP24R0:1;
      uint16_t RP24R1:1;
      uint16_t RP24R2:1;
      uint16_t RP24R3:1;
      uint16_t RP24R4:1;
      uint16_t RP24R5:1;
      uint16_t :2;
      uint16_t RP25R0:1;
      uint16_t RP25R1:1;
      uint16_t RP25R2:1;
      uint16_t RP25R3:1;
      uint16_t RP25R4:1;
      uint16_t RP25R5:1;
    };
  };
} RPOR12BITS;
extern volatile RPOR12BITS RPOR12bits __attribute__((__sfr__));


extern volatile uint16_t RPOR13 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR13BITS {
  union {
    struct {
      uint16_t RP26R:6;
      uint16_t :2;
      uint16_t RP27R:6;
    };
    struct {
      uint16_t RP26R0:1;
      uint16_t RP26R1:1;
      uint16_t RP26R2:1;
      uint16_t RP26R3:1;
      uint16_t RP26R4:1;
      uint16_t RP26R5:1;
      uint16_t :2;
      uint16_t RP27R0:1;
      uint16_t RP27R1:1;
      uint16_t RP27R2:1;
      uint16_t RP27R3:1;
      uint16_t RP27R4:1;
      uint16_t RP27R5:1;
    };
  };
} RPOR13BITS;
extern volatile RPOR13BITS RPOR13bits __attribute__((__sfr__));


extern volatile uint16_t RPOR14 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR14BITS {
  union {
    struct {
      uint16_t RP28R:6;
      uint16_t :2;
      uint16_t RP29R:6;
    };
    struct {
      uint16_t RP28R0:1;
      uint16_t RP28R1:1;
      uint16_t RP28R2:1;
      uint16_t RP28R3:1;
      uint16_t RP28R4:1;
      uint16_t RP28R5:1;
      uint16_t :2;
      uint16_t RP29R0:1;
      uint16_t RP29R1:1;
      uint16_t RP29R2:1;
      uint16_t RP29R3:1;
      uint16_t RP29R4:1;
      uint16_t RP29R5:1;
    };
  };
} RPOR14BITS;
extern volatile RPOR14BITS RPOR14bits __attribute__((__sfr__));


extern volatile uint16_t RPOR15 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR15BITS {
  union {
    struct {
      uint16_t RP30R:6;
    };
    struct {
      uint16_t RP30R0:1;
      uint16_t RP30R1:1;
      uint16_t RP30R2:1;
      uint16_t RP30R3:1;
      uint16_t RP30R4:1;
      uint16_t RP30R5:1;
    };
  };
} RPOR15BITS;
extern volatile RPOR15BITS RPOR15bits __attribute__((__sfr__));


extern volatile uint16_t RCON __attribute__((__sfr__));
__extension__ typedef struct tagRCONBITS {
  union {
    struct {
      uint16_t POR:1;
      uint16_t BOR:1;
      uint16_t IDLE:1;
      uint16_t SLEEP:1;
      uint16_t WDTO:1;
      uint16_t SWDTEN:1;
      uint16_t SWR:1;
      uint16_t EXTR:1;
      uint16_t VREGS:1;
      uint16_t CM:1;
      uint16_t :4;
      uint16_t IOPUWR:1;
      uint16_t TRAPR:1;
    };
    struct {
      uint16_t :8;
      uint16_t PMSLP:1;
    };
  };
} RCONBITS;
extern volatile RCONBITS RCONbits __attribute__((__sfr__));


extern volatile uint16_t OSCCON __attribute__((__sfr__));
__extension__ typedef struct tagOSCCONBITS {
  union {
    struct {
      uint16_t OSWEN:1;
      uint16_t SOSCEN:1;
      uint16_t POSCEN:1;
      uint16_t CF:1;
      uint16_t :1;
      uint16_t LOCK:1;
      uint16_t IOLOCK:1;
      uint16_t CLKLOCK:1;
      uint16_t NOSC:3;
      uint16_t :1;
      uint16_t COSC:3;
    };
    struct {
      uint16_t :1;
      uint16_t LPOSCEN:1;
      uint16_t :6;
      uint16_t NOSC0:1;
      uint16_t NOSC1:1;
      uint16_t NOSC2:1;
      uint16_t :1;
      uint16_t COSC0:1;
      uint16_t COSC1:1;
      uint16_t COSC2:1;
    };
  };
} OSCCONBITS;
extern volatile OSCCONBITS OSCCONbits __attribute__((__sfr__));


extern volatile uint8_t OSCCONL __attribute__((__sfr__));

extern volatile uint8_t OSCCONH __attribute__((__sfr__));

extern volatile uint16_t CLKDIV __attribute__((__sfr__));
__extension__ typedef struct tagCLKDIVBITS {
  union {
    struct {
      uint16_t :6;
      uint16_t CPDIV:2;
      uint16_t RCDIV:3;
      uint16_t DOZEN:1;
      uint16_t DOZE:3;
      uint16_t ROI:1;
    };
    struct {
      uint16_t :6;
      uint16_t CPDIV0:1;
      uint16_t CPDIV1:1;
      uint16_t RCDIV0:1;
      uint16_t RCDIV1:1;
      uint16_t RCDIV2:1;
      uint16_t :1;
      uint16_t DOZE0:1;
      uint16_t DOZE1:1;
      uint16_t DOZE2:1;
    };
    struct {
      uint16_t :6;
      uint16_t USBDOZE0:1;
      uint16_t USBDOZE1:1;
    };
    struct {
      uint16_t :6;
      uint16_t USBDOZE:2;
    };
  };
} CLKDIVBITS;
extern volatile CLKDIVBITS CLKDIVbits __attribute__((__sfr__));


extern volatile uint16_t OSCTUN __attribute__((__sfr__));
__extension__ typedef struct tagOSCTUNBITS {
  union {
    struct {
      uint16_t TUN:6;
    };
    struct {
      uint16_t TUN0:1;
      uint16_t TUN1:1;
      uint16_t TUN2:1;
      uint16_t TUN3:1;
      uint16_t TUN4:1;
      uint16_t TUN5:1;
    };
  };
} OSCTUNBITS;
extern volatile OSCTUNBITS OSCTUNbits __attribute__((__sfr__));


extern volatile uint16_t REFOCON __attribute__((__sfr__));
__extension__ typedef struct tagREFOCONBITS {
  union {
    struct {
      uint16_t :8;
      uint16_t RODIV:4;
      uint16_t ROSEL:1;
      uint16_t ROSSLP:1;
    };
    struct {
      uint16_t :8;
      uint16_t RODIV0:1;
      uint16_t RODIV1:1;
      uint16_t RODIV2:1;
      uint16_t RODIV3:1;
      uint16_t :3;
      uint16_t ROON:1;
    };
  };
} REFOCONBITS;
extern volatile REFOCONBITS REFOCONbits __attribute__((__sfr__));


extern volatile uint16_t NVMCON __attribute__((__sfr__));
__extension__ typedef struct tagNVMCONBITS {
  union {
    struct {
      uint16_t NVMOP:4;
      uint16_t :2;
      uint16_t ERASE:1;
      uint16_t :6;
      uint16_t WRERR:1;
      uint16_t WREN:1;
      uint16_t WR:1;
    };
    struct {
      uint16_t NVMOP0:1;
      uint16_t NVMOP1:1;
      uint16_t NVMOP2:1;
      uint16_t NVMOP3:1;
    };
    struct {
      uint16_t PROGOP0:1;
      uint16_t PROGOP1:1;
      uint16_t PROGOP2:1;
      uint16_t PROGOP3:1;
    };
    struct {
      uint16_t PROGOP:4;
    };
  };
} NVMCONBITS;
extern volatile NVMCONBITS NVMCONbits __attribute__((__sfr__));


extern volatile uint16_t NVMKEY __attribute__((__sfr__));

extern volatile uint16_t PMD1 __attribute__((__sfr__));
typedef struct tagPMD1BITS {
  uint16_t ADC1MD:1;
  uint16_t :2;
  uint16_t SPI1MD:1;
  uint16_t SPI2MD:1;
  uint16_t U1MD:1;
  uint16_t U2MD:1;
  uint16_t I2C1MD:1;
  uint16_t :3;
  uint16_t T1MD:1;
  uint16_t T2MD:1;
  uint16_t T3MD:1;
  uint16_t T4MD:1;
  uint16_t T5MD:1;
} PMD1BITS;
extern volatile PMD1BITS PMD1bits __attribute__((__sfr__));


extern volatile uint16_t PMD2 __attribute__((__sfr__));
typedef struct tagPMD2BITS {
  uint16_t OC1MD:1;
  uint16_t OC2MD:1;
  uint16_t OC3MD:1;
  uint16_t OC4MD:1;
  uint16_t OC5MD:1;
  uint16_t OC6MD:1;
  uint16_t OC7MD:1;
  uint16_t OC8MD:1;
  uint16_t IC1MD:1;
  uint16_t IC2MD:1;
  uint16_t IC3MD:1;
  uint16_t IC4MD:1;
  uint16_t IC5MD:1;
  uint16_t IC6MD:1;
  uint16_t IC7MD:1;
  uint16_t IC8MD:1;
} PMD2BITS;
extern volatile PMD2BITS PMD2bits __attribute__((__sfr__));


extern volatile uint16_t PMD3 __attribute__((__sfr__));
__extension__ typedef struct tagPMD3BITS {
  union {
    struct {
      uint16_t :1;
      uint16_t I2C2MD:1;
      uint16_t I2C3MD:1;
      uint16_t U3MD:1;
      uint16_t :3;
      uint16_t CRCMD:1;
      uint16_t PMPMD:1;
      uint16_t RTCCMD:1;
      uint16_t CMPMD:1;
    };
    struct {
      uint16_t :7;
      uint16_t CRCPMD:1;
    };
  };
} PMD3BITS;
extern volatile PMD3BITS PMD3bits __attribute__((__sfr__));


extern volatile uint16_t PMD4 __attribute__((__sfr__));
typedef struct tagPMD4BITS {
  uint16_t USB1MD:1;
  uint16_t LVDMD:1;
  uint16_t CTMUMD:1;
  uint16_t REFOMD:1;
  uint16_t :1;
  uint16_t U4MD:1;
  uint16_t UPWMMD:1;
} PMD4BITS;
extern volatile PMD4BITS PMD4bits __attribute__((__sfr__));


extern volatile uint16_t PMD5 __attribute__((__sfr__));
typedef struct tagPMD5BITS {
  uint16_t OC9MD:1;
  uint16_t :7;
  uint16_t IC9MD:1;
} PMD5BITS;
extern volatile PMD5BITS PMD5bits __attribute__((__sfr__));


extern volatile uint16_t PMD6 __attribute__((__sfr__));
typedef struct tagPMD6BITS {
  uint16_t SPI3MD:1;
} PMD6BITS;
extern volatile PMD6BITS PMD6bits __attribute__((__sfr__));
# 21236 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h" 3 4
extern __attribute__((space(prog))) __prog__ uint16_t _CONFIG3;
# 21620 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h" 3 4
extern __attribute__((space(prog))) __prog__ uint16_t _CONFIG2;
# 21725 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h" 3 4
extern __attribute__((space(prog))) __prog__ uint16_t _CONFIG1;
# 219 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\generic\\h/xc.h" 2 3 4
# 38 "../base.h" 2


# 1 "../hardware.h" 1
# 26 "../hardware.h"
# 1 "../dp_usb/usb_stack_globals.h" 1





typedef unsigned char BYTE;


# 1 "../dp_usb/../prj_usb_config.h" 1
# 10 "../dp_usb/usb_stack_globals.h" 2
# 1 "../dp_usb/usb_stack.h" 1
# 19 "../dp_usb/usb_stack.h"
# 1 "../dp_usb/../dp_usb/picusb.h" 1
# 320 "../dp_usb/../dp_usb/picusb.h"
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24Fxxxx.h" 1 3 4
# 210 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24Fxxxx.h" 3 4
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h" 1 3 4
# 41 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h" 3 4
# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 42 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h" 2 3 4
# 211 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24Fxxxx.h" 2 3 4
# 321 "../dp_usb/../dp_usb/picusb.h" 2
# 343 "../dp_usb/../dp_usb/picusb.h"
typedef unsigned int usb_uep_t;
# 521 "../dp_usb/../dp_usb/picusb.h"
typedef struct BDENTRY {
    unsigned char BDCNT;

    volatile unsigned char BDSTAT;
    unsigned char *BDADDR;
} BDentry;
# 20 "../dp_usb/usb_stack.h" 2
# 89 "../dp_usb/usb_stack.h"
typedef enum
{
DETACHED_STATE = 0x00,
ATTACHED_STATE = 0x01,
POWERED_STATE = 0x02,
DEFAULT_STATE = 0x04,
ADR_PENDING_STATE = 0x08,
ADDRESS_STATE = 0x10,
CONFIGURED_STATE = 0x20
} USB_DEVICE_STATE;




typedef void(*usb_handler_t)(void);

typedef struct USB_EP_TYPE {



    usb_handler_t in_handler, out_handler;
} usb_ep_t;
# 124 "../dp_usb/usb_stack.h"
extern BDentry usb_bdt[];

typedef struct USB_DEVICE_REQUEST {
    BYTE bmRequestType;
    BYTE bRequest;
    unsigned int wValue;
    unsigned int wIndex;
    unsigned int wLength;
} usb_device_request;

extern BYTE trn_status;
extern BDentry *EP0_Outbdp, *EP0_Inbdp;

void usb_init( const BYTE *dev_descriptor,
        const BYTE *config_descriptor,
        const BYTE *string_descriptor, int num_string_descriptors);



void usb_start(void);
void usb_register_sof_handler(usb_handler_t handler);
void usb_register_class_setup_handler(usb_handler_t handler);
void usb_register_vendor_setup_handler(usb_handler_t handler);
void usb_set_in_handler(int ep, usb_handler_t handler);
void usb_set_out_handler(int ep, usb_handler_t handler);
void usb_handle_transaction(void);
void usb_handler(void);
void usb_RequestError(void);
void USBWakeFromSuspend(void);
void usb_suspend(void);
void usb_ack_dat1(int bdcnt);
void usb_handle_error(void);
void usb_handle_reset(void);
void usb_handle_setup(void);
void usb_handle_out(void);
void usb_handle_in(void);
void usb_handle_StandardDeviceRequest(BDentry*);
void usb_handle_StandardInterfaceRequest(BDentry*);
void usb_handle_StandardEndpointRequest(BDentry*);
void usb_RequestError(void);
void usb_set_address(void);
void usb_send_rom(void);
void ClearUSBtoDefault(void);
# 11 "../dp_usb/usb_stack_globals.h" 2
# 1 "../dp_usb/cdc.h" 1
# 18 "../dp_usb/cdc.h"
void cdc_setup(void);
void cdc_set_line_coding_data(void);
void cdc_set_line_coding_status(void);
void cdc_get_line_coding(void);
void cdc_set_control_line_state_status(void);
void user_configured_init(void);
void WaitInReady(void);
void WaitOutReady(void);
BYTE getInReady(void);
BYTE getOutReady(void);
BYTE getda_cdc(void);
BYTE putda_cdc(BYTE count);
void SendZLP(void);
BYTE getc_cdc(void);
void putc_cdc(BYTE c);
void CDC_Flush_In_Now(void);
void CDCFlushOnTimeout(void);
BYTE poll_getc_cdc(BYTE * c);
BYTE peek_getc_cdc(BYTE * c);
void initCDC(void);


struct _cdc_ControlLineState {
    int DTR : 1;
    int RTS : 1;
    int unused1 : 6;
    BYTE unused2;
};
# 12 "../dp_usb/usb_stack_globals.h" 2
# 27 "../hardware.h" 2
# 1 "../hardwarev4.h" 1
# 21 "../hardwarev4.h"
# 1 "../types.h" 1
# 22 "../types.h"
# 1 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 23 "../types.h" 2
# 22 "../hardwarev4.h" 2
# 180 "../hardwarev4.h"
static inline void bp_enable_usb_led(void) {
  TRISBbits.TRISB10 = 0;
  PORTBbits.RB10 = 1;
}

static inline void bp_disable_usb_led(void) {
  TRISBbits.TRISB10 = 0;
  PORTBbits.RB10 = 0;
}

static inline void bp_toggle_usb_led(void) {
  TRISBbits.TRISB10 = 0;
  PORTBbits.RB10 ^= 1;
}

static inline void bp_adc_pin_setup(void) {
  AD1PCFGbits.PCFG2 = 0;
  AD1PCFGbits.PCFG1 = 0;
  AD1PCFGbits.PCFG0 = 0;
  AD1PCFGbits.PCFG5 = 0;
  AD1PCFGbits.PCFG15 = 0;
}

static inline void bp_enable_3v3_pullup(void) {
  TRISFbits.TRISF5 = 1;
  PORTFbits.RF4 = 0;
  TRISFbits.TRISF4 = 0;
}

static inline void bp_disable_3v3_pullup(void) {
  TRISFbits.TRISF5 = 1;
  PORTFbits.RF4 = 0;
  TRISFbits.TRISF4 = 1;
}

static inline void bp_set_3v3_pullup_state(_Bool state) {
  if (state == 1) {
    bp_enable_3v3_pullup();
  } else {
    bp_disable_3v3_pullup();
  }
}

static inline void bp_enable_5v0_pullup(void) {
  TRISFbits.TRISF4 = 1;
  PORTFbits.RF5 = 0;
  TRISFbits.TRISF5 = 0;
}

static inline void bp_disable_5v0_pullup(void) {
  TRISFbits.TRISF4 = 1;
  TRISFbits.TRISF5 = 1;
}

static inline void bp_set_5v0_pullup_state(_Bool state) {
  if (state == 1) {
    bp_enable_5v0_pullup();
  } else {
    bp_disable_5v0_pullup();
  }
}
# 28 "../hardware.h" 2
# 1 "../onboard_eeprom.h" 1
# 30 "../onboard_eeprom.h"
void eeprom_initialize(void);






_Bool eeprom_test(void);
# 29 "../hardware.h" 2
# 72 "../hardware.h"
static inline void bp_enable_pullup(void) {
  TRISEbits.TRISE4 = 1;
  PORTEbits.RE4 = 0;
}

static inline void bp_disable_pullup(void) {
  PORTEbits.RE4 = 0;
  TRISEbits.TRISE4 = 0;
}

static inline void bp_set_pullup_state(_Bool state) {
  if (state == 1) {
    bp_enable_pullup();
  } else {
    bp_disable_pullup();
  }
}

static inline void bp_enable_voltage_regulator(void) {
  TRISBbits.TRISB9 = 0;
  PORTBbits.RB9 = 1;
}

static inline void bp_disable_voltage_regulator(void) {
  TRISBbits.TRISB9 = 0;
  PORTBbits.RB9 = 0;
}

static inline _Bool bp_get_voltage_regulator_state(void) {
  return PORTBbits.RB9;
}

static inline void bp_set_voltage_regulator_state(_Bool state) {
  if (state == 1) {
    bp_enable_voltage_regulator();
  } else {
    bp_disable_voltage_regulator();
  }
}






static inline void bp_enable_adc(void) { AD1CON1bits.ADON = 1; }

static inline void bp_disable_adc(void) { AD1CON1bits.ADON = 0; }

static inline void bp_set_adc_state(_Bool state) {
  if (state == 1) {
    bp_enable_adc();
  } else {
    bp_disable_adc();
  }
}

static inline void bp_enable_mode_led(void) {
  TRISBbits.TRISB8 = 0;
  PORTBbits.RB8 = 1;
}

static inline void bp_disable_mode_led(void) {
  TRISBbits.TRISB8 = 0;
  PORTBbits.RB8 = 0;
}

static inline void bp_set_mode_led_state(const _Bool state) {
  if (state == 1) {
    bp_enable_mode_led();
  } else {
    bp_disable_mode_led();
  }
}

static inline void bp_toggle_mode_led(void) {
  TRISBbits.TRISB8 = 0;
  PORTBbits.RB8 ^= 1;
}
# 41 "../base.h" 2
# 1 "../messages.h" 1
# 29 "../messages.h"
# 1 "../messages_v4.h" 1



void BPMSG1022_str(void);

void BPMSG1023_str(void);

void BPMSG1024_str(void);

void BPMSG1025_str(void);

void BPMSG1026_str(void);

void BPMSG1027_str(void);

void BPMSG1028_str(void);

void BPMSG1029_str(void);

void BPMSG1030_str(void);

void BPMSG1033_str(void);

void BPMSG1034_str(void);

void BPMSG1037_str(void);

void BPMSG1038_str(void);

void BPMSG1039_str(void);

void BPMSG1040_str(void);

void BPMSG1041_str(void);

void BPMSG1047_str(void);

void BPMSG1048_str(void);

void BPMSG1049_str(void);

void BPMSG1050_str(void);

void BPMSG1051_str(void);

void BPMSG1052_str(void);

void BPMSG1053_str(void);

void BPMSG1054_str(void);

void BPMSG1055_str(void);

void BPMSG1056_str(void);

void BPMSG1057_str(void);

void BPMSG1058_str(void);

void BPMSG1064_str(void);

void BPMSG1067_str(void);

void BPMSG1068_str(void);

void BPMSG1069_str(void);

void BPMSG1070_str(void);

void BPMSG1084_str(void);

void BPMSG1085_str(void);

void BPMSG1086_str(void);

void BPMSG1087_str(void);

void BPMSG1088_str(void);

void BPMSG1089_str(void);

void BPMSG1091_str(void);

void BPMSG1092_str(void);

void BPMSG1093_str(void);

void BPMSG1094_str(void);

void BPMSG1095_str(void);

void BPMSG1098_str(void);

void BPMSG1099_str(void);

void BPMSG1100_str(void);

void BPMSG1101_str(void);

void BPMSG1103_str(void);

void BPMSG1104_str(void);

void BPMSG1105_str(void);

void BPMSG1106_str(void);

void BPMSG1107_str(void);

void BPMSG1108_str(void);

void BPMSG1109_str(void);

void BPMSG1110_str(void);

void BPMSG1111_str(void);

void BPMSG1112_str(void);

void BPMSG1114_str(void);

void BPMSG1115_str(void);

void BPMSG1117_str(void);

void BPMSG1118_str(void);

void BPMSG1119_str(void);

void BPMSG1120_str(void);

void BPMSG1121_str(void);

void BPMSG1123_str(void);

void BPMSG1124_str(void);

void BPMSG1127_str(void);

void BPMSG1128_str(void);

void BPMSG1134_str(void);

void BPMSG1135_str(void);

void BPMSG1136_str(void);

void BPMSG1137_str(void);

void BPMSG1163_str(void);

void BPMSG1164_str(void);

void BPMSG1165_str(void);

void BPMSG1166_str(void);

void BPMSG1167_str(void);

void BPMSG1168_str(void);

void BPMSG1169_str(void);

void BPMSG1170_str(void);

void BPMSG1171_str(void);

void BPMSG1172_str(void);

void BPMSG1173_str(void);

void BPMSG1174_str(void);

void BPMSG1175_str(void);

void BPMSG1176_str(void);

void BPMSG1177_str(void);

void BPMSG1178_str(void);

void BPMSG1179_str(void);

void BPMSG1180_str(void);

void BPMSG1181_str(void);

void BPMSG1182_str(void);

void BPMSG1183_str(void);

void BPMSG1184_str(void);

void BPMSG1185_str(void);

void BPMSG1186_str(void);

void BPMSG1209_str(void);

void BPMSG1210_str(void);

void BPMSG1211_str(void);

void BPMSG1212_str(void);

void BPMSG1213_str(void);

void BPMSG1214_str(void);

void BPMSG1216_str(void);

void BPMSG1219_str(void);

void BPMSG1220_str(void);

void BPMSG1221_str(void);

void BPMSG1222_str(void);

void BPMSG1223_str(void);

void BPMSG1226_str(void);

void BPMSG1228_str(void);

void BPMSG1234_str(void);

void BPMSG1245_str(void);

void BPMSG1251_str(void);

void BPMSG1252_str(void);

void BPMSG1254_str(void);

void BPMSG1255_str(void);

void BPMSG1256_str(void);

void BPMSG1257_str(void);

void BPMSG1263_str(void);

void BPMSG1264_str(void);

void BPMSG1265_str(void);

void BPMSG1266_str(void);

void BPMSG1267_str(void);

void BPMSG1268_str(void);

void BPMSG1269_str(void);

void BPMSG1270_str(void);

void BPMSG1271_str(void);

void BPMSG1272_str(void);

void BPMSG1273_str(void);

void BPMSG1274_str(void);

void HLP1000_str(void);

void HLP1001_str(void);

void HLP1002_str(void);

void HLP1003_str(void);

void HLP1004_str(void);

void HLP1005_str(void);

void HLP1006_str(void);

void HLP1007_str(void);

void HLP1008_str(void);

void HLP1009_str(void);

void HLP1010_str(void);

void HLP1011_str(void);

void HLP1012_str(void);

void HLP1013_str(void);

void HLP1014_str(void);

void HLP1015_str(void);

void HLP1016_str(void);

void HLP1017_str(void);

void HLP1018_str(void);

void HLP1019_str(void);

void HLP1020_str(void);

void HLP1021_str(void);

void HLP1022_str(void);

void MSG_1WIRE_ADDRESS_MACRO_HEADER_str(void);

void MSG_1WIRE_ALARM_MACRO_NAME_str(void);

void MSG_1WIRE_BUS_RESET_str(void);

void MSG_1WIRE_LOOKUP_ID_HEADER_str(void);

void MSG_1WIRE_MACRO_LIST_str(void);

void MSG_1WIRE_MACRO_MENU_HEADER_str(void);

void MSG_1WIRE_MACRO_TABLE_HEADER_str(void);

void MSG_1WIRE_MACRO_TABLE_TRAILER_str(void);

void MSG_1WIRE_MATCH_ROM_MACRO_NAME_str(void);

void MSG_1WIRE_MODE_IDENTIFIER_str(void);

void MSG_1WIRE_NEXT_CLOCK_ALERT_str(void);

void MSG_1WIRE_NO_DEVICE_str(void);

void MSG_1WIRE_NO_DEVICE_DETECTED_str(void);

void MSG_1WIRE_PINS_STATE_str(void);

void MSG_1WIRE_READ_ROM_MACRO_NAME_str(void);

void MSG_1WIRE_SEARCH_MACRO_NAME_str(void);

void MSG_1WIRE_SKIP_ROM_MACRO_NAME_str(void);

void MSG_1WIRE_SPEED_PROMPT_str(void);

void MSG_ACK_str(void);

void MSG_ADC_VOLTAGE_PROBE_HEADER_str(void);

void MSG_ADC_VOLTMETER_MODE_str(void);

void MSG_ANY_KEY_TO_EXIT_PROMPT_str(void);

void MSG_BASE_CONVERTER_EQUAL_SIGN_str(void);

void MSG_BAUD_DETECTION_SELECTED_str(void);

void MSG_BBIO_MODE_IDENTIFIER_str(void);

void MSG_BINARY_NUMBER_PREFIX_str(void);

void MSG_CFG0_FIELD_str(void);

void MSG_CHIP_REVISION_A3_str(void);

void MSG_CHIP_REVISION_A5_str(void);

void MSG_CHIP_REVISION_ID_BEGIN_str(void);

void MSG_CHIP_REVISION_UNKNOWN_str(void);

void MSG_CLEAR_LINE_WITH_CR_str(void);

void MSG_CLUTCH_DISENGAGED_str(void);

void MSG_CLUTCH_ENGAGED_str(void);

void MSG_COMMAND_HAS_NO_EFFECT_str(void);

void MSG_CURSOR_LEFT_str(void);

void MSG_CURSOR_LEFT_TWO_str(void);

void MSG_CURSOR_RIGHT_str(void);

void MSG_DESTRUCTIVE_BACKSPACE_str(void);

void MSG_FINISH_SETUP_PROMPT_str(void);

void MSG_HEXADECIMAL_NUMBER_PREFIX_str(void);

void MSG_I2C_MODE_IDENTIFIER_str(void);

void MSG_I2C_PINS_STATE_str(void);

void MSG_I2C_READ_ADDRESS_END_str(void);

void MSG_I2C_START_BIT_str(void);

void MSG_I2C_STOP_BIT_str(void);

void MSG_I2C_WRITE_ADDRESS_END_str(void);

void MSG_KEYBOARD_ERROR_NODATA_str(void);

void MSG_KEYBOARD_ERROR_PARITY_str(void);

void MSG_KEYBOARD_ERROR_STARTBIT_str(void);

void MSG_KEYBOARD_ERROR_STOPBIT_str(void);

void MSG_KEYBOARD_ERROR_TIMEOUT_str(void);

void MSG_KEYBOARD_ERROR_UNKNOWN_str(void);

void MSG_KEYBOARD_LIVE_INPUT_START_str(void);

void MSG_KEYBOARD_MACRO_MENU_str(void);

void MSG_MODE_HEADER_END_str(void);

void MSG_NACK_str(void);

void MSG_NO_VOLTAGE_ON_PULLUP_PIN_str(void);

void MSG_ONBOARD_I2C_EEPROM_WRITE_PROTECT_DISABLED_str(void);

void MSG_OPENOCD_MODE_IDENTIFIER_str(void);

void MSG_PIC_DELAY_PROMPT_str(void);

void MSG_PIC_DEVICE_ID_str(void);

void MSG_PIC_EXIT_MODE_str(void);

void MSG_PIC_MACRO_MENU_str(void);

void MSG_PIC_MACRO_NOT_IMPLEMENTED_str(void);

void MSG_PIC_MODE_COMMAND_str(void);

void MSG_PIC_MODE_DATA_str(void);

void MSG_PIC_MODE_HEADER_str(void);

void MSG_PIC_MODE_IDENTIFIER_str(void);

void MSG_PIC_MODE_PROMPT_str(void);

void MSG_PIC_NO_READ_str(void);

void MSG_PIC_PINS_STATE_str(void);

void MSG_PIC_REVISION_ID_str(void);

void MSG_PIC_UNKNOWN_MODE_str(void);

void MSG_PIN_OUTPUT_TYPE_PROMPT_str(void);

void MSG_POWER_SUPPLIES_OFF_str(void);

void MSG_POWER_SUPPLIES_ON_str(void);

void MSG_PWM_FREQUENCY_TOO_LOW_str(void);

void MSG_PWM_HZ_MARKER_str(void);

void MSG_RAW2WIRE_ATR_DATA_UNITS_HEADER_str(void);

void MSG_RAW2WIRE_ATR_DATA_UNITS_NO_INDICATION_str(void);

void MSG_RAW2WIRE_ATR_DATA_UNIT_LENGTH_str(void);

void MSG_RAW2WIRE_ATR_PROTOCOL_2WIRE_str(void);

void MSG_RAW2WIRE_ATR_PROTOCOL_3WIRE_str(void);

void MSG_RAW2WIRE_ATR_PROTOCOL_HEADER_str(void);

void MSG_RAW2WIRE_ATR_PROTOCOL_SERIAL_str(void);

void MSG_RAW2WIRE_ATR_PROTOCOL_UNKNOWN_str(void);

void MSG_RAW2WIRE_ATR_READ_TYPE_HEADER_str(void);

void MSG_RAW2WIRE_ATR_READ_TYPE_TO_END_str(void);

void MSG_RAW2WIRE_ATR_READ_TYPE_VARIABLE_LENGTH_str(void);

void MSG_RAW2WIRE_ATR_REPLY_HEADER_str(void);

void MSG_RAW2WIRE_ATR_RFU_str(void);

void MSG_RAW2WIRE_ATR_TRIGGER_INFO_str(void);

void MSG_RAW2WIRE_I2C_START_str(void);

void MSG_RAW2WIRE_I2C_STOP_str(void);

void MSG_RAW2WIRE_MACRO_MENU_str(void);

void MSG_RAW2WIRE_MODE_HEADER_str(void);

void MSG_RAW3WIRE_MODE_HEADER_str(void);

void MSG_RAW_BRG_VALUE_INPUT_str(void);

void MSG_RAW_MODE_IDENTIFIER_str(void);

void MSG_READ_HEADER_str(void);

void MSG_RESET_MESSAGE_str(void);

void MSG_SNIFFER_MESSAGE_str(void);

void MSG_SOFTWARE_MODE_SPEED_PROMPT_str(void);

void MSG_SPI_COULD_NOT_KEEP_UP_str(void);

void MSG_SPI_CS_DISABLED_str(void);

void MSG_SPI_CS_ENABLED_str(void);

void MSG_SPI_CS_MODE_PROMPT_str(void);

void MSG_SPI_EDGE_PROMPT_str(void);

void MSG_SPI_MACRO_MENU_str(void);

void MSG_SPI_MODE_HEADER_START_str(void);

void MSG_SPI_MODE_IDENTIFIER_str(void);

void MSG_SPI_PINS_STATE_str(void);

void MSG_SPI_POLARITY_PROMPT_str(void);

void MSG_SPI_SAMPLE_PROMPT_str(void);

void MSG_SPI_SPEED_PROMPT_str(void);

void MSG_UART_BAUD_CALCULATED_str(void);

void MSG_UART_BAUD_ESTIMATED_str(void);

void MSG_UART_BAUD_OVERFLOW_str(void);

void MSG_UART_BITS_PARITY_PROMPT_str(void);

void MSG_UART_BITS_STOP_PROMPT_str(void);

void MSG_UART_BPS_MARKER_str(void);

void MSG_UART_BRIDGE_str(void);

void MSG_UART_BRIDGE_EXIT_str(void);

void MSG_UART_CUSTOM_BAUD_RATE_PROMPT_str(void);

void MSG_UART_EARLY_EXIT_str(void);

void MSG_UART_FAILED_NO_DATA_str(void);

void MSG_UART_FRAMING_ERROR_str(void);

void MSG_UART_LIVE_DISPLAY_START_str(void);

void MSG_UART_LIVE_DISPLAY_STOP_str(void);

void MSG_UART_MACRO_MENU_str(void);

void MSG_UART_MODE_HEADER_str(void);

void MSG_UART_MODE_IDENTIFIER_str(void);

void MSG_UART_OVERRUN_ERROR_str(void);

void MSG_UART_PARITY_ERROR_str(void);

void MSG_UART_PINS_STATE_str(void);

void MSG_UART_POLARITY_PROMPT_str(void);

void MSG_UART_RAW_UART_INPUT_str(void);

void MSG_UART_SET_PORT_SPEED_str(void);

void MSG_UART_WAITING_ACTIVITY_str(void);

void MSG_UNKNOWN_MACRO_ERROR_str(void);

void MSG_USING_ONBOARD_I2C_EEPROM_str(void);

void MSG_VOLTAGE_UNIT_str(void);

void MSG_VOLTAGE_VPULLUP_ALREADY_PRESENT_str(void);

void MSG_VPU_3V3_MARKER_str(void);

void MSG_VPU_5V_MARKER_str(void);

void MSG_VREG_TOO_LOW_str(void);

void MSG_WARNING_HEADER_str(void);

void MSG_WARNING_SHORT_OR_NO_PULLUP_str(void);

void MSG_XSV1_MODE_IDENTIFIER_str(void);
# 30 "../messages.h" 2







void print_help(void);







void bp_message_write_buffer(unsigned long strptr);







void bp_message_write_line(unsigned long strptr);






_Bool agree(void);
# 42 "../base.h" 2
# 56 "../base.h"
typedef struct {
  uint8_t speed;
  uint8_t numbits;




  uint8_t alternate_aux : 2;

  uint8_t periodicService : 1;





  uint8_t little_endian : 1;




  uint8_t high_impedance : 1;




  uint8_t int16 : 1;




  uint8_t write_with_read : 1;




  uint8_t command_error : 1;

} __attribute__((packed)) mode_configuration_t;

typedef struct {
  uint16_t num;
  uint16_t repeat;
  uint8_t cmd;
} __attribute__((packed)) command_t;
# 109 "../base.h"
uint16_t bp_reverse_integer(const uint16_t value, const uint8_t bits);
# 118 "../base.h"
uint8_t bp_reverse_byte(const uint8_t value);
# 127 "../base.h"
uint16_t bp_reverse_word(const uint16_t value);





void bp_reset_board_state(void);
# 144 "../base.h"
uint16_t bp_read_adc(const uint16_t channel);




void bp_adc_probe(void);





void bp_adc_continuous_probe(void);







void bp_write_formatted_integer(const uint16_t value);
# 188 "../base.h"
void bp_delay_ms(uint16_t milliseconds);






void bp_delay_us(uint16_t microseconds);
# 205 "../base.h"
void bp_write_buffer(const uint8_t *buffer, const size_t length);






void bp_write_string(const char *string);







void bp_write_line(const char *string);






void bp_write_hex_byte(const uint8_t value);






void bp_write_hex_word(const uint16_t value);






void bp_write_bin_byte(const uint8_t value);






void bp_write_dec_byte(const uint8_t value);






void bp_write_dec_word(const uint16_t value);






void bp_write_dec_dword(const uint32_t value);







void bp_write_dec_dword_friendly(const uint32_t value);







void bp_write_voltage(const uint16_t adc);
# 288 "../base.h"
uint16_t bp_read_from_flash(const uint16_t page, const uint16_t address);







void bp_write_hex_byte_to_ringbuffer(const uint8_t value);





void bp_initialise_delay_timer(void);
# 340 "../base.h"
void user_serial_initialise(void);






_Bool user_serial_transmit_done(void);






_Bool user_serial_ready_to_read(void);




void user_serial_clear_overflow(void);






_Bool user_serial_check_overflow(void);







void user_serial_set_baud_rate(const uint16_t rate);





void user_serial_wait_transmission_done(void);







uint8_t user_serial_read_byte(void);
# 398 "../base.h"
uint16_t user_serial_read_big_endian_word(void);
# 408 "../base.h"
uint32_t user_serial_read_big_endian_long_word(void);





void user_serial_process_transmission_interrupt(void);







void user_serial_transmit_character(const char character);
# 437 "../base.h"
void user_serial_ringbuffer_setup(void);




void user_serial_ringbuffer_flush(void);







void user_serial_ringbuffer_append(const char character);




void user_serial_ringbuffer_process(void);
# 23 "../uart2.c" 2







void uart2_setup(const uint16_t baud_rate_generator_prescaler,
                 const _Bool open_drain_output, const _Bool invert_polarity,
                 const uint8_t databits_and_parity, const _Bool stop_bits) {


  ODCDbits.ODD1 = (open_drain_output == 1) ? 1 : 0;


  RPINR19bits.U2RXR = 22;
  RPOR12bits.RP24R = 5;


  U2BRG = baud_rate_generator_prescaler;
# 63 "../uart2.c"
  U2MODE = ((((uint8_t)stop_bits) & ((1 << (uint8_t)1) - 1)) << 0x00000000) |
           ((((uint8_t)databits_and_parity) & ((1 << (uint8_t)2) - 1)) << 0x00000001) |
           0x00000008 |
           ((((uint8_t)invert_polarity) & ((1 << (uint8_t)1) - 1)) << 0x00000004);
# 82 "../uart2.c"
  U2STA = (((uint8_t)invert_polarity) & ((1 << (uint8_t)1) - 1)) << 0x0000000E;
}

void uart2_enable(void) {

  U2MODEbits.UARTEN = 1;


  U2STAbits.UTXEN = 1;


  IFS1bits.U2RXIF = 0;





  TRISDbits.TRISD1 = 0;
}

void uart2_disable(void) {

  U2MODEbits.UARTEN = 0;


  U2STAbits.UTXEN = 0;


  RPINR19bits.U2RXR = 0b11111;


  RPOR12bits.RP24R = 0;
  ODCDbits.ODD1 = 0;





  TRISDbits.TRISD1 = 1;
}

void uart2_tx(const uint8_t character) {

  while (U2STAbits.UTXBF == 1) {
  }

  U2TXREG = character;
}

uint8_t uart2_rx(void) {

  while (U2STAbits.URXDA == 0) {
  }

  return (uint8_t)(U2RXREG & 0xFF);
}

inline _Bool uart2_rx_ready(void) { return U2STAbits.URXDA; }

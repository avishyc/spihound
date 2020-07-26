#ifndef _MULTI_PLAYFORM_H
#define _MULTI_PLAYFORM_H

#ifdef _WIN32
#include <windows.h>
#include <conio.h>
#include "unistd_win.h"

#define export __declspec(dllexport)

typedef unsigned long speed_t;
typedef void *HANDLE;

#else /* _WIN32 */

#ifdef __linux__
#include <string.h>
#include <stddef.h>
size_t strlcpy(char *dst, const char *src, size_t size);
#endif /* __linux__ */

#include <unistd.h>
#include <sys/ioctl.h>
#include <termios.h>
#include <sys/select.h>

#define export extern
#define Sleep sleep
#define strcpy_s(dest, dstsz, src) strlcpy((dest), (src), (dstsz))

#endif /* _WIN32 */

#endif /* _MULTI_PLAYFORM_H */
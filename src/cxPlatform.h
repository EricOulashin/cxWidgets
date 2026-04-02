// Copyright (c) 2026 E. Oulashin
#ifndef __CXPLATFORM_H__
#define __CXPLATFORM_H__

// cxPlatform.h - Platform-specific compatibility header for cxWidgets.
//
// On Windows, cxWidgets uses PDCurses (WinCon backend), which provides an
// ncurses-compatible API using the Windows Console API (similar to conio).
// On Linux, macOS, BSD, and other Unix-like platforms, the standard ncurses
// and panel libraries are used.
//
// When building for Windows with Visual Studio, include the PDCurses headers
// from the vs/pdcurses directory (or wherever PDCurses is installed).

#ifdef _WIN32
   // -----------------------------------------------------------------------
   // Windows: use PDCurses (provides ncurses-compatible API via Windows
   // Console API, which is similar to conio under the hood)
   // -----------------------------------------------------------------------

   // PDC_NCMOUSE: Enable the ncurses-compatible mouse API in PDCurses.
   // This causes PDCurses to define NCURSES_MOUSE_VERSION, MEVENT, and the
   // ncurses-compatible getmouse() / mousemask() functions.
   #define PDC_NCMOUSE

   #include <curses.h>   // PDCurses main header (ncurses-compatible)
   #include <panel.h>    // PDCurses panel library

   // Windows-specific includes
   #include <io.h>       // For _access(), etc.

   // Include synchapi.h for Sleep() without pulling in all of windows.h,
   // to avoid macro conflicts (e.g. MOUSE_MOVED) between windows.h and curses.h.
   // WIN32_LEAN_AND_MEAN reduces windows.h bloat if it must be included elsewhere.
   #ifndef WIN32_LEAN_AND_MEAN
      #define WIN32_LEAN_AND_MEAN
   #endif
   // windows.h's wincontypes.h redefines MOUSE_MOVED (already defined by
   // PDCurses' curses.h). Undefine it first to suppress the redefinition
   // warning, then restore PDCurses' value after the include.
   #ifdef MOUSE_MOVED
      #define CX_SAVED_MOUSE_MOVED MOUSE_MOVED
      #undef MOUSE_MOVED
   #endif
   #include <windows.h>
   #ifdef CX_SAVED_MOUSE_MOVED
      #undef MOUSE_MOVED
      #define MOUSE_MOVED CX_SAVED_MOUSE_MOVED
      #undef CX_SAVED_MOUSE_MOVED
   #endif

   // Provide POSIX-compatible sleep() on Windows
   // (ncurses apps commonly use sleep(); Windows uses Sleep() in ms)
   #ifndef sleep
      #define sleep(s) Sleep((DWORD)((s) * 1000))
   #endif

   // usleep() is not available on Windows; approximate with Sleep()
   #ifndef usleep
      #define usleep(us) Sleep((DWORD)((us) / 1000 + 1))
   #endif

   // ESCDELAY is an ncurses global variable not present in PDCurses.
   // Define it as a no-op macro so code that sets it still compiles.
   #ifndef ESCDELAY
      #define ESCDELAY _cx_escdelay_dummy
      static int _cx_escdelay_dummy = 0;
   #endif

   // On Windows, regex.h (POSIX) is not available; use C++17 <regex> instead.
   #define CX_USE_STD_REGEX 1

   // In PDCurses, A_DIM is defined as A_NORMAL (both equal 0).
   // Use this macro to guard switch cases that would otherwise duplicate case '0'.
   #define CX_A_DIM_EQUALS_A_NORMAL 1

   // Windows does not have SIGALRM, so WANT_TIMEOUT cannot be used.
   #ifdef WANT_TIMEOUT
      #undef WANT_TIMEOUT
   #endif

   // strcasecmp / strncasecmp are POSIX; Windows uses _stricmp / _strnicmp
   #ifndef strcasecmp
      #define strcasecmp  _stricmp
   #endif
   #ifndef strncasecmp
      #define strncasecmp _strnicmp
   #endif

#else
   // -----------------------------------------------------------------------
   // Unix / Linux / macOS / BSD: use standard ncurses and panel
   // -----------------------------------------------------------------------
   #include <ncurses.h>
   #include <panel.h>
   #include <unistd.h>

   // POSIX regex is available on Unix; use it (backward-compatible).
   #define CX_USE_STD_REGEX 0

#endif // _WIN32

// -------------------------------------------------------------------------
// Portable panel_hidden() wrappers
//
// panel_hidden() has different return-value semantics on the two libraries:
//   ncurses:  TRUE  (1) = panel is hidden,  FALSE (0) = panel is visible
//   PDCurses: OK    (0) = panel is hidden,  ERR  (-1) = panel is visible
//
// Use these macros instead of comparing panel_hidden() directly to TRUE/FALSE
// so that show/hide logic works correctly on both platforms.
// -------------------------------------------------------------------------
#ifdef _WIN32
   // PDCurses: hidden -> OK (0), visible -> ERR (-1)
   #define CX_PANEL_IS_HIDDEN(pan)  (panel_hidden(pan) == OK)
   #define CX_PANEL_IS_VISIBLE(pan) (panel_hidden(pan) != OK)
#else
   // ncurses:  hidden -> TRUE (1), visible -> FALSE (0)
   #define CX_PANEL_IS_HIDDEN(pan)  (panel_hidden(pan) == TRUE)
   #define CX_PANEL_IS_VISIBLE(pan) (panel_hidden(pan) == FALSE)
#endif

#endif // __CXPLATFORM_H__

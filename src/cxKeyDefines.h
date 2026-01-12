#ifndef __CXKEYDEFINES_H__
#define __CXKEYDEFINES_H__
// Copyright (c) 2005-2007 Michael H. Kinney
//
// This file defines some key bindings
//  that don't seem to be included in the
//  ncurses library (or at least the ncurses
//  docs don't seem to say so).
// Note: See the "getch" man page for a list of
//  the ncurses key definitions -- These can be
//  used to test keypresses in addition to
//  the keys listed here.

#define ESCAPE  27
#define ESC ESCAPE
#define TAB     9
#define SHIFT_TAB 353
#define CTRL_G 7
#define ENTER   13
#define BACKSPACE 127
#define PAGE_UP KEY_PPAGE
#define PAGE_DOWN KEY_NPAGE
#define SHIFT_F1 277
#define SHIFT_F2 278
#define SHIFT_F3 279
#define SHIFT_F4 280
#define SHIFT_F5 281
#define SHIFT_F52 363 // For Anzio & PutTTY VT220
#define SHIFT_F6 282
#define SHIFT_F62 371 // For Anzio & PuTTY VT220
#define SHIFT_F7 283
#define SHIFT_F8 284
#define SHIFT_F9 285
#define SHIFT_F10 286
#define SHIFT_F11 287
#define SHIFT_F12 288
#define CTRL_F1 289 // Not 100% sure this is correct
#define CTRL_F2 290
#define CTRL_F3 291
#define CTRL_F4 292
#define CTRL_F5 293
#define CTRL_F6 294
#define CTRL_F7 295
#define CTRL_F8 296
#define CTRL_F9 297
#define CTRL_F10 298
#define CTRL_F11 299
#define CTRL_F12 300
#define CTRL_SHIFT_F1 301
#define CTRL_SHIFT_F2 302
#define CTRL_SHIFT_F3 303
#define CTRL_SHIFT_F4 304
#define CTRL_SHIFT_F5 305
#define CTRL_SHIFT_F6 306
#define CTRL_SHIFT_F7 307
#define CTRL_SHIFT_F8 308
#define CTRL_SHIFT_F9 309
#define CTRL_SHIFT_F10 310
#define CTRL_SHIFT_F11 311
#define CTRL_SHIFT_F12 312
#define KEY_END2 335 // For wy50
#define KEY_END3 385 // For vt220
#define NOKEY -2

#endif

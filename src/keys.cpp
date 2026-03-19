// Copyright (c) 2026 E. Oulashin
/*
 * keys.cpp - test the keys (helpful for testing terminal emulation programs)
 *
 *  Copyright (c) 2006-2007 Michael H. Kinney
 */
#include "cxUtils.h"
using namespace cx;
#include "cxWindow.h"
#include "cxStringUtils.h"
using namespace cxStringUtils;

#include <stdlib.h>
#include <iostream>
#include <string>
using namespace std;

//// MAIN ////
int main(int argc, char* argv[])
{
   cx::init();

   cxObject ourcxObject;
   ourcxObject.UseColors(true);

   bool continueOn=true;
   int key=0;
   string keyStr;


   while (continueOn)
   {
      mvwprintw(stdscr, 0, 0, "Press ESC to quit.");
      refresh();
      key=getch();
      erase();
      mvwprintw(stdscr, 0, 0, "Press ESC to quit.");
      keyStr=cx::getKeyStr(key);
      if (keyStr == "ESC")
      {
         continueOn=false;
      }
      mvwprintw(stdscr, 1, 0, "You pressed:%d which is:%s", key, keyStr.c_str());
      refresh();

   }

   // cleanup
   cx::cleanup();
   return(0);
} // main


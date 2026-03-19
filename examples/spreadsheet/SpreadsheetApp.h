#ifndef __SPREADSHEET_APP_H__
#define __SPREADSHEET_APP_H__

#include "cxGrid.h"
#include <string>

// -------------------------------------------------------------------
// Spreadsheet application class
// -------------------------------------------------------------------

class SpreadsheetApp
{
public:
   SpreadsheetApp();

   void run();

private:
   std::string mCurrentFilePath;
   int mTermHeight;
   int mTermWidth;
   bool mRunning;

   void drawStatusLine();

   void handleMenuAction(long pCode, cx::cxGrid& pGrid);

   void doInsertDate(cx::cxGrid& pGrid);

   void doOpen(cx::cxGrid& pGrid);

   void doSave(cx::cxGrid& pGrid);

   void doSaveAs(cx::cxGrid& pGrid);

   void doClose(cx::cxGrid& pGrid);

   void doHelp();

   void doAbout();

   // Process formulas in the grid after the user finishes editing
   void processFormulas(cx::cxGrid& pGrid);
};


#endif
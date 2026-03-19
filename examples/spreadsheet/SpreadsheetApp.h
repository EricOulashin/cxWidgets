#ifndef __SPREADSHEET_APP_H__
#define __SPREADSHEET_APP_H__

#include "cxGrid.h"
#include <cxMenu.h>
#include <cxMenuBar.h>
#include <cxGrid.h>
#include <string>
#include <memory>

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
   bool mRunning = false;
   std::shared_ptr<cx::cxMenuBar> mMenuBar;
   std::shared_ptr<cx::cxMenu> mFileMenu;
   std::shared_ptr<cx::cxMenu> mHelpMenu;
   std::shared_ptr<cx::cxGrid> mGrid;



   void drawStatusLine();

   void handleMenuAction(long pCode);

   void doInsertDate();

   void doOpen();

   void doSave();

   void doSaveAs();

   void doClose();

   void doHelp();

   void doAbout();

   // Process formulas in the grid after the user finishes editing
   void processFormulas();
};


#endif
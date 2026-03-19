#include <cxUtils.h>
#include <cxDatePicker.h>
#include <cxOpenFileDialog.h>
#include <cxScrolledWindow.h>
#include <cxMessageDialog.h>
#include <ctime>

#include "SpreadsheetApp.h"
#include "helpers.h"

using namespace cx;
using std::string;
using std::shared_ptr;
using std::make_shared;

// Hotkey definitions (Ctrl keys as ASCII values)
static const int CTRL_D =  4;
static const int CTRL_O = 15;
static const int CTRL_S = 19;
static const int CTRL_X = 24;

// Menu return codes
enum MenuCodes
{
   MENU_FILE_OPEN = cxFIRST_AVAIL_RETURN_CODE,
   MENU_FILE_SAVE,
   MENU_FILE_SAVE_AS,
   MENU_FILE_CLOSE,
   MENU_FILE_EXIT,
   MENU_HELP_HELP,
   MENU_HELP_ABOUT
};

// -------------------------------------------------------------------
// Spreadsheet application class
// -------------------------------------------------------------------

SpreadsheetApp::SpreadsheetApp()
      : mCurrentFilePath(""),
        mTermHeight(24),
        mTermWidth(80)
{
    if (!cx::isInitialized())
        cx::init();

    cx::getTermDimensions(mTermHeight, mTermWidth);

    // Create the menu bar (row 0, full width)
    mMenuBar = make_shared<cx::cxMenuBar>(nullptr, 0, 0, mTermWidth);
    mMenuBar->setBarColor(eWHITE_BLUE);
    mMenuBar->setHighlightColor(eBLACK_WHITE);

    // File menu
    mFileMenu = make_shared<cx::cxMenu>(nullptr, 1, 0, 9, 28, "");
    mFileMenu->append("&Open        Ctrl+O", MENU_FILE_OPEN, "", cxITEM_NORMAL, true);
    mFileMenu->append("&Save        Ctrl+S", MENU_FILE_SAVE, "", cxITEM_NORMAL, true);
    mFileMenu->append("Save &As",            MENU_FILE_SAVE_AS, "", cxITEM_NORMAL, true);
    mFileMenu->append("&Close",              MENU_FILE_CLOSE, "", cxITEM_NORMAL, true);
    mFileMenu->append("E&xit        Ctrl+X", MENU_FILE_EXIT, "", cxITEM_NORMAL, true);

    // Help menu
    mHelpMenu = make_shared<cxMenu>(nullptr, 1, 0, 5, 22, "");
    mHelpMenu->append("&Help            F1", MENU_HELP_HELP, "", cxITEM_NORMAL, true);
    mHelpMenu->append("&About", MENU_HELP_ABOUT, "", cxITEM_NORMAL, true);

    mMenuBar->addMenu("&File", mFileMenu.get());
    mMenuBar->addMenu("&Help", mHelpMenu.get());

    // Create the grid (between menu bar and status line)
    int gridRows = 100;
    int gridCols = 26; // A through Z
    int gridHeight = mTermHeight - 2; // minus menu bar and status line
    int gridWidth = mTermWidth;
    mGrid = make_shared<cxGrid>(nullptr, 1, 0, gridHeight, gridWidth,
                                gridRows, gridCols, 12, "", eBS_NOBORDER);
    mGrid->showRowHeaders(true);
    mGrid->showColHeaders(true);
    // Add quit keys to the grid so it exits on app-level hotkeys.
    // These keys also need to be quit keys on each cell so the cell's
    // input loop exits and returns control to the grid.
    int appQuitKeys[] = { CTRL_D, CTRL_O, CTRL_S, CTRL_X, KEY_F(1), KEY_F(10) };
    for (int key : appQuitKeys)
    {
        mGrid->addQuitKey(key);
        // Propagate to all cells
        for (int r = 0; r < gridRows; ++r)
        {
            for (int c = 0; c < gridCols; ++c)
            {
                auto cell = mGrid->getCell(r, c);
                if (cell)
                    cell->addQuitKey(key);
            }
        }
    }
}

void SpreadsheetApp::run()
{
    mRunning = true;

    // Draw the bottom status/help line
    drawStatusLine();

    // Show the menu bar (but don't start its input loop)
    mMenuBar->show();

    // Main application loop
    while (mRunning)
    {
        mGrid->show();
        // Show the grid modally - it returns when a key the grid doesn't handle
        // causes it to exit, or when ESC is pressed
        mGrid->showModal(mGrid->getFocusRow(), mGrid->getFocusCol());
        int lastKey = mGrid->getLastKey();

        // After the grid exits, check if a formula was entered
        processFormulas();

        // Handle keys that should open menus or perform actions
        bool handled = false;

        // Check for Ctrl key hotkeys
        if (lastKey == CTRL_D)
        {
            doInsertDate();
            handled = true;
        }
        else if (lastKey == CTRL_O)
        {
            doOpen();
            handled = true;
        }
        else if (lastKey == CTRL_S)
        {
            doSave();
            handled = true;
        }
        else if (lastKey == CTRL_X)
        {
            if (cx::promptYesNo("Exit the application?", " Exit "))
                mRunning = false;
            handled = true;
        }
        else if (lastKey == KEY_F(1))
        {
            doHelp();
            handled = true;
        }
        else if (lastKey == KEY_F(10) || lastKey == ESC)
        {
            // Open the menu bar
            mMenuBar->show();
            long menuResult = mMenuBar->showModal();
            mMenuBar->hide();

            // Redraw the status line (menu bar may have overwritten it)
            drawStatusLine();

            if (menuResult != cxID_QUIT && menuResult != cxID_CANCEL)
            {
                long code = mMenuBar->getLastMenuReturnCode();
                handleMenuAction(code);
            }
            handled = true;
        }
        else if (lastKey == KEY_MOUSE)
        {
            // Check if the mouse was clicked on the menu bar
            int my, mx;
            mGrid->getLastMouseEvtCoords(my, mx);
            if (my == 0)
            {
                // Pass the click X position directly to the menu bar so it
                // immediately opens the right dropdown without waiting for a
                // second click (the original click was consumed by the grid).
                long menuResult = mMenuBar->showModalWithClick(mx);
                mMenuBar->hide();
                drawStatusLine();
                if (menuResult != cxID_QUIT && menuResult != cxID_CANCEL)
                {
                    long code = mMenuBar->getLastMenuReturnCode();
                    handleMenuAction(code);
                }
                handled = true;
            }
        }

        if (!handled && lastKey == ESC)
        {
            mRunning = false;
        }

        // Redraw status line in case it was overwritten
        drawStatusLine();
        mMenuBar->show();
    }

    cx::cleanup();
}

void SpreadsheetApp::drawStatusLine()
{
    string statusText = " F1:Help | F10/ESC:Menu | Ctrl+D:Date | Ctrl+O:Open | Ctrl+S:Save | Ctrl+X:Exit";
    // Pad or truncate to terminal width
    if ((int)statusText.length() < mTermWidth)
        statusText += string(mTermWidth - statusText.length(), ' ');
    else
        statusText = statusText.substr(0, mTermWidth);
    cx::writeText(mTermHeight - 1, 0, statusText, A_NORMAL, eWHITE_BLUE);
}

void SpreadsheetApp::handleMenuAction(long pCode)
{
    switch (pCode)
    {
        case MENU_FILE_OPEN:
            doOpen();
            break;
        case MENU_FILE_SAVE:
            doSave();
            break;
        case MENU_FILE_SAVE_AS:
            doSaveAs();
            break;
        case MENU_FILE_CLOSE:
            doClose();
            break;
        case MENU_FILE_EXIT:
            if (cx::promptYesNo("Exit the application?", " Exit "))
                mRunning = false;
            break;
        case MENU_HELP_HELP:
            doHelp();
            break;
        case MENU_HELP_ABOUT:
            doAbout();
            break;
        default:
            break;
    }
}

void SpreadsheetApp::doInsertDate()
{
    cxDatePicker picker(nullptr, -1, -1);
    if (picker.showModal() == cxID_OK)
    {
        const cxDate& chosen = picker.getSelectedDate();

        // Format the date according to the OS locale using strftime %x
        std::tm tm = {};
        tm.tm_year = chosen.getYear() - 1900;
        tm.tm_mon  = chosen.getMonth() - 1;
        tm.tm_mday = chosen.getDay();
        std::mktime(&tm); // normalise fields
        char buf[64];
        std::strftime(buf, sizeof(buf), "%x", &tm);

        int row = mGrid->getFocusRow();
        int col = mGrid->getFocusCol();
        mGrid->setCellValue(row, col, mGrid->getCellValue(row, col) + string(buf));
    }
    picker.hide();
}

void SpreadsheetApp::doOpen()
{
    cxOpenFileDialog dlg(nullptr, -1, -1, " Open Spreadsheet ");
    dlg.addFilter("Tab-Separated (*.tsv)", "*.tsv");
    dlg.addFilter("All Files (*)", "*");
    dlg.setAllowNewFile(false);

    if (dlg.showModal() == cxID_OK)
    {
        string filePath = dlg.getSelectedFilePath();
        string errorMsg;
        if (loadFromFile(*mGrid, filePath, errorMsg))
        {
        mCurrentFilePath = filePath;
        cx::messageBox("Loaded", "File loaded: " + filePath, "");
        }
        else
        {
        cx::messageBox("Error", errorMsg, "");
        }
    }
}

void SpreadsheetApp::doSave()
{
    string filePath = mCurrentFilePath;
    if (filePath.empty())
    {
        // Use an OpenFileDialog with allowNewFile to pick a save path
        cxOpenFileDialog dlg(nullptr, -1, -1, " Save Spreadsheet ");
        dlg.addFilter("Tab-Separated (*.tsv)", "*.tsv");
        dlg.addFilter("All Files (*)", "*");
        dlg.setAllowNewFile(true);

        if (dlg.showModal() == cxID_OK)
        {
        filePath = dlg.getSelectedFilePath();
        }
        else
        {
        return; // Cancelled
        }
    }

    string errorMsg;
    if (saveToFile(*mGrid, filePath, errorMsg))
    {
        mCurrentFilePath = filePath;
        cx::messageBox("Saved", "File saved: " + filePath, "");
    }
    else
    {
        cx::messageBox("Error", errorMsg, "");
    }
}

void SpreadsheetApp::doSaveAs()
{
    cxOpenFileDialog dlg(nullptr, -1, -1, " Save Spreadsheet As ");
    dlg.addFilter("Tab-Separated (*.tsv)", "*.tsv");
    dlg.addFilter("All Files (*)", "*");
    dlg.setAllowNewFile(true);

    if (dlg.showModal() != cxID_OK)
        return;

    string filePath = dlg.getSelectedFilePath();
    string errorMsg;
    if (saveToFile(*mGrid, filePath, errorMsg))
    {
        mCurrentFilePath = filePath;
        cx::messageBox("Saved", "File saved: " + filePath, "");
    }
    else
    {
        cx::messageBox("Error", errorMsg, "");
    }
}

void SpreadsheetApp::doClose()
{
    // Clear all cells
    for (int r = 0; r < mGrid->getNumRows(); ++r)
    {
        for (int c = 0; c < mGrid->getNumCols(); ++c)
        {
            mGrid->setCellValue(r, c, "");
        }
    }
    mCurrentFilePath = "";
    mGrid->setFocusCell(0, 0);
}

void SpreadsheetApp::doHelp()
{
    string helpText =
        "SPREADSHEET - A text-based spreadsheet application\n"
        "Built using the cxWidgets library\n"
        "\n"
        "NAVIGATION:\n"
        "  Arrow keys    Move between cells\n"
        "  Tab           Move to next cell\n"
        "  Shift+Tab     Move to previous cell\n"
        "  Enter         Move down to next row\n"
        "  Mouse click   Click on any cell to select it\n"
        "\n"
        "EDITING:\n"
        "  Type text directly into cells to enter data.\n"
        "  Numbers, text, and formulas are all supported.\n"
        "\n"
        "FORMULAS:\n"
        "  Formulas begin with '=' and are evaluated when you\n"
        "  leave the cell. Supported functions:\n"
        "\n"
        "  =SUM(A1:A5)        Sum of a range of cells\n"
        "  =SUM(A1,B2,C3)     Sum of specific cells\n"
        "  =AVERAGE(A1:A10)   Average of a range\n"
        "  =MIN(A1:A10)       Minimum value in range\n"
        "  =MAX(A1:A10)       Maximum value in range\n"
        "  =COUNT(A1:A10)     Count of non-empty cells\n"
        "  =ABS(-5)           Absolute value\n"
        "  =SQRT(16)          Square root\n"
        "  =POWER(2,8)        Power (base, exponent)\n"
        "  =ROUND(3.14159,2)  Round to N decimals\n"
        "  =PRODUCT(A1:A5)    Product of a range\n"
        "\n"
        "  Simple arithmetic:\n"
        "  =A1+B1             Addition\n"
        "  =A1-B1             Subtraction\n"
        "  =A1*B1             Multiplication\n"
        "  =A1/B1             Division\n"
        "  =A1                Reference another cell\n"
        "\n"
        "  Ranges can be mixed with cell refs and numbers:\n"
        "  =SUM(A1:A5, B1, 100)\n"
        "\n"
        "FILE FORMAT:\n"
        "  Files are saved as tab-separated values (.tsv).\n"
        "  Use File > Open and File > Save to load/save.\n"
        "\n"
        "HOTKEYS:\n"
        "  F1           Show this help\n"
        "  F10 / ESC    Open the menu bar\n"
        "  Ctrl+D       Insert a date (date picker)\n"
        "  Ctrl+O       Open a file\n"
        "  Ctrl+S       Save the current file\n"
        "  Ctrl+X       Exit the application\n";

    int helpHeight = mTermHeight - 4;
    int helpWidth = mTermWidth - 10;
    if (helpWidth < 50)
        helpWidth = 50;
    if (helpHeight < 10)
        helpHeight = 10;
    int helpRow = (mTermHeight - helpHeight) / 2;
    int helpCol = (mTermWidth - helpWidth) / 2;

    cxScrolledWindow helpWin(nullptr, helpRow, helpCol,
                            helpHeight, helpWidth,
                            " Help ", helpText,
                            " ESC to close ");
    helpWin.showModal();
    helpWin.hide();
}

void SpreadsheetApp::doAbout()
{
    cxMessageDialog aboutDlg(nullptr, " About ",
                            "Spreadsheet\n\n"
                            "A text-based spreadsheet application\n"
                            "built with cxWidgets.\n\n"
                            "Copyright (c) 2026 E. Oulashin");
    aboutDlg.showModal();
    aboutDlg.hide();
}

// Process formulas in the grid after the user finishes editing
void SpreadsheetApp::processFormulas()
{
    const int focusRow = mGrid->getFocusRow();
    const int focusCol = mGrid->getFocusCol();
    const string val = mGrid->getCellValue(focusRow, focusCol);

    if (!val.empty() && val[0] == '=')
    {
        string result;
        string errorMsg;
        if (evaluateFormula(*mGrid, val, result, errorMsg))
            mGrid->setCellValue(focusRow, focusCol, result);
        else
        {
            cxMessageDialog errDlg(nullptr, " Formula Error ", errorMsg);
            errDlg.showModal();
            errDlg.hide();
        }
    }
}
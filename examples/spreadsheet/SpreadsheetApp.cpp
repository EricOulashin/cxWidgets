#include <cxUtils.h>
#include <cxMenu.h>
#include <cxMenuBar.h>
#include <cxGrid.h>
#include <cxDatePicker.h>
#include <cxOpenFileDialog.h>
#include <cxScrolledWindow.h>
#include <cxMessageDialog.h>
#include <ctime>

#include "SpreadsheetApp.h"
#include "helpers.h"

using namespace cx;
using std::string;

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
        mTermWidth(80),
        mRunning(true)
{
}

void SpreadsheetApp::run()
{
    cx::init();

    cx::getTermDimensions(mTermHeight, mTermWidth);

    // Create the menu bar (row 0, full width)
    cxMenuBar menuBar(nullptr, 0, 0, mTermWidth);
    menuBar.setBarColor(eWHITE_BLUE);
    menuBar.setHighlightColor(eBLACK_WHITE);

    // File menu
    cxMenu fileMenu(nullptr, 1, 0, 9, 28, "");
    fileMenu.append("&Open        Ctrl+O", MENU_FILE_OPEN, "", cxITEM_NORMAL, true);
    fileMenu.append("&Save        Ctrl+S", MENU_FILE_SAVE, "", cxITEM_NORMAL, true);
    fileMenu.append("Save &As", MENU_FILE_SAVE_AS, "", cxITEM_NORMAL, true);
    fileMenu.append("&Close", MENU_FILE_CLOSE, "", cxITEM_NORMAL, true);
    fileMenu.append("E&xit        Ctrl+X", MENU_FILE_EXIT, "", cxITEM_NORMAL, true);

    // Help menu
    cxMenu helpMenu(nullptr, 1, 0, 5, 22, "");
    helpMenu.append("&Help            F1", MENU_HELP_HELP, "", cxITEM_NORMAL, true);
    helpMenu.append("&About", MENU_HELP_ABOUT, "", cxITEM_NORMAL, true);

    menuBar.addMenu("&File", &fileMenu);
    menuBar.addMenu("&Help", &helpMenu);

    // Draw the bottom status/help line
    drawStatusLine();

    // Show the menu bar (but don't start its input loop)
    menuBar.show();

    // Create the grid (between menu bar and status line)
    int gridRows = 100;
    int gridCols = 26; // A through Z
    int gridHeight = mTermHeight - 2; // minus menu bar and status line
    int gridWidth = mTermWidth;
    cxGrid grid(nullptr, 1, 0, gridHeight, gridWidth,
                gridRows, gridCols, 12, "", eBS_NOBORDER);
    grid.showRowHeaders(true);
    grid.showColHeaders(true);

    // Add quit keys to the grid so it exits on app-level hotkeys.
    // These keys also need to be quit keys on each cell so the cell's
    // input loop exits and returns control to the grid.
    int appQuitKeys[] = { CTRL_D, CTRL_O, CTRL_S, CTRL_X, KEY_F(1), KEY_F(10) };
    for (int key : appQuitKeys)
    {
        grid.addQuitKey(key);
        // Propagate to all cells
        for (int r = 0; r < gridRows; ++r)
        {
        for (int c = 0; c < gridCols; ++c)
        {
            auto cell = grid.getCell(r, c);
            if (cell)
                cell->addQuitKey(key);
        }
        }
    }

    // Main application loop
    while (mRunning)
    {
        grid.show();
        // Show the grid modally - it returns when a key the grid doesn't handle
        // causes it to exit, or when ESC is pressed
        grid.showModal(grid.getFocusRow(), grid.getFocusCol());
        int lastKey = grid.getLastKey();

        // After the grid exits, check if a formula was entered
        processFormulas(grid);

        // Handle keys that should open menus or perform actions
        bool handled = false;

        // Check for Ctrl key hotkeys
        if (lastKey == CTRL_D)
        {
        doInsertDate(grid);
        handled = true;
        }
        else if (lastKey == CTRL_O)
        {
        doOpen(grid);
        handled = true;
        }
        else if (lastKey == CTRL_S)
        {
        doSave(grid);
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
        menuBar.show();
        long menuResult = menuBar.showModal();
        menuBar.hide();

        // Redraw the status line (menu bar may have overwritten it)
        drawStatusLine();

        if (menuResult != cxID_QUIT && menuResult != cxID_CANCEL)
        {
            long code = menuBar.getLastMenuReturnCode();
            handleMenuAction(code, grid);
        }
        handled = true;
        }
        else if (lastKey == KEY_MOUSE)
        {
        // Check if the mouse was clicked on the menu bar
        int my, mx;
        grid.getLastMouseEvtCoords(my, mx);
        if (my == 0)
        {
            // Pass the click X position directly to the menu bar so it
            // immediately opens the right dropdown without waiting for a
            // second click (the original click was consumed by the grid).
            long menuResult = menuBar.showModalWithClick(mx);
            menuBar.hide();
            drawStatusLine();
            if (menuResult != cxID_QUIT && menuResult != cxID_CANCEL)
            {
                long code = menuBar.getLastMenuReturnCode();
                handleMenuAction(code, grid);
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
        menuBar.show();
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

void SpreadsheetApp::handleMenuAction(long pCode, cxGrid& pGrid)
{
    switch (pCode)
    {
        case MENU_FILE_OPEN:
            doOpen(pGrid);
            break;
        case MENU_FILE_SAVE:
            doSave(pGrid);
            break;
        case MENU_FILE_SAVE_AS:
            doSaveAs(pGrid);
            break;
        case MENU_FILE_CLOSE:
            doClose(pGrid);
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

void SpreadsheetApp::doInsertDate(cxGrid& pGrid)
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

        int row = pGrid.getFocusRow();
        int col = pGrid.getFocusCol();
        pGrid.setCellValue(row, col, pGrid.getCellValue(row, col) + string(buf));
    }
    picker.hide();
}

void SpreadsheetApp::doOpen(cxGrid& pGrid)
{
    cxOpenFileDialog dlg(nullptr, -1, -1, " Open Spreadsheet ");
    dlg.addFilter("Tab-Separated (*.tsv)", "*.tsv");
    dlg.addFilter("All Files (*)", "*");
    dlg.setAllowNewFile(false);

    if (dlg.showModal() == cxID_OK)
    {
        string filePath = dlg.getSelectedFilePath();
        string errorMsg;
        if (loadFromFile(pGrid, filePath, errorMsg))
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

void SpreadsheetApp::doSave(cxGrid& pGrid)
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
    if (saveToFile(pGrid, filePath, errorMsg))
    {
        mCurrentFilePath = filePath;
        cx::messageBox("Saved", "File saved: " + filePath, "");
    }
    else
    {
        cx::messageBox("Error", errorMsg, "");
    }
}

void SpreadsheetApp::doSaveAs(cxGrid& pGrid)
{
    cxOpenFileDialog dlg(nullptr, -1, -1, " Save Spreadsheet As ");
    dlg.addFilter("Tab-Separated (*.tsv)", "*.tsv");
    dlg.addFilter("All Files (*)", "*");
    dlg.setAllowNewFile(true);

    if (dlg.showModal() != cxID_OK)
        return;

    string filePath = dlg.getSelectedFilePath();
    string errorMsg;
    if (saveToFile(pGrid, filePath, errorMsg))
    {
        mCurrentFilePath = filePath;
        cx::messageBox("Saved", "File saved: " + filePath, "");
    }
    else
    {
        cx::messageBox("Error", errorMsg, "");
    }
}

void SpreadsheetApp::doClose(cxGrid& pGrid)
{
    // Clear all cells
    for (int r = 0; r < pGrid.getNumRows(); ++r)
    {
        for (int c = 0; c < pGrid.getNumCols(); ++c)
        {
        pGrid.setCellValue(r, c, "");
        }
    }
    mCurrentFilePath = "";
    pGrid.setFocusCell(0, 0);
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
    aboutDlg.center();
    aboutDlg.showModal();
    aboutDlg.hide();
}

// Process formulas in the grid after the user finishes editing
void SpreadsheetApp::processFormulas(cxGrid& pGrid)
{
    int focusRow = pGrid.getFocusRow();
    int focusCol = pGrid.getFocusCol();
    string val = pGrid.getCellValue(focusRow, focusCol);

    if (!val.empty() && val[0] == '=')
    {
        string result;
        string errorMsg;
        if (evaluateFormula(pGrid, val, result, errorMsg))
            pGrid.setCellValue(focusRow, focusCol, result);
        else
        {
            cxMessageDialog errDlg(nullptr, " Formula Error ", errorMsg);
            errDlg.center();
            errDlg.showModal();
            errDlg.hide();
        }
    }
}
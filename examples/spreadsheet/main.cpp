// Copyright (c) 2026 E. Oulashin
//
// Spreadsheet - A text-based spreadsheet application built using cxWidgets.
// Demonstrates cxGrid, cxMenuBar, cxMenu, cxInput, cxLabel, cxScrolledWindow,
// cxMessageDialog, and cxOpenFileDialog.

#include <cxBase.h>
#include <cxGrid.h>
#include <cxMenuBar.h>
#include <cxMenu.h>
#include <cxInput.h>
#include <cxLabel.h>
#include <cxScrolledWindow.h>
#include <cxMessageDialog.h>
#include <cxOpenFileDialog.h>
#include <cxFunction.h>
#include <cxKeyDefines.h>
#include <cxColors.h>
#include <cxReturnCodes.h>

#include <string>
#include <vector>
#include <map>
#include <sstream>
#include <fstream>
#include <cmath>
#include <algorithm>
#include <cctype>
#include <regex>
#include <memory>
#include <set>

using std::string;
using std::vector;
using std::map;
using std::shared_ptr;
using std::make_shared;

// Menu return codes
enum MenuCodes
{
   MENU_FILE_OPEN = cxFIRST_AVAIL_RETURN_CODE,
   MENU_FILE_SAVE,
   MENU_FILE_CLOSE,
   MENU_FILE_EXIT,
   MENU_HELP_HELP,
   MENU_HELP_ABOUT
};

// Hotkey definitions (Ctrl keys as ASCII values)
static const int CTRL_O = 15;
static const int CTRL_S = 19;
static const int CTRL_X = 24;

// -------------------------------------------------------------------
// Cell reference parsing helpers
// -------------------------------------------------------------------

// Convert column letter(s) to 0-based index: "A"->0, "B"->1, "Z"->25, "AA"->26
static int colLetterToIndex(const string& pCol)
{
   int idx = 0;
   for (char c : pCol)
   {
      idx = idx * 26 + (std::toupper(c) - 'A' + 1);
   }
   return idx - 1;
}

// Convert 0-based column index to letter(s): 0->"A", 25->"Z", 26->"AA"
static string colIndexToLetter(int pCol)
{
   string result;
   int col = pCol;
   do
   {
      result = char('A' + (col % 26)) + result;
      col = col / 26 - 1;
   } while (col >= 0);
   return result;
}

// Parse a cell reference like "A1", "B3", "AA10" into row/col (0-based)
// Returns true if valid
static bool parseCellRef(const string& pRef, int& pRow, int& pCol)
{
   if (pRef.empty())
      return false;
   size_t i = 0;
   // Read letters
   while (i < pRef.length() && std::isalpha(pRef[i]))
      ++i;
   if (i == 0 || i >= pRef.length())
      return false;
   string colStr = pRef.substr(0, i);
   string rowStr = pRef.substr(i);
   // Row must be all digits
   for (char c : rowStr)
   {
      if (!std::isdigit(c))
         return false;
   }
   pCol = colLetterToIndex(colStr);
   pRow = std::stoi(rowStr) - 1; // 1-based to 0-based
   return (pRow >= 0 && pCol >= 0);
}

// -------------------------------------------------------------------
// Formula evaluation
// -------------------------------------------------------------------

// Try to parse a string as a double. Returns true if successful.
static bool tryParseDouble(const string& pStr, double& pVal)
{
   if (pStr.empty())
      return false;
   try
   {
      size_t pos = 0;
      pVal = std::stod(pStr, &pos);
      // Check that the entire string was consumed
      return (pos == pStr.length());
   }
   catch (...)
   {
      return false;
   }
}

// Get the numeric value of a cell. Returns false if the cell is not numeric.
static bool getCellNumericValue(cxGrid& pGrid, int pRow, int pCol, double& pVal)
{
   if (pRow < 0 || pRow >= pGrid.getNumRows() || pCol < 0 || pCol >= pGrid.getNumCols())
      return false;
   string val = pGrid.getCellValue(pRow, pCol);
   return tryParseDouble(val, pVal);
}

// Parse a range like "A1:B3" into start/end row/col
static bool parseRange(const string& pRange, int& pStartRow, int& pStartCol,
                       int& pEndRow, int& pEndCol)
{
   size_t colonPos = pRange.find(':');
   if (colonPos == string::npos)
      return false;
   string startRef = pRange.substr(0, colonPos);
   string endRef = pRange.substr(colonPos + 1);
   return parseCellRef(startRef, pStartRow, pStartCol) &&
          parseCellRef(endRef, pEndRow, pEndCol);
}

// Collect numeric values from a range or list of arguments.
// Arguments can be: cell references (A1), ranges (A1:B3), or literal numbers.
// Returns false and sets errorMsg if a non-numeric cell is encountered.
static bool collectValues(cxGrid& pGrid, const string& pArgs,
                          vector<double>& pValues, string& pErrorMsg)
{
   // Split by commas
   vector<string> tokens;
   {
      string current;
      for (char c : pArgs)
      {
         if (c == ',')
         {
            // Trim whitespace
            string tok = current;
            while (!tok.empty() && tok.front() == ' ') tok.erase(tok.begin());
            while (!tok.empty() && tok.back() == ' ') tok.pop_back();
            if (!tok.empty())
               tokens.push_back(tok);
            current.clear();
         }
         else
         {
            current += c;
         }
      }
      // Last token
      while (!current.empty() && current.front() == ' ') current.erase(current.begin());
      while (!current.empty() && current.back() == ' ') current.pop_back();
      if (!current.empty())
         tokens.push_back(current);
   }

   for (const string& tok : tokens)
   {
      // Check if it's a range (contains ':')
      if (tok.find(':') != string::npos)
      {
         int sr, sc, er, ec;
         if (!parseRange(tok, sr, sc, er, ec))
         {
            pErrorMsg = "Invalid range: " + tok;
            return false;
         }
         // Normalize
         if (sr > er) std::swap(sr, er);
         if (sc > ec) std::swap(sc, ec);
         for (int r = sr; r <= er; ++r)
         {
            for (int c = sc; c <= ec; ++c)
            {
               string cellVal = pGrid.getCellValue(r, c);
               if (cellVal.empty())
                  continue; // Skip empty cells
               double v;
               if (!tryParseDouble(cellVal, v))
               {
                  pErrorMsg = "Cell " + colIndexToLetter(c) + std::to_string(r + 1) +
                              " contains non-numeric data: \"" + cellVal + "\"";
                  return false;
               }
               pValues.push_back(v);
            }
         }
      }
      else
      {
         // Try as cell reference first
         int r, c;
         if (parseCellRef(tok, r, c))
         {
            string cellVal = pGrid.getCellValue(r, c);
            if (cellVal.empty())
               continue;
            double v;
            if (!tryParseDouble(cellVal, v))
            {
               pErrorMsg = "Cell " + colIndexToLetter(c) + std::to_string(r + 1) +
                           " contains non-numeric data: \"" + cellVal + "\"";
               return false;
            }
            pValues.push_back(v);
         }
         else
         {
            // Try as literal number
            double v;
            if (!tryParseDouble(tok, v))
            {
               pErrorMsg = "Invalid argument: \"" + tok + "\"";
               return false;
            }
            pValues.push_back(v);
         }
      }
   }
   return true;
}

// Evaluate a formula string. The formula starts with '='.
// Returns the result as a string, or sets errorMsg on failure.
static bool evaluateFormula(cxGrid& pGrid, const string& pFormula,
                            string& pResult, string& pErrorMsg)
{
   if (pFormula.empty() || pFormula[0] != '=')
   {
      pErrorMsg = "Formula must start with '='";
      return false;
   }

   string formula = pFormula.substr(1); // Remove '='
   // Trim whitespace
   while (!formula.empty() && formula.front() == ' ') formula.erase(formula.begin());
   while (!formula.empty() && formula.back() == ' ') formula.pop_back();

   // Convert to uppercase for function matching
   string upper = formula;
   for (char& c : upper)
      c = (char)std::toupper(c);

   // Find function name and arguments
   size_t parenOpen = upper.find('(');
   size_t parenClose = upper.rfind(')');

   if (parenOpen != string::npos && parenClose != string::npos && parenClose > parenOpen)
   {
      string funcName = upper.substr(0, parenOpen);
      // Use original case for args (cell refs are case-insensitive anyway)
      string args = formula.substr(parenOpen + 1, parenClose - parenOpen - 1);

      vector<double> values;
      if (!collectValues(pGrid, args, values, pErrorMsg))
         return false;

      double result = 0.0;

      if (funcName == "SUM")
      {
         for (double v : values)
            result += v;
      }
      else if (funcName == "AVERAGE" || funcName == "AVG")
      {
         if (values.empty())
         {
            pErrorMsg = "AVERAGE requires at least one value";
            return false;
         }
         for (double v : values)
            result += v;
         result /= (double)values.size();
      }
      else if (funcName == "MIN")
      {
         if (values.empty())
         {
            pErrorMsg = "MIN requires at least one value";
            return false;
         }
         result = values[0];
         for (size_t i = 1; i < values.size(); ++i)
            if (values[i] < result) result = values[i];
      }
      else if (funcName == "MAX")
      {
         if (values.empty())
         {
            pErrorMsg = "MAX requires at least one value";
            return false;
         }
         result = values[0];
         for (size_t i = 1; i < values.size(); ++i)
            if (values[i] > result) result = values[i];
      }
      else if (funcName == "COUNT")
      {
         result = (double)values.size();
      }
      else if (funcName == "ABS")
      {
         if (values.size() != 1)
         {
            pErrorMsg = "ABS requires exactly one argument";
            return false;
         }
         result = std::fabs(values[0]);
      }
      else if (funcName == "SQRT")
      {
         if (values.size() != 1)
         {
            pErrorMsg = "SQRT requires exactly one argument";
            return false;
         }
         if (values[0] < 0)
         {
            pErrorMsg = "SQRT of a negative number";
            return false;
         }
         result = std::sqrt(values[0]);
      }
      else if (funcName == "POW" || funcName == "POWER")
      {
         if (values.size() != 2)
         {
            pErrorMsg = "POWER requires exactly two arguments (base, exponent)";
            return false;
         }
         result = std::pow(values[0], values[1]);
      }
      else if (funcName == "ROUND")
      {
         if (values.size() < 1 || values.size() > 2)
         {
            pErrorMsg = "ROUND requires 1 or 2 arguments (number [, decimals])";
            return false;
         }
         int decimals = 0;
         if (values.size() == 2)
            decimals = (int)values[1];
         double factor = std::pow(10.0, decimals);
         result = std::round(values[0] * factor) / factor;
      }
      else if (funcName == "PRODUCT")
      {
         if (values.empty())
         {
            result = 0;
         }
         else
         {
            result = 1.0;
            for (double v : values)
               result *= v;
         }
      }
      else
      {
         pErrorMsg = "Unknown function: " + funcName;
         return false;
      }

      // Format result: remove trailing zeros after decimal
      std::ostringstream oss;
      oss << result;
      pResult = oss.str();
      return true;
   }

   // Check for simple arithmetic: =A1+B1, =A1-B1, =A1*B1, =A1/B1
   // Also support =cellRef (just reference another cell's value)
   // Try simple single cell reference
   {
      int r, c;
      if (parseCellRef(formula, r, c))
      {
         pResult = pGrid.getCellValue(r, c);
         return true;
      }
   }

   // Try simple binary arithmetic: value op value
   // Find operator (+, -, *, /)
   // Search from the end to handle negative numbers correctly
   for (int i = (int)formula.length() - 1; i > 0; --i)
   {
      char op = formula[i];
      if (op == '+' || op == '-' || op == '*' || op == '/')
      {
         string leftStr = formula.substr(0, i);
         string rightStr = formula.substr(i + 1);
         // Trim
         while (!leftStr.empty() && leftStr.back() == ' ') leftStr.pop_back();
         while (!leftStr.empty() && leftStr.front() == ' ') leftStr.erase(leftStr.begin());
         while (!rightStr.empty() && rightStr.back() == ' ') rightStr.pop_back();
         while (!rightStr.empty() && rightStr.front() == ' ') rightStr.erase(rightStr.begin());

         if (leftStr.empty() || rightStr.empty())
            continue;

         double leftVal = 0, rightVal = 0;

         // Left operand: cell ref or number
         int lr, lc;
         if (parseCellRef(leftStr, lr, lc))
         {
            if (!getCellNumericValue(pGrid, lr, lc, leftVal))
            {
               pErrorMsg = "Cell " + leftStr + " is not numeric";
               return false;
            }
         }
         else if (!tryParseDouble(leftStr, leftVal))
         {
            continue; // Not a valid split point
         }

         // Right operand
         int rr, rc;
         if (parseCellRef(rightStr, rr, rc))
         {
            if (!getCellNumericValue(pGrid, rr, rc, rightVal))
            {
               pErrorMsg = "Cell " + rightStr + " is not numeric";
               return false;
            }
         }
         else if (!tryParseDouble(rightStr, rightVal))
         {
            continue;
         }

         double result = 0;
         if (op == '+') result = leftVal + rightVal;
         else if (op == '-') result = leftVal - rightVal;
         else if (op == '*') result = leftVal * rightVal;
         else if (op == '/')
         {
            if (rightVal == 0)
            {
               pErrorMsg = "Division by zero";
               return false;
            }
            result = leftVal / rightVal;
         }

         std::ostringstream oss;
         oss << result;
         pResult = oss.str();
         return true;
      }
   }

   // Try as a literal number
   double numVal;
   if (tryParseDouble(formula, numVal))
   {
      std::ostringstream oss;
      oss << numVal;
      pResult = oss.str();
      return true;
   }

   pErrorMsg = "Could not evaluate: " + pFormula;
   return false;
}

// -------------------------------------------------------------------
// File I/O (simple CSV format)
// -------------------------------------------------------------------

static bool saveToFile(cxGrid& pGrid, const string& pFilePath, string& pErrorMsg)
{
   std::ofstream file(pFilePath);
   if (!file.is_open())
   {
      pErrorMsg = "Could not open file for writing: " + pFilePath;
      return false;
   }
   for (int r = 0; r < pGrid.getNumRows(); ++r)
   {
      for (int c = 0; c < pGrid.getNumCols(); ++c)
      {
         if (c > 0)
            file << '\t';
         string val = pGrid.getCellValue(r, c);
         // Escape tabs and newlines in the value
         string escaped;
         for (char ch : val)
         {
            if (ch == '\t') escaped += "\\t";
            else if (ch == '\n') escaped += "\\n";
            else escaped += ch;
         }
         file << escaped;
      }
      file << '\n';
   }
   file.close();
   return true;
}

static bool loadFromFile(cxGrid& pGrid, const string& pFilePath, string& pErrorMsg)
{
   std::ifstream file(pFilePath);
   if (!file.is_open())
   {
      pErrorMsg = "Could not open file: " + pFilePath;
      return false;
   }

   // Read all lines
   vector<vector<string>> data;
   string line;
   while (std::getline(file, line))
   {
      vector<string> row;
      string cell;
      for (size_t i = 0; i < line.length(); ++i)
      {
         if (line[i] == '\t')
         {
            row.push_back(cell);
            cell.clear();
         }
         else if (line[i] == '\\' && i + 1 < line.length())
         {
            if (line[i + 1] == 't') { cell += '\t'; ++i; }
            else if (line[i + 1] == 'n') { cell += '\n'; ++i; }
            else cell += line[i];
         }
         else
         {
            cell += line[i];
         }
      }
      row.push_back(cell);
      data.push_back(row);
   }
   file.close();

   // Determine required grid dimensions
   int numRows = (int)data.size();
   int numCols = 0;
   for (const auto& row : data)
   {
      if ((int)row.size() > numCols)
         numCols = (int)row.size();
   }

   // Resize grid if needed
   if (numRows > pGrid.getNumRows())
      pGrid.setNumRows(numRows);
   if (numCols > pGrid.getNumCols())
      pGrid.setNumCols(numCols);

   // Clear existing data
   for (int r = 0; r < pGrid.getNumRows(); ++r)
   {
      for (int c = 0; c < pGrid.getNumCols(); ++c)
      {
         pGrid.setCellValue(r, c, "");
      }
   }

   // Set data
   for (int r = 0; r < numRows; ++r)
   {
      for (int c = 0; c < (int)data[r].size(); ++c)
      {
         pGrid.setCellValue(r, c, data[r][c]);
      }
   }

   return true;
}

// -------------------------------------------------------------------
// Spreadsheet application class
// -------------------------------------------------------------------

class SpreadsheetApp
{
public:
   SpreadsheetApp()
      : mCurrentFilePath(""),
        mTermHeight(24),
        mTermWidth(80),
        mRunning(true)
   {
   }

   void run()
   {
      cxBase::init();

      cxBase::getTermDimensions(mTermHeight, mTermWidth);

      // Create the menu bar (row 0, full width)
      cxMenuBar menuBar(nullptr, 0, 0, mTermWidth);
      menuBar.setBarColor(eWHITE_BLUE);
      menuBar.setHighlightColor(eBLACK_WHITE);

      // File menu
      cxMenu fileMenu(nullptr, 1, 0, 8, 28, "");
      fileMenu.append("&Open        Ctrl+O", MENU_FILE_OPEN, "", cxITEM_NORMAL, true);
      fileMenu.append("&Save        Ctrl+S", MENU_FILE_SAVE, "", cxITEM_NORMAL, true);
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
      int appQuitKeys[] = { CTRL_O, CTRL_S, CTRL_X, KEY_F(1), KEY_F(10) };
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
         if (lastKey == CTRL_O)
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
               // Click on menu bar row - open the menu bar
               menuBar.show();
               long menuResult = menuBar.showModal();
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

      cxBase::cleanup();
   }

private:
   string mCurrentFilePath;
   int mTermHeight;
   int mTermWidth;
   bool mRunning;

   void drawStatusLine()
   {
      string statusText = " F1:Help | F10/ESC:Menu | Ctrl+O:Open | Ctrl+S:Save | Ctrl+X:Exit";
      // Pad or truncate to terminal width
      if ((int)statusText.length() < mTermWidth)
         statusText += string(mTermWidth - statusText.length(), ' ');
      else
         statusText = statusText.substr(0, mTermWidth);
      cxBase::writeText(mTermHeight - 1, 0, statusText, A_NORMAL, eWHITE_BLUE);
   }

   void handleMenuAction(long pCode, cxGrid& pGrid)
   {
      switch (pCode)
      {
         case MENU_FILE_OPEN:
            doOpen(pGrid);
            break;
         case MENU_FILE_SAVE:
            doSave(pGrid);
            break;
         case MENU_FILE_CLOSE:
            doClose(pGrid);
            break;
         case MENU_FILE_EXIT:
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

   void doOpen(cxGrid& pGrid)
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
            cxBase::messageBox("File loaded: " + filePath, "");
         }
         else
         {
            cxBase::messageBox("Error: " + errorMsg, "");
         }
      }
   }

   void doSave(cxGrid& pGrid)
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
         cxBase::messageBox("File saved: " + filePath, "");
      }
      else
      {
         cxBase::messageBox("Error: " + errorMsg, "");
      }
   }

   void doClose(cxGrid& pGrid)
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

   void doHelp()
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
         "  Ctrl+O       Open a file\n"
         "  Ctrl+S       Save the current file\n"
         "  Ctrl+X       Exit the application\n";

      int helpHeight = mTermHeight - 4;
      int helpWidth = mTermWidth - 10;
      if (helpWidth < 50) helpWidth = 50;
      if (helpHeight < 10) helpHeight = 10;
      int helpRow = (mTermHeight - helpHeight) / 2;
      int helpCol = (mTermWidth - helpWidth) / 2;

      cxScrolledWindow helpWin(nullptr, helpRow, helpCol,
                               helpHeight, helpWidth,
                               " Help ", helpText,
                               " ESC to close ");
      helpWin.showModal();
      helpWin.hide();
   }

   void doAbout()
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
   void processFormulas(cxGrid& pGrid)
   {
      int focusRow = pGrid.getFocusRow();
      int focusCol = pGrid.getFocusCol();
      string val = pGrid.getCellValue(focusRow, focusCol);

      if (!val.empty() && val[0] == '=')
      {
         string result;
         string errorMsg;
         if (evaluateFormula(pGrid, val, result, errorMsg))
         {
            pGrid.setCellValue(focusRow, focusCol, result);
         }
         else
         {
            cxMessageDialog errDlg(nullptr, " Formula Error ", errorMsg);
            errDlg.center();
            errDlg.showModal();
            errDlg.hide();
         }
      }
   }
};

// -------------------------------------------------------------------
// Main
// -------------------------------------------------------------------

int main()
{
   SpreadsheetApp app;
   app.run();
   return 0;
}

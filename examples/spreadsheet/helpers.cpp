#include "helpers.h"

#include <string>
#include <vector>
#include <map>
#include <sstream>
#include <fstream>
#include <algorithm>
#include <cctype>
#include <regex>
#include <memory>
#include <set>
#include <ctime>
#include <cmath>

using namespace cx;
using std::string;
using std::vector;

// -------------------------------------------------------------------
// Cell reference parsing helpers
// -------------------------------------------------------------------

// Convert column letter(s) to 0-based index: "A"->0, "B"->1, "Z"->25, "AA"->26
int colLetterToIndex(const string& pCol)
{
   int idx = 0;
   for (char c : pCol)
   {
      idx = idx * 26 + (std::toupper(c) - 'A' + 1);
   }
   return idx - 1;
}

// Convert 0-based column index to letter(s): 0->"A", 25->"Z", 26->"AA"
string colIndexToLetter(int pCol)
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
bool parseCellRef(const string& pRef, int& pRow, int& pCol)
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
bool tryParseDouble(const string& pStr, double& pVal)
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
bool getCellNumericValue(cxGrid& pGrid, int pRow, int pCol, double& pVal)
{
   if (pRow < 0 || pRow >= pGrid.getNumRows() || pCol < 0 || pCol >= pGrid.getNumCols())
      return false;
   string val = pGrid.getCellValue(pRow, pCol);
   return tryParseDouble(val, pVal);
}

// Parse a range like "A1:B3" into start/end row/col
bool parseRange(const string& pRange, int& pStartRow, int& pStartCol,
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
bool collectValues(cxGrid& pGrid, const string& pArgs,
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
bool evaluateFormula(cxGrid& pGrid, const string& pFormula,
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

bool saveToFile(cxGrid& pGrid, const string& pFilePath, string& pErrorMsg)
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

bool loadFromFile(cxGrid& pGrid, const string& pFilePath, string& pErrorMsg)
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
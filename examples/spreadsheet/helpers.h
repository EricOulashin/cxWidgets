#ifndef __HELPERS_H__
#define __HELPERS_H__


#include <cxGrid.h>

#include <string>
#include <vector>


// -------------------------------------------------------------------
// Cell reference parsing helpers
// -------------------------------------------------------------------

// Convert column letter(s) to 0-based index: "A"->0, "B"->1, "Z"->25, "AA"->26
int colLetterToIndex(const std::string& pCol);

// Convert 0-based column index to letter(s): 0->"A", 25->"Z", 26->"AA"
std::string colIndexToLetter(int pCol);

// Parse a cell reference like "A1", "B3", "AA10" into row/col (0-based)
// Returns true if valid
bool parseCellRef(const std::string& pRef, int& pRow, int& pCol);

// -------------------------------------------------------------------
// Formula evaluation
// -------------------------------------------------------------------

// Try to parse a string as a double. Returns true if successful.
bool tryParseDouble(const std::string& pStr, double& pVal);

// Get the numeric value of a cell. Returns false if the cell is not numeric.
bool getCellNumericValue(cx::cxGrid& pGrid, int pRow, int pCol, double& pVal);

// Parse a range like "A1:B3" into start/end row/col
bool parseRange(const std::string& pRange, int& pStartRow, int& pStartCol,
                       int& pEndRow, int& pEndCol);

// Collect numeric values from a range or list of arguments.
// Arguments can be: cell references (A1), ranges (A1:B3), or literal numbers.
// Returns false and sets errorMsg if a non-numeric cell is encountered.
bool collectValues(cx::cxGrid& pGrid, const std::string& pArgs,
                          std::vector<double>& pValues, std::string& pErrorMsg);

// Evaluate a formula string. The formula starts with '='.
// Returns the result as a string, or sets errorMsg on failure.
bool evaluateFormula(cx::cxGrid& pGrid, const std::string& pFormula,
                            std::string& pResult, std::string& pErrorMsg);

// -------------------------------------------------------------------
// File I/O (simple CSV format)
// -------------------------------------------------------------------

bool saveToFile(cx::cxGrid& pGrid, const std::string& pFilePath, std::string& pErrorMsg);

bool loadFromFile(cx::cxGrid& pGrid, const std::string& pFilePath, std::string& pErrorMsg);

#endif
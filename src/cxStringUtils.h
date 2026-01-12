#ifndef __CXSTRINGUTILS_H__
#define __CXSTRINGUTILS_H__

/* cxStringUtils.h - String utility functions
 *
 * Copyright (c) 2004-2007 Michael H. Kinney
 */

#include <regex.h>
#include <cctype>  // For isdigit(), isalpha, etc.
#include <string>
#include <vector>
#include <list>
#include <sstream>
using std::string;
using std::vector;
using std::list;
using std::ostringstream;

#include "cxReturnCodes.h"
#include "cxKeyDefines.h"
#include "cxInputOptions.h"
#include "cxBorderStyles.h"

/** \namespace cxStringUtils
 *
 * \brief String utility functions
 * \version $Revision: 1.15 $
 * \date $Date: 2007/12/04 00:23:46 $
 * 
 */

namespace cxStringUtils {
   /**
    * Splits a string based on a regular expression, similar to Perl's split function.
    * @param input String to split
    * @param regex Regular expression used to split string
    * @param resultContainer Conainer for strings split off from input
    */
   void SplitStringRegex(const string& input, const string& regex,
          vector<string>& resultContainer);

   /**
    * Performs a regular expression search on a string.
    * Returns true or false, depending on whether or not
    * the regex was found.
    * @param input The string to search
    * @param regex Regular expression to search for
    * @param useBasicRegex Specifies whether to use basic regular
    *  expressions (when false, extended regular exprssions
    *  are used).
    * @return Indicates whether expression found
    */
   bool Find(const string& input, const string& regex, bool useBasicRegex = false);

   /**
    * Performs a regular expression search on a string and copies the resulting string into output.
    * @param input  The string to search
    * @param regex Regular expression to search for
    * @param output Result string copied here
    */
   void Find(const string& input, const string& regex, string& output);

   /**
    * Performs a search & replace basd on a regular expression
    *  search pattern & a replacement string (the replacemnt
    *  string supports backquoting of named paranthetical
    *  buffers, i.e. \\1, \\2, etc.).  Returns whether or not
    *  the regular expression string was found.
    * @param srcStr The string on which to perform the search/replace operation
    * @param regexStr Regular expression to search for
    * @param replacementStr String to replace target with
    * @return Indicates whether regular expression found
    */
   bool Replace(string& srcStr, const string& regexStr, const string& replacementStr);

   /** \brief Replaces substrings of a string with another string.
     * @param input The string to be modified
     * @param search The substring to be replaced
     * @param replace The string to replace the search string
     * @return The resulting string with replacements done
     */
   string replace(const string& input, const string& search, const string& replace);

   /**
    * \brief Converts a string to another type.  
    * @param s A string to be converted.
    * @return The value of the string converted to the given type
    */
   int stringTo(const string& s);
   long stringToLong(const string& s);
   unsigned stringToUnsigned(const string& s);
   double stringToDouble(const string& s);
   long double stringToLongDouble(const string& s);
   string stringToString(const string& s);

   void test_stringTo();

   /**
    * \brief Converts an object to a string, i.e.:
    * \verbatim
    int x = 12;
    string xStr = toString(x);
    * \endverbatim
    *
    * @param x An object to be converted to a string
    *
    * @return The string representation of the object
    */
   string toString(const int& x);
   string toString(const long& x);
   string toString(const double& x);
   string toString(const long double& x);
   string toString(const unsigned& x);
   string toString(const unsigned long& x);
   string toString(const eReturnCode& x);
   string toString(const eInputOptions& x);
   string toString(const eBorderStyle& x);
   string toString(const void* x);

   void test_toString();

   /**
    * Returns whether a string starts with a number (positive or negative).
    * @param pStr The string to test
    * @return Whether or not the string starts with a number
    */
   bool startsWithNumber(const string& pStr);

   /**
    * \brief Returns whether or not a key is printable.  This should be used
    * \brief instead of isprint() because isprint() returns true for some keys
    * \brief that cxWidgets does not consider printable, such as pageUp,
    * \brief pageDown, insert, and mouse clicks.
    *
    * @param pKey A key to check
    *
    * @return Whether or not the key is printable
    */
   bool isPrintable(const int& pKey);

   /**
    * \brief Returns the index of the last capital letter in a string.  Returns -1 if there are no capital letters.
    *
    * @param pStr The string to search
    *
    * @return The index of the last capital letter in pStr, or -1 if there isn't one.
    */
   int indexOfLastCap(const string& pStr);

   /**
    * \brief Converts a string to upper-case
    *
    * @param theString The string to be converted
    */
   void toUpper(string& theString);

   /**
    * \brief Strips newlines characters from a string and returns
    * \brief the new version of the string.
    *
    * @param pStr A string to process
    *
    * @return A version of pStr without newline characters
    */
   string stripNewlines(const string& pStr);

   /**
    * \brief Replaces newlines in a string with another character.
    *
    * @param pStr The string to process
    * @param pChar The character to replace newlines with
    *
    * @return A copy of pStr with newlines replaced with pChar.
    */
   string replaceNewlines(const string& pStr, const char& pChar);

   /**
    * \brief Inserts an underline character into
    * \brief a string for a character.
    *
    * @param pStr The string into which to insert
    *  an underline
    * @param pChar The character for which to
    *  insert an underline character
    * @param pAll Whether or not to underline all occurances
    *  of the character in the string (defaults to false)
    */
   void insertUnderline(string& pStr, char pChar, bool pAll = false);

   /**
    * \brief Removes a character from a string.
    *
    * @param pString The string to remove the character from
    * @param pPos The index of the character to remove
    *
    * @return The new string with the character removed
    */
   string removeChar(const string& pString, const int pPos);

   /** 
    * @brief conver the string to upper case
    * 
    * @param theString to convert
    * 
    * @return the converted string
    */
   string strToUpper(const string& theString);

   /** 
    * @brief conver the string to lower case
    * 
    * @param theString to convert
    * 
    * @return the converted string
    */
   string strToLower(const string& theString);

   /**
    * \brief Trims leading & trailing spaces from a string.
    *
    * @param str (INOUT) This string will get its leading & trailing spaces
    *  trimmed.
    */
   void TrimSpaces(string& str);

   /**
    * \brief Splits a string on newlines.
    *
    * @param pStr The string to split
    * @param pStrings (OUT) This will contain the resulting lines
    */
   void splitStringOnNewlines(const string& pStr, list<string>& pStrings);

} // End of stringUtils namespace

#endif

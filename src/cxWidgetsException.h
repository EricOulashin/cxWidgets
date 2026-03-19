// Copyright (c) 2026 E. Oulashin
#ifndef __CXWIDGETSEXCEPTION_H__
#define __CXWIDGETSEXCEPTION_H__

// Copyright (c) 2005-2007 Michael H. Kinney

#include <string>

namespace cx {

/** \class cxWidgetsException
 *  \brief Represents an exception in cxWidgets
 *  \brief with an error string.
 *  If something goes wrong in cxWidgets, one
 *  of these exceptions will be thrown.  At the
 *  very least, your main program should include
 *  its code in a try/catch and should catch a
 *  const cxWidgetsException&.  The error message
 *  can be retreived via the getErrorMsg() method.
 *
*/
class cxWidgetsException
{
   public:
      /**
       * \brief Default constructor
       *
       * @param pErrorMsg A string describing an error
       */
      explicit cxWidgetsException(const std::string& pErrorMsg = "");

      virtual ~cxWidgetsException();

      /**
       * \brief Returns the error message
       *
       * @return The error message
       */
      const std::string& getErrorMsg() const;

      /**
       * \brief Returns the name of the cxWidgets class.  This can be used to
       * \brief determine the type of cxWidgets object that deriving classes
       * \brief derive from in applications.
       *
       * @return The name of the cxWidgets class.
       */
      virtual std::string cxTypeStr() const;

   private:
      std::string mErrorMsg;
};

} // namespace cx

#endif

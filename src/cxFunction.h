#ifndef __CXFUNCTION_H__
#define __CXFUNCTION_H__

/*
 * cxFunction.h - function  
 *
 * Copyright (C) 2005-2007 Michael H. Kinney
 *
 * \author $Author: erico $
 * \version $Revision: 1.16 $
 * \date $Date: 2007/12/04 00:23:46 $
 *
 */

#include <string>

// Typedefs for various function pointer types
typedef std::string (*funcPtr0)();
typedef std::string (*funcPtr2)(void *p1, void *p2);
typedef std::string (*funcPtr4)(void *p1, void *p2, void *p3, void *p4);

/**
 * \class cxFunction
 * \brief Base class for cxFunction2 and cxFunction4.  This class is pure
 * \brief virtual, and this can be used in collections where a set of
 * \brief cxFunction2 and/or cxFunction4 objects are needed.
 */
class cxFunction {
   public:
      /**
       * \brief Constructor
       *
       * @param pUseReturnVal Whether or not the caller should use the return
       *  value of the function
       * @param pExitAfterRun Whether or not the caller should exit after the
       *  function is run
       * @param pRunOnLeaveFunction Whether or not the caller should run its
       *  onLeave function after the function runs (if pExitAfterRun is true)
       */
      cxFunction(bool pUseReturnVal, bool pExitAfterRun, bool pRunOnLeaveFunction);

      virtual ~cxFunction();

      /**
       * Returns whether the internal function pointer is set (non-null).
       * @return Returns true if the internal function pointer is set (not null), or false otherwise.
       */
      virtual bool functionIsSet() const = 0;

      /**
       * \brief Runs the function pointed to by the cxFunction.  This is a
       * \brief pure virtual method and must be overridden in deriving classes.
       *
       * @return Returns return value of function pointed to if pointer is not null,
       *		otherwise returns empty string.
       */
      virtual std::string runFunction() const = 0;

      /**
       * \brief Accessor for whether the caller should use the return value
       * \brief of the function.
       *
       * @return Whether or not the caller should use the return value of
       *  the function
       */
      virtual bool getUseReturnVal() const;

      /**
       * \brief Setter for whether or not the caller should make use of the return value.
       *
       * @param pUseReturnVal Whether or nto the caller should make use of
       *  the return value
       */
      virtual void setUseReturnVal(bool pUseReturnVal);

      /**
       * \brief Accessor for whether the caller should exit after the function
       * \brief is run.
       *
       * @return Whether or not the caller should exit after the function is run
       */
      virtual bool getExitAfterRun() const;

      /**
       * \brief Setter for whether or not the caller should quit what
       * \brief it's doing (i.e., input loops, etc.) after the function is run.
       *
       * @param pExitAfterRun Whether or nto the caller should quit what it's
       *  doing after the function is run.
       */
      virtual void setExitAfterRun(bool pExitAfterRun);

      /**
       * \brief Accessor for whether the caller should run its onLeave function
       * \brief after the function is run (if exitAfterRun is true).
       *
       * @return Whether or not the caller should run its onLeav function
       *  after the function is run (if exitAfterRun is true).
       */
      virtual bool getRunOnLeaveFunction() const;

      /**
       * \brief Setter for whether or not the caller should run its
       * \brief onLeave function when it exits after running the function.
       * \brief This is useful if mExitAfterRun is true.
       *
       * @param pRunOnLeaveFunction Whether or not the caller should run
       *  its onLeave function when it exits after running the function.
       */
      virtual void setRunOnLeaveFunction(bool pRunOnLeaveFunction);

      /**
       * \brief Returns the name of the class (either "cxFunction2"
       * \brief or "cxFunction4", depending on the derived implementation).
       *
       * @return The name of the cxWidgets class.
       */
      virtual std::string cxTypeStr() const = 0;

   private:
      bool mUseReturnVal;
      bool mExitAfterRun;
      bool mRunOnLeaveFunction;
}; // end of class cxFunction

/** \class cxFunction0
 * \brief A more intelligent function pointer, which can run a
 * \brief function that takes no parameters.  Note that
 * \brief the function must have the following signature:<br>
 * \brief  string func()<br>
 *
 * \author Eric Oulashin
 * \author Mike Kinney
 * \version $Revision: 1.16 $
 * \date $Date: 2007/12/04 00:23:46 $
*/
class cxFunction0 : public cxFunction {
   public:
      /**
       * \brief Default constructor.  All parameters have default values
       * \brief available.  Note that function must have this signature:
       * \brief string func(void*, void*)
       *
       * @param pFuncPtr Pointer to the function to be run.  Defaults to null.
       * @param pUseReturnVal Indicates whether caller will make use of return
       *  value.  Defaults to false
       * @param pExitAfterRun Whether or not the caller should exit from its
       *  input loop once the function is done.  Defaults to false.
       * @param pRunOnLeaveFunction Whether or not the caller should run its
       *  onLeave function when it exits (useful if pExitAfterRun is true).
       *  This defaults to true.
       */
      explicit cxFunction0(funcPtr0 pFuncPtr = nullptr, bool pUseReturnVal = false,
                           bool pExitAfterRun = false,
                           bool pRunOnLeaveFunction = true);

      /**
       * Destructor
       */
      virtual ~cxFunction0();

      /**
       * Returns whether the internal funtion pointer is set.
       * @return Returns true if the internal function pointer is set (not null), or false otherwise.
       */
      virtual bool functionIsSet() const;

      /**
       * Sets the internal function pointer
       * @param pFuncPtr The function to which to point
       */
      void setFunction(funcPtr0 pFuncPtr);

      /**
       * \brief Accessor for the internal function pointer
       *
       * @return The internal function pointer
       */
      funcPtr0 getFunction() const;

      /**
       * If function pointer is not null, runs the function and returns its return value;
       * If function pointer is nullptr, returns empty string
       * @return Returns return value of function pointed to if pointer is not null,
       *		otherwise returns empty string
       */
      virtual std::string runFunction() const;

      /**
       * \brief Returns the name of the cxWidgets class, "cxFunction0".  This can be
       * \brief used to determine the type of cxWidgets object that deriving
       * \brief classes derive from in applications.
       *
       * @return The name of the cxWidgets class ("cxFunction0").
       */
      virtual std::string cxTypeStr() const;

   private:
      funcPtr0 mFunction; // This is the actual function pointer
}; // end of class cxFunction2

/** \class cxFunction2
 * \brief A more intelligent function pointer, which can run a function with
 * \brief 2 parameters.  This is used for running external code for an event
 * \brief (such as a keypress,  etc.).  This class also stores whether the
 * \brief function's return value should be used.  Note that the function must
 * \brief have the following signature:<br>
 * \brief   string func(void*, void*)<br>
 *  The parameters are void pointers
 *  because it can't be known by this
 *  class what types of objects your
 *  functions will need.
 *  This class lets you set the function
 *  pointer, a boolean to signify whether
 *  the caller should make use of the
 *  return value, and also set the
 *  parameters to be passed to the
 *  function.  This class was originally
 *  intended for use with cxInput and
 *  cxMultiLineInput, so this class
 *  also has a boolean to specify whether
 *  the input should exit its input
 *  upon exit of the function.
 *
 * \author Eric Oulashin
 * \author Mike Kinney
 * \version $Revision: 1.16 $
 * \date $Date: 2007/12/04 00:23:46 $
*/
class cxFunction2 : public cxFunction {
   public:
      /**
       * \brief Default constructor.  All parameters have default values
       * \brief available.  Note that function must have this signature:
       * \brief string func(void*, void*)
       *
       * @param pFuncPtr Pointer to the function to be run.  Defaults to nullptr.
       * @param pParam1 The first parameter to pass to the function when it's
       *  run - This is a void pointer.
       * @param pParam2 The second parameter to pass to the function when it's
       *  run - This is a void pointer.
       * @param pUseReturnVal Indicates whether caller will make use of return
       *  value.  Defaults to false
       * @param pExitAfterRun Whether or not the caller should exit from its
       *  input loop once the function is done.  Defaults to false.
       * @param pRunOnLeaveFunction Whether or not the caller should run its
       *  onLeave function when it exits (useful if pExitAfterRun is true).
       *  This defaults to true.
       */
      explicit cxFunction2(funcPtr2 pFuncPtr = nullptr, void *pParam1 = nullptr,
                           void *pParam2 = nullptr, bool pUseReturnVal = false,
                           bool pExitAfterRun = false,
                           bool pRunOnLeaveFunction = true);

      /**
       * Destructor
       */
      virtual ~cxFunction2();

      /**
       * Returns whether the internal funtion pointer is set.
       * @return Returns true if the internal function pointer is set (not null), or false otherwise.
       */
      virtual bool functionIsSet() const;

      /**
       * Sets the internal function pointer
       * @param pFuncPtr The function to which to point
       */
      void setFunction(funcPtr2 pFuncPtr);

      /**
       * \brief Accessor for the internal function pointer
       *
       * @return The internal function pointer
       */
      funcPtr2 getFunction() const;

      /**
       * Sets the parameters to pass to the function.
       * @param pParam1 First parameter to pass to function
       * @param pParam2 Second parameter to pass to function
       */
      void setParams(void *pParam1, void *pParam2);

      /**
       * Sets the first parameter
       * @param pParam First parameter to pass to function
       */
      void setParam1(void *pParam);

      /**
       * Sets the second parameter
       * @param pParam Second parameter to pass to function
       */
      void setParam2(void *pParam);

      /**
       * Accessor for the first function parameter
       * @return Returns pointer to first parameter
       */
      void* getParam1() const;

      /**
       * Accessor for the second function pointer
       * @return Returns pointer to second parameter
       */
      void* getParam2() const;

      /**
       * If function pointer is not null, runs the function and returns its return value;
       * If function pointer is nullptr, returns empty string
       * @return Returns return value of function pointed to if pointer is not null,
       *		otherwise returns empty string
       */
      virtual std::string runFunction() const;

      /**
       * \brief Returns the name of the cxWidgets class, "cxFunction2".  This can be
       * \brief used to determine the type of cxWidgets object that deriving
       * \brief classes derive from in applications.
       *
       * @return The name of the cxWidgets class ("cxFunction2").
       */
      virtual std::string cxTypeStr() const;

   private:
      funcPtr2 mFunction; // The actual function pointer
      void *mParam1;  // The first parameter to pass to the function
      void *mParam2;  // The second parameter to pass to the function
}; // end of class cxFunction2

/** \class cxFunction4
 * \brief This class is just like cxFunction2, but for functions
 * \brief  with 4 void pointer parameters instead of 2.
 *
*/
class cxFunction4 : public cxFunction {
   public:
      /**
       * \brief Default constructor.  All parameters have default values
       * \brief available.  Note that function must have this signature:
       * \brief string func(void*, void*)
       *
       * @param pFuncPtr Pointer to the function to be run.  Defaults to nullptr.
       * @param pParam1 The first parameter to pass to the function when it's
       *  run - This is a void pointer.
       * @param pParam2 The second parameter to pass to the function when it's
       *  run - This is a void pointer.
       * @param pParam3 The 3rd parameter to pass to the function when it's
       *  run - This is a void pointer.
       * @param pParam4 The 4th parameter to pass to the function when it's
       *  run - This is a void pointer.
       * @param pUseReturnVal Indicates whether caller will make use of return
       *  value.  Defaults to false
       * @param pExitAfterRun Whether or not the caller should exit from its
       *  input loop once the function is done.  Defaults to false.
       * @param pRunOnLeaveFunction Whether or not the caller should run its
       *  onLeave function when it exits (useful if pExitAfterRun is true).
       *  This defaults to true.
       */
      explicit cxFunction4(funcPtr4 pFuncPtr = nullptr, void *pParam1 = nullptr,
                           void *pParam2 = nullptr, void *pParam3 = nullptr,
                           void *pParam4 = nullptr, bool pUseReturnVal = false,
                           bool pExitAfterRun = false,
                           bool pRunOnLeaveFunction = true);

      /**
       * Destructor
       */
      virtual ~cxFunction4();

      /**
       * Returns whether the internal funtion pointer is set.
       * @return Returns true if the internal function pointer is set (not null), or false otherwise.
       */
      virtual bool functionIsSet() const;

      /**
       * Sets the internal function pointer
       * @param pFuncPtr The function to which to point
       */
      void setFunction(funcPtr4 pFuncPtr);

      /**
       * \brief Accessor for the internal function pointer
       *
       * @return The internal function pointer
       */
      funcPtr4 getFunction() const;

      /**
       * Sets the parameters to pass to the function.
       * @param pParam1 First parameter to pass to function
       * @param pParam2 Second parameter to pass to function
       * @param pParam3 3rd parameter to pass to function
       * @param pParam4 4th parameter to pass to function
       */
      void setParams(void *pParam1, void *pParam2, void *pParam3, void *pParam4);

      /**
       * Sets the first parameter
       * @param pParam First parameter to pass to function
       */
      void setParam1(void *pParam);

      /**
       * Sets the second parameter
       * @param pParam Second parameter to pass to function
       */
      void setParam2(void *pParam);

      /**
       * Sets the 3rd parameter
       * @param pParam 3rd parameter to pass to function
       */
      void setParam3(void *pParam);

      /**
       * Sets the 4th parameter
       * @param pParam 4th parameter to pass to function
       */
      void setParam4(void *pParam);

      /**
       * Accessor for the first function parameter
       * @return Returns pointer to first parameter
       */
      void* getParam1() const;

      /**
       * Accessor for the second function parameter
       * @return Returns pointer to second parameter
       */
      void* getParam2() const;

      /**
       * Accessor for the 3rd function parameter
       * @return Returns pointer to first parameter
       */
      void* getParam3() const;

      /**
       * Accessor for the 4th function parameter
       * @return Returns pointer to second parameter
       */
      void* getParam4() const;

      /**
       * If function pointer is not null, runs the function and returns its return value;
       * If function pointer is nullptr, returns empty string
       * @return Returns return value of function pointed to if pointer is not null,
       *    otherwise returns empty string
       */
      virtual std::string runFunction() const;

      /**
       * \brief Returns the name of the cxWidgets class, "cxFunction4".  This can be
       * \brief used to determine the type of cxWidgets object that deriving
       * \brief classes derive from in applications.
       *
       * @return The name of the cxWidgets class ("cxFunction4").
       */
      virtual std::string cxTypeStr() const;

   private:
      funcPtr4 mFunction; // The actual function pointer
      void *mParam1;  // The first parameter to pass to the function
      void *mParam2;  // The second parameter to pass to the function
      void *mParam3;  // The 3rd parameter to pass to the function
      void *mParam4;  // The 4th parameter to pass to the function
};

#endif

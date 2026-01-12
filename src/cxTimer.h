#ifndef __CXTIMER_H__
#define __CXTIMER_H__

// Copyright (c) 2005-2007 Michael H. Kinney
// This class should be compiled with the
// pthreads library.

#include "cxFunction.h"

/**
 * \brief Represents a timer that will run a function after
 * \brief  a specified number of milliseconds.  <b>This class is not
 * \brief  finished yet and currently shouldn't be used</b>.
 */
class cxTimer {
   public:
      /**
       * \brief Constructor
       *
       * @param pFuncPtr A pointer to the function to run once the time is up
       * @param p1 Pointer to the first parameter to the function
       * @param p2 Pointer to the second parameter to the function
       * @param p3 Pointer to the third parameter to the function
       * @param p4 Pointer to the fourth parameter to the function
       * @param pDelayMS The amount of time (in milliseconds) to delay before firing the function
       */
      cxTimer(funcPtr4 pFuncPtr, void* p1, void* p2, void* p3, void* p4, unsigned pDelayMS);

      virtual ~cxTimer();

      /**
       * \brief Starts the timer
       */
      virtual void start();

      /**
       * \brief Stops the timer
       */
      virtual void stop();

      /**
       * \brief Returns the name of the cxWidgets class.  This can be used to
       * \brief determine the type of cxWidgets object that deriving classes
       * \brief derive from in applications.
       *
       * @return The name of the cxWidgets class.
       */
      virtual string cxTypeStr() const;

   private:
      cxFunction4 mFunction; // The function to run after the delay
      unsigned mDelay; // The delay in MS
      int mPID; // The process ID of wait()

      // Waits a number of milliseconds equal to mDelay
      //  and then runs the function.
      void wait();
};

#endif

// Copyright (c) 2005-2007 Michael H. Kinney

#include "cxTimer.h"
#include <time.h>

// TODO: Make use of pthreads so that the
//  wait() function runs in the background

cxTimer::cxTimer(funcPtr4 pFuncPtr, void* p1, void* p2, void* p3, void* p4, unsigned pDelayMS)
   : mFunction(pFuncPtr, p1, p2, p3, p4, false, false, false),
     mDelay(pDelayMS)
{
   mFunction.setParams(p1, p2, p3, p4);
   start();
}

cxTimer::~cxTimer() {
}

void cxTimer::start() {
   wait();
}

void cxTimer::stop() {
}

std::string cxTimer::cxTypeStr() const {
   return("cxTimer");
} // cxTypeStr

void cxTimer::wait() {
   // Figure out the number of clocks per millisecond,
   // the current time, and the time we need to stop
   // waiting.
   const unsigned long clocksPerMS = CLOCKS_PER_SEC / 1000;
   clock_t now = clock();
   const clock_t endTime = now + (mDelay * clocksPerMS);

   // Wait until the correct time
   while (now < endTime) {
      now = clock();
   }

   // Run the function
   mFunction.runFunction();
}

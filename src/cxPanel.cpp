// Copyright (c) 2006-2007 Michael H. Kinney

#include "cxPanel.h"
#include "cxButton.h"
#include "cxForm.h"
#include "cxMultiForm.h"
#include <typeinfo>  // for try/catch
#include <exception> // for try/catch

// Note to developers: When calling the panel's top(), bottom(), or height(),
//  fully scope them, as in cxPanel::top(), cxPanel::bottom(), cxPanel::height().
//  This is because these methods could be overridden in a deriving class to
//  return something a little different than this class expects.

cxPanel::cxPanel(cxWindow *pParentWindow, int pRow, int pCol, int pHeight,
                 int pWidth, const string& pTitle, const string& pMessage,
                 const string& pStatus, eBorderStyle pBorderStyle,
                 cxWindow *pExtTitleWindow, cxWindow *pExtStatusWindow,
                 bool pMessageUnderlines)
   : cxWindow(pParentWindow, pRow, pCol, pHeight, pWidth, pTitle, pMessage,
              pStatus, pBorderStyle, pExtTitleWindow, pExtStatusWindow,
              pMessageUnderlines),
     mCycleWin(true),
     mLastWindow(NULL),
     // mWindowIter is initialized to mWindows.begin(), but it will be
     //  invalidated when a window is added to the panel.  mWindowIter is
     //  reset in appendWindowPtr() (which is called by append()) to make sure
     //  that it is still valid.
     mWindowIter(mWindows.begin()),
     mExitOnLeaveLast(false),
     mExitOnLeaveFirst(false),
     mAllowExit(true),
     mAllowQuit(true),
     mShowPanelWindow(true)
{
} // constructor

cxPanel::~cxPanel() {
   // Free the memory used by the cxWindow pointers
   //  in mWindows.
   // Note: cxWindow's destructor removes itself from its parent's window
   //  collection, so we should not try to remove them from mWindows here.
   //  Also, this uses a while loop instead of a for loop so that we don't
   //  skip over any windows.
   //  The reason it needs to be done this way in this class is that the
   //  windows belonging to a cxPanel have their parent window pointer set
   //  to the panel.
   cxPanel::cxWindowPtrCollection::iterator iter;
   while (mWindows.size() > 0) {
      iter = mWindows.begin();
      if (*iter != NULL) {
         delete (*iter);
      }
   }
} // destructor

long cxPanel::showModal(bool pShowSelf, bool pBringToTop, bool pShowSubwindows) {
   setReturnCode(cxID_EXIT);

   if (isEnabled()) {
      // Run the onFocus function.  If runOnFocusFunction() returns true, that
      //  means we should exit.. so only do the input loop if it returns false.
      //  Also, check to make sure that getLeaveNow() returns false, in case
      //  the onFocus function called exitNow() or quitNow().
      if (!runOnFocusFunction() && !getLeaveNow()) {
         // Set mIsModal true here (this should be done after the onFocus
         //  function runs, in case it calls setCurrentWindow()).
         mIsModal = true;
         // Don't bring the panel to the top, unless the parent of
         //  this panel is a cxSearchPanel, cxNotebook, or another cxPanel.
         bool bringToTop = false;
         // Note: For some reason, this if test always seems to confuse gdb.
         //  If you're stepping through an application, when it gets to
         //  this line, it seems to continue on running the program without
         //  stopping.
         if (getParent() != NULL) {
            string parentType = getParent()->cxTypeStr();
            if ((parentType == "cxPanel") || (parentType == "cxSearchPanel") ||
                (parentType == "cxNotebook")) {
               bringToTop = pBringToTop;
            }
         }

         // Show the panel (if pShowSelf is true), and
         //  do the input loop.
         if (pShowSelf) {
            show(bringToTop, pShowSubwindows);
         }
         bool runOnLeaveFunc = true;
         setReturnCode(doInputLoop(!pShowSelf, runOnLeaveFunc));
         mIsModal = false;
         // Run the onLeave function
         if (runOnLeaveFunc) {
            runOnLeaveFunction();
         }
      }
      else {
         mIsModal = false;
      }
   }

   return(getReturnCode());
} // showModal

bool cxPanel::getExitOnLeaveLast() const {
   return(mExitOnLeaveLast);
} // getExitOnLeaveLast

void cxPanel::setExitOnLeaveLast(bool pExitOnLeaveLast) {
   mExitOnLeaveLast = pExitOnLeaveLast;
} // setExitOnLeaveLast

bool cxPanel::getExitOnLeaveFirst() const {
   return(mExitOnLeaveFirst);
} // getExitOnLeaveFirst

void cxPanel::setExitOnLeaveFirst(bool pExitOnLeaveFirst) {
   mExitOnLeaveFirst = pExitOnLeaveFirst;
} // setExitOnLeaveFirst

unsigned cxPanel::numWindows() const {
   return(mWindows.size());
} // numWindows

cxWindow* cxPanel::getWindow(unsigned pIndex) const {
   cxWindow *win = NULL;

   if ((pIndex >= 0) && (pIndex < mWindows.size())) {
      win = mWindows[pIndex];
   }

   return(win);
} // getWindow

bool cxPanel::append(cxWindow *pWindow) {
   // Note: addWindowPtr() validates that pWindow is OK before adding it.
   return(addWindowPtr(pWindow));
} // append

bool cxPanel::append(cxWindow *pWindow, int pRow, int pCol, bool pRefresh) {
   // Note: addWindowPtr() validates that pWindow is OK before adding it.
   bool retval = addWindowPtr(pWindow);
   if (retval) {
      pWindow->move(cxPanel::top()+pRow, cxPanel::left()+pCol, pRefresh);
   }
   return(retval);
} // append

void cxPanel::delWindow(unsigned pIndex) {
   if ((pIndex >= 0) && (pIndex < mWindows.size())) {
      // Free the memory used by the cxWindow pointer
      // Note: If a cxWindow is in a cxPanel, cxWindow's destructor removes
      //  itself from the panel's mWindows, so we should not try to do
      //  that here.
      delete mWindows[pIndex];
      // mWindowIter needs to be fixed.  Set it to the previous window,
      //  if we can; if not, go to the next window.
      if (mWindows.size() > 0) {
         if (pIndex == 0) {
            // Deleted the first window..  Set mWindowIter to point to the
            //  current first window.
            mWindowIter = mWindows.begin();
         }
         else {
            if (pIndex-1 < mWindows.size()) {
               mWindowIter = mWindows.begin() + (pIndex-1);
            }
            else {
               mWindowIter = mWindows.begin(); // Default..
            }
         }
      }
      else {
         // There are no windows..  this is a default..
         mWindowIter = mWindows.begin();
      }
   }
} // delWindow

void cxPanel::delWindow(cxWindow *pWindow) {
   unsigned numWindows = mWindows.size();
   unsigned windowIndex = 0;
   for (; windowIndex < numWindows; ++windowIndex) {
      if (mWindows[windowIndex] == pWindow) {
         delWindow(windowIndex);
         break;
      }
   }
} // delWindow

void cxPanel::delAllWindows() {
   // While there are still windows in the panel, call delWindow(0).
   while (numWindows() > 0) {
      // Note: The index 0 must be explicitly cast as an unsigned, or else
      //  the call to delWindow() will be ambiguous.
      delWindow((unsigned)0);
   }
} // delAllWindows

cxWindow* cxPanel::removeWindow(unsigned pIndex) {
   cxWindow *removedWindow = NULL;

   if ((pIndex >= 0) && (pIndex < mWindows.size())) {
      removedWindow = mWindows[pIndex];
      // Remove the window pointer from mWindows
      mWindows.erase(mWindows.begin() + pIndex);
      // If the window had this panel as its parent window, then set its parent
      //  window pointer to NULL
      if (removedWindow->getParent() == this) {
         removedWindow->setParent(NULL);
      }
   }

   return(removedWindow);
} // removeWindow

void cxPanel::removeWindow(cxWindow *pWindow) {
   unsigned numWindows = mWindows.size();
   unsigned windowIndex = 0;
   for (; windowIndex < numWindows; ++windowIndex) {
      if (mWindows[windowIndex] == pWindow) {
         removeWindow(windowIndex);
         break;
      }
   }
} // removeWindow

bool cxPanel::windowIsInPanel(cxWindow *pWindow) const {
   bool winExists = false;

   cxWindowPtrCollection::const_iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      if ((*iter) == pWindow) {
         winExists = true;
         break;
      }
   }

   return(winExists);
} // windowIsInPanel

bool cxPanel::move(int pNewRow, int pNewCol, bool pRefresh) {
   // Calculate relative movement factors for the contained
   //  windows.
   int vOffset = pNewRow - cxPanel::top();  // Vertical offset
   int hOffset = pNewCol - cxPanel::left(); // Horizontal offset

   // Move the window
   bool moved = cxWindow::move(pNewRow, pNewCol, pRefresh);
   // Move the contained windows
   cxWindowPtrCollection::iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      (*iter)->moveRelative(vOffset, hOffset, pRefresh);
   }

   return(moved);
} // move

bool cxPanel::setCurrentWindow(unsigned pIndex) {
   bool success = false;

   if ((pIndex >= 0) && (pIndex < mWindows.size())) {
      success = true;

      cxWindowPtrCollection::iterator iter = mWindows.begin() + pIndex;
      mWindowIter = iter;

      // If the panel is modal, then don't increment/decrement
      //  mWindowIter in the next iteration through the input loop.
      mCycleWin = !mIsModal;
   }

   return(success);
} // setCurrentWindow

bool cxPanel::setCurrentWindow(const string& pID, bool pIsTitle) {
   bool success = false;

   cxWindowPtrCollection::iterator iter = mWindows.begin();
   if (pIsTitle) {
      for (; iter != mWindows.end(); ++iter) {
         if ((*iter)->getTitle() == pID) {
            success = true;
            mWindowIter = iter;

            // If the panel is modal, then don't increment/decrement
            //  mWindowIter the next iteration through doInputLoop().
            mCycleWin = !mIsModal;
            break;
         }
      }
   }
   else {
      // pIsTitle is false - look at the window names.
      for (; iter != mWindows.end(); ++iter) {
         if ((*iter)->getName() == pID) {
            success = true;
            mWindowIter = iter;

            // If the panel is modal, then don't increment/decrement
            //  mWindowIter the next iteration through doInputLoop().
            mCycleWin = !mIsModal;
            break;
         }
      }
   }

   return(success);
} // setCurrentWindow

bool cxPanel::setCurrentWindowByPtr(cxWindow *pWindow) {
   bool success = false;

   if (pWindow != NULL) {
      cxWindowPtrCollection::iterator iter = mWindows.begin();
      for (; iter != mWindows.end(); ++iter) {
         if ((*iter) == pWindow) {
            success = true;
            mWindowIter = iter;

            // If the panel is modal, then don't increment/decrement
            //  mWindowIter the next iteration through doInputLoop().
            mCycleWin = !mIsModal;
            break;
         }
      }
   }

   return(success);
} // setCurrentWindowByPtr

bool cxPanel::setKeyFunction(int pKey, funcPtr4 pFunction, void *p1,
                            void *p2, void *p3, void *p4, bool pUseReturnVal,
                            bool pExitAfterRun, bool pRunOnLeaveFunction) {
   // Set the key function for the parent class
   bool setIt = cxWindow::setKeyFunction(pKey, pFunction, p1, p2,
                           p3, p4, pUseReturnVal, pExitAfterRun, pRunOnLeaveFunction);
   if (setIt) {
      // Add the key to each window's exit keys.
      cxPanel::cxWindowPtrCollection::iterator iter = mWindows.begin();
      for (; iter != mWindows.end(); ++iter) {
         (*iter)->addExitKey(pKey, false, true);
      }
   }

   return(setIt);
} // setKeyFunction

bool cxPanel::setKeyFunction(int pKey, funcPtr2 pFunction, void *p1,
                            void *p2, bool pUseReturnVal, bool pExitAfterRun,
                            bool pRunOnLeaveFunction) {
   // Set the key function for the parent class
   bool setIt = cxWindow::setKeyFunction(pKey, pFunction, p1, p2,
                           pUseReturnVal, pExitAfterRun, pRunOnLeaveFunction);
   if (setIt) {
      // Add the key to each window's exit keys.
      cxPanel::cxWindowPtrCollection::iterator iter = mWindows.begin();
      for (; iter != mWindows.end(); ++iter) {
         (*iter)->addExitKey(pKey, false, true);
      }
   }

   return(setIt);
} // setKeyFunction

bool cxPanel::setKeyFunction(int pKey, funcPtr0 pFunction, bool pUseReturnVal,
                             bool pExitAfterRun, bool pRunOnLeaveFunction) {
   // Set the key function for the parent class
   bool setIt = cxWindow::setKeyFunction(pKey, pFunction, pUseReturnVal,
                                         pExitAfterRun, pRunOnLeaveFunction);
   if (setIt) {
      // Add the key to each window's exit keys.
      cxPanel::cxWindowPtrCollection::iterator iter = mWindows.begin();
      for (; iter != mWindows.end(); ++iter) {
         (*iter)->addExitKey(pKey, false, true);
      }
   }

   return(setIt);
} // setKeyFunction

void cxPanel::clearKeyFunction(int pKey) {
   // Clear the key in the parent class, and remove the key as an exit
   //  key from all subwindows.
   cxWindow::clearKeyFunction(pKey);
   cxPanel::cxWindowPtrCollection::iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      (*iter)->removeExitKey(pKey);
   }
} // clearKeyFunction

int cxPanel::getCurrentWindowIndex() const {
   int currentWindow = -1;

   if (mWindows.size() > 0) {
      int j = 0;
      cxPanel::cxWindowPtrCollection::const_iterator iter = mWindows.begin();
      for (; iter != mWindows.end(); ++iter) {
         if ((*iter) == (*mWindowIter)) {
            currentWindow = j;
            break;
         }
         ++j;
      }
   }

   return(currentWindow);
} // getCurrentWindowIndex

int cxPanel::getWindowIndex(cxWindow *pWindow) const {
   int windowIndex = -1;

   int i = 0;
   cxPanel::cxWindowPtrCollection::const_iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      if ((*iter) == pWindow) {
         windowIndex = i;
         break;
      }
      ++i;
   }

   return(windowIndex);
} // getWindowIndex

cxWindow* cxPanel::getCurrentWindowPtr() const {
   cxWindow *currentWindow = NULL;

   if (mWindows.size() > 0) {
      currentWindow = *mWindowIter;
   }

   return(currentWindow);
} // getCurrentWindowPtr

long cxPanel::show(bool pBringToTop, bool pShowSubwindows) {
   long returnCode = cxID_EXIT;

   // If mShowPanel is true, call the parent's show() (it will
   //  show the panel window and all the subwindows and the windows
   //  contained in the panel); otherwise, don't show the panel
   //  window - just show the windows contained in the panel.
   if (mShowPanelWindow) {
      cxWindow::show(pBringToTop, pShowSubwindows);
   }
   else {
      // Honor mShowSubwinsForward in cxWindow - if true, show the
      //  subwindows in forward order; if false, show them in reverse
      //  order.
      if (getShowSubwinsForward()) {
         // Show them in forward order
         cxWindowPtrCollection::iterator iter = mWindows.begin();
         for (; iter != mWindows.end(); ++iter) {
            (*iter)->show(pBringToTop, pShowSubwindows);
         }
      }
      else {
         // Show them in reverse order
         cxWindowPtrCollection::reverse_iterator iter = mWindows.rbegin();
         for (; iter != mWindows.rend(); ++iter) {
            (*iter)->show(pBringToTop, pShowSubwindows);
         }
      }
   }

   return(returnCode);
} // show

void cxPanel::hide(bool pHideSubwindows) {
   // Hide the main window
   cxWindow::hide(pHideSubwindows);
   // Hide all the windows in the panel
   cxWindowPtrCollection::iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      // The cxWindow pointer shouldn't be null, but check just in case.
      if ((*iter) != NULL) {
         (*iter)->hide(pHideSubwindows);
      }
   }
} // hide

void cxPanel::unhide(bool pUnhideSubwindows) {
   // Unhide the main window
   cxWindow::unhide(pUnhideSubwindows);
   // Unhide all the windows in the panel
   cxWindowPtrCollection::iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      // The cxWindow pointer shouldn't be null, but check just in case.
      if ((*iter) != NULL) {
         (*iter)->unhide(pUnhideSubwindows);
      }
   }
} // unhide

bool cxPanel::getShowPanelWindow() const {
   return(mShowPanelWindow);
} // getShowPanelWindow

void cxPanel::setShowPanelWindow(bool pShowPanelWindow) {
   mShowPanelWindow = pShowPanelWindow;
} // setShowPanelWindow

bool cxPanel::getAllowExit() const {
   return(mAllowExit);
} // getAllowExit

void cxPanel::setAllowExit(bool pAllowExit) {
   mAllowExit = pAllowExit;
} // setAllowExit

bool cxPanel::getAllowQuit() const {
   return(mAllowQuit);
} // getAllowQuit

void cxPanel::setAllowQuit(bool pAllowQuit) {
   mAllowQuit = pAllowQuit;
} // setAllowQuit

bool cxPanel::windowIsEnabled(unsigned pIndex) const {
   bool enabled = false;

   if ((pIndex >= 0) && (pIndex < mWindows.size())) {
      enabled = mWindows[pIndex]->isEnabled();
   }

   return(enabled);
} // windowIsEnabled

void cxPanel::enableWindow(unsigned pIndex, bool pEnabled) {
   if ((pIndex >= 0) && (pIndex < mWindows.size())) {
      mWindows[pIndex]->setEnabled(pEnabled);
   }
} // enableWindow

void cxPanel::clear(bool pRefresh) {
   cxWindowPtrCollection::iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      (*iter)->clear(pRefresh);
   }
} // clear

bool cxPanel::addQuitKey(int pKey, bool pRunOnLeaveFunction, bool pOverride) {
   // Add the key to the list of quit keys (via the parent class addQuitKey()),
   //  and add the key to the windows in the panel.  Also, in case the key is
   //  set up as an exit key, remove it from the exit key list.
   bool added = cxWindow::addQuitKey(pKey, pRunOnLeaveFunction, pOverride);
   if (added) {
      removeExitKey(pKey);

      cxWindowPtrCollection::iterator iter = mWindows.begin();
      for (; iter != mWindows.end(); ++iter) {
         (*iter)->removeExitKey(pKey);
         addQuitKeyToWindow(*iter, pKey, pRunOnLeaveFunction, pOverride);
      }
   }

   return(added);
} // addQuitKey

void cxPanel::removeQuitKey(int pKey) {
   // Remove the quit key from the list of quit keys (via the
   //  parent class removeQuitKey()), then remove it from the
   //  windows in the panel.
   cxWindow::removeQuitKey(pKey);
   cxWindowPtrCollection::iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      (*iter)->removeQuitKey(pKey);
   }
} // removeQuitKey

bool cxPanel::addExitKey(int pKey, bool pRunOnLeaveFunction, bool pOverride) {
   // Add the key to the list of exit keys (via the parent class addExitKey()),
   //  and add the key to the windows in the panel.  Also, in case the key
   //  is set up as a quit key, remove it from the quit key list.
   bool added = cxWindow::addExitKey(pKey, pRunOnLeaveFunction, pOverride);
   if (added) {
      removeQuitKey(pKey);

      cxWindowPtrCollection::iterator iter = mWindows.begin();
      for (; iter != mWindows.end(); ++iter) {
         (*iter)->removeQuitKey(pKey);
         addExitKeyToWindow(*iter, pKey, pRunOnLeaveFunction, pOverride);
      }
   }

   return(added);
} // addExitKey

void cxPanel::removeExitKey(int pKey) {
   // Remove the quit key from the list of exit keys (via the
   //  parent class removeExitKey()), then remove it from the
   //  windows in the panel.
   cxWindow::removeExitKey(pKey);
   cxWindowPtrCollection::iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      (*iter)->removeExitKey(pKey);
   }
} // removeExitKey

void cxPanel::setEnabled(bool pEnabled) {
   // Enable/disable the panel window, and then enable/disable the subwindows
   //  in the panel.
   cxWindow::setEnabled(pEnabled);
   cxWindowPtrCollection::iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      (*iter)->setEnabled(pEnabled);
   }
} // setEnabled

void cxPanel::setEnabled(unsigned pIndex, bool pEnabled) {
   if ((pIndex >= 0) && (pIndex < mWindows.size())) {
      cxWindowPtrCollection::iterator iter = mWindows.begin() + pIndex;
      (*iter)->setEnabled(pEnabled);
      // If the window has been disabled and the current window happens to be
      //  this window, then go back to the first window, by default.
      if (!pEnabled && (mWindowIter == iter)) {
         mWindowIter = mWindows.begin();
         // If the panel is modal, then don't increment/decrement
         //  mWindowIter in the next iteration through the input loop.
         mCycleWin = !mIsModal;
      }
   }
} // setEnabled

void cxPanel::setEnabled(const string& pID, bool pEnabled, bool pIsTitle) {
   // Look for a window with the given title/name, and call the other
   //  setEnabled() with the index.
   unsigned numWins = mWindows.size();
   if (pIsTitle) {
      for (unsigned i = 0; i < numWins; ++i) {
         if (mWindows[i]->getTitle() == pID) {
            setEnabled(i, pEnabled);
            break;
         }
      }
   }
   else {
      // pIsTitle is false.  Look at the window names.
      for (unsigned i = 0; i < numWins; ++i) {
         if (mWindows[i]->getName() == pID) {
            setEnabled(i, pEnabled);
            break;
         }
      }
   }
} // setEnabled

bool cxPanel::swap(int pWindow1Index, int pWindow2Index) {
   bool swapped = false;

   // Don't do anything if pWindow1Index and pWindow2Index are the same
   //  or negative or are out of bounds.
   if ((pWindow1Index == pWindow2Index) || (pWindow1Index < 0) ||
       (pWindow2Index < 0) || (pWindow1Index >= (int)(mWindows.size())) ||
       (pWindow2Index >= (int)(mWindows.size()))) {
      swapped = false;
   }
   else {
      cxWindowPtrCollection::iterator iter1 = mWindows.begin() + pWindow1Index;
      cxWindowPtrCollection::iterator iter2 = mWindows.begin() + pWindow2Index;
      // Swap the cxWindow pointers
      cxWindow *temp = *iter1;
      *iter1 = *iter2;
      *iter2 = temp;
      swapped = true;
   }

   return(swapped);
} // swap

bool cxPanel::swap(cxWindow *pWindow1, cxWindow *pWindow2) {
   bool swapped = false;

   // Don't do anything if pWindow1 and pWindow2 point to the same window.
   if (pWindow1 != pWindow2) {
      // Look for pWindow1 and pWindow2 in mWindows.
      cxWindowPtrCollection::iterator iter1 = mWindows.begin();
      cxWindowPtrCollection::iterator iter2 = mWindows.begin();
      for (; iter1 != mWindows.end(); ++iter1) {
         if (*iter1 == pWindow1) {
            break;
         }
      }
      for (; iter2 != mWindows.end(); ++iter2) {
         if (*iter2 == pWindow2) {
            break;
         }
      }

      // Swap the cxWindow pointers, but only if we found them in
      //  mWindows.
      if ((iter1 != mWindows.end()) && (iter2 != mWindows.end())) {
         cxWindow *temp = *iter1;
         *iter1 = *iter2;
         *iter2 = temp;
         swapped = true;
      }
   }

   return(swapped);
} // swap

void cxPanel::setColor(e_WidgetItems pItem, e_cxColors pColor) {
   // Set the color on this panel and all windows in the panel.
   cxWindow::setColor(pItem, pColor);
   cxWindowPtrCollection::iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      (*iter)->setColor(pItem, pColor);
   }
} // setColor

string cxPanel::cxTypeStr() const {
   return("cxPanel");
} // cxTypeStr

void cxPanel::quitNow() {
   cxWindow::quitNow();
   cxWindowPtrCollection::iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      (*iter)->quitNow();
      try {
         string winType = (*iter)->cxTypeStr();
         if ((winType == "cxPanel") || (winType == "cxSearchPanel") ||
             (winType == "cxNotebook")) {
            cxPanel *panel = dynamic_cast<cxPanel*>(*iter);
            cxWindowPtrCollection::iterator iter2 = panel->mWindows.begin();
            for (; iter2 != panel->mWindows.end(); ++iter2) {
               (*iter2)->quitNow();
            }
         }
         else if ((*iter)->cxTypeStr() == "cxMultiForm") {
            cxMultiForm *multiForm = dynamic_cast<cxMultiForm*>(*iter);
            unsigned numSubforms = multiForm->numSubforms();
            cxForm *subform = NULL;
            for (unsigned i = 0; i < numSubforms; ++i) {
               subform = multiForm->getForm(i);
               if (NULL != subform) {
                  subform->quitNow();
               }
            }
         }
      }
      catch (const std::bad_cast& e) {
         // A dynamic_cast failed
      }
   }
} // quitNow

void cxPanel::exitNow() {
   cxWindow::exitNow();
   cxWindowPtrCollection::iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      (*iter)->exitNow();
      try {
         string winType = (*iter)->cxTypeStr();
         if ((winType == "cxPanel") || (winType == "cxSearchPanel")) {
            cxPanel *panel = dynamic_cast<cxPanel*>(*iter);
            cxWindowPtrCollection::iterator iter2 = panel->mWindows.begin();
            for (; iter2 != panel->mWindows.end(); ++iter2) {
               (*iter2)->exitNow();
            }
         }
         else if ((*iter)->cxTypeStr() == "cxMultiForm") {
            cxMultiForm *multiForm = dynamic_cast<cxMultiForm*>(*iter);
            unsigned numSubforms = multiForm->numSubforms();
            cxForm *subform = NULL;
            for (unsigned i = 0; i < numSubforms; ++i) {
               subform = multiForm->getForm(i);
               if (NULL != subform) {
                  subform->exitNow();
               }
            }
         }
      }
      catch (const std::bad_cast& e) {
         // A dynamic_cast failed
      }
   }
} // exitNow

cxWindow* cxPanel::getLastWindow() const {
   return(mLastWindow);
} // getLastWindow

void cxPanel::setName(unsigned pIndex, const string& pName) {
   if ((pIndex >= 0) && (pIndex < mWindows.size())) {
      mWindows[pIndex]->setName(pName);
   }
} // setName

void cxPanel::setName(const string& pID, const string& pName, bool pIsTitle) {
   cxWindowPtrCollection::iterator iter = mWindows.begin();
   if (pIsTitle) {
      for (; iter != mWindows.end(); ++iter) {
         if ((*iter)->getTitle() == pID) {
            (*iter)->setName(pID);
            break;
         }
      }
   }
   else {
      // pIsTitle is false - Going by the window names.
      for (; iter != mWindows.end(); ++iter) {
         if ((*iter)->getName() == pID) {
            (*iter)->setName(pID);
            break;
         }
      }
   }
} // setName

void cxPanel::setName(const string& pName) {
   cxWindow::setName(pName);
} // setName

int cxPanel::top() const {
   return(cxWindow::top());
} // top

int cxPanel::bottom() const {
   return(cxWindow::bottom());
} // bottom

bool cxPanel::anyEnabledWindows() const {
   bool anyEnabled = false;

   // Note: A window is considered 'enabled' if its isEnabled() returns
   //  true and if it will wait for a keypress in its showModal().  This
   //  way, it is guaranteed that a call to cxPanel's showModal() won't
   //  end up in infinite loop land.
   cxWindowPtrCollection::const_iterator iter = mWindows.begin();
   for (; iter != mWindows.end(); ++iter) {
      if ((*iter) != NULL) {
         if (((*iter)->isEnabled()) && ((*iter)->modalGetsKeypress())) {
            anyEnabled = true;
            break;
         }
      }
   }

   return (anyEnabled);
} // anyEnabledWindows

bool cxPanel::lastEnabledWindow(int pIndex) const {
   bool retval = true;

   if ((pIndex >= 0) && (pIndex < (int)(mWindows.size()))) {
      // If any of the windows after the one at pIndex are enabled, then
      //  retval should be false.
      int numWindows = (int)(mWindows.size());
      for (int i = pIndex+1; i < numWindows; ++i) {
         if (mWindows[i]->isEnabled()) {
            retval = false;
            break;
         }
      }
   }
   else {
      // pIndex is out of bounds
      retval = false;
   }

   return(retval);
} // lastEnabledWindow

bool cxPanel::firstEnabledWindow(int pIndex) const {
   bool retval = true;

   if ((pIndex >= 0) && (pIndex < (int)(mWindows.size()))) {
      // If any of the windows before the one at pIndex are enabled, then
      //  retval should be false.
      for (int i = pIndex-1; i >= 0; --i) {
         if (mWindows[i]->isEnabled()) {
            retval = false;
            break;
         }
      }
   }
   else {
      // pIndex is out of bounds
      retval = false;
   }

   return(retval);
} // firstEnabledWindow

//// Private functions

bool cxPanel::addWindowPtr(cxWindow* pWindow) {
   bool retval = false;

   // Only add the window if pWindow isn't NULL, if it isn't the current
   //  window, and if it's not already in the collection.
   if ((pWindow != NULL) && (pWindow != this) && !windowIsInPanel(pWindow)) {
      retval = true;

      // Check the window's parent window type.  If its parent is a cxNotebook,
      //  then don't add the window to this panel, or else that might mess up
      //  the cxNotebook.
      string parentType;
      if ((pWindow->getParent() != NULL) && (pWindow->getParent() != this)) {
         parentType = pWindow->getParent()->cxTypeStr();
      }

      if (parentType != "cxNotebook") {
         mWindows.push_back(pWindow);
         // Iterators become invalidated when they're resized, and when something
         //  is appended to the collection, etc., so mWindowIter must be updated.
         mWindowIter = mWindows.begin();

         // Add each key in mKeyFunctions to the window's set of exit keys.
         // Also add all of the panel's quit keys & exit keys to the window's
         //  set of quit/exit keys.
         map<int, bool>::const_iterator keyIter;
         map<int, cxFunction*>::const_iterator funcIter;
         cxPanel::cxWindowPtrCollection::iterator winIter = mWindows.begin();
         for (; winIter != mWindows.end(); ++winIter) {
            // Add the keys in mKeyFunctions as exit keys
            funcIter = mKeyFunctions.begin();
            for (; funcIter != mKeyFunctions.end(); ++funcIter) {
               // Have the window not run its onLeave function, and not
               //  override if the window already has that key set up as a
               //  keypress function.
               addExitKeyToWindow(*winIter, funcIter->first, false, false);
            }

            // Add the exit keys from mExitKeys
            keyIter = mExitKeys.begin();
            for (; keyIter != mExitKeys.end(); ++keyIter) {
               addExitKeyToWindow(*winIter, keyIter->first, false, false);
            }
            // Add the quit keys from mQuitKeys
            keyIter = mQuitKeys.begin();
            for (; keyIter != mQuitKeys.end(); ++keyIter) {
               addQuitKeyToWindow(*winIter, keyIter->first, false, false);
            }
         }

         // If the window is in another cxPanel, then remove the window pointer
         //  from its mWindows.
         try {
            // If the window's parent is a cxPanel..
            if ((parentType == "cxPanel") || (parentType == "cxSearchPanel")) {
               cxPanel *parentPanel = dynamic_cast<cxPanel*>(pWindow->getParent());
               // Look for pWindow in the other panel's mWindows and remove it
               //  if it's there.
               cxPanel::cxWindowPtrCollection::iterator iter = parentPanel->mWindows.begin();
               for (; iter != parentPanel->mWindows.end(); ++iter) {
                  if (*iter == pWindow) {
                     parentPanel->mWindows.erase(iter);
                     break;
                  }
               }
            }
         }
         catch (const std::bad_cast& e) {
            // A dynamic_cast failed
         }
         catch (const std::bad_typeid& e) {
            // A typeid failed
         }

         // Set the window's parent to this window.
         // Note: This stuff must be done after removing pWindow from its
         //  old parent.
         // Calling setParent() on the window will cause the window to call
         //  addSubwindow() on this object to add itself to this window's
         //  subwindows.  This will allow all the windows in the panel to
         //  be drawn when the panel is drawn and hidden/unhidden when the
         //  panel is hidden/unhidden).
         pWindow->setParent(this);

         // Enable or disable the window, depending on whether the panel is
         //  enabled or disabled.
         pWindow->setEnabled(isEnabled());

         try {
            // If the window is a cxForm, tell it to exit when its
            //  first & last fields are exited.
            if (pWindow->cxTypeStr() == "cxForm") {
               cxForm *form = dynamic_cast<cxForm*>(pWindow);
               form->setAutoExit(true);
               form->setExitOnLeaveFirst(true);
            }
            // If the window is a cxMultiForm, tell it to exit when its first & last
            //  inputs are exited, and loop through its subforms
            //  and tell them all to exit when their first & last fields
            //  are exited.
            else if (pWindow->cxTypeStr() == "cxMultiForm") {
               cxMultiForm *multiForm = dynamic_cast<cxMultiForm*>(pWindow);
               multiForm->setAutoExit(true);
               multiForm->setExitOnLeaveFirst(true);
               unsigned numSubforms = multiForm->numSubforms();
               cxForm *subform = NULL;
               for (unsigned i = 0; i < numSubforms; ++i) {
                  subform = multiForm->getForm(i);
                  subform->setAutoExit(true);
                  subform->setExitOnLeaveFirst(true);
               }
            }
            // If the window is a cxWindow, then enable it to change
            //  its colors when its focus is set (to provide a visual
            //  cue that its focus is set).
            else if (pWindow->cxTypeStr() == "cxWindow") {
               pWindow->setChangeColorsOnFocus(true);
            }
         }
         catch (const std::bad_cast& e) {
            // A dynamic_cast failed
         }
         catch (const std::bad_typeid& e) {
            // A typeid failed
         }
      }
   }

   return(retval);
} // addWindowPtr

long cxPanel::doInputLoop(bool pSubwinShow, bool& pRunOnLeaveFunction) {
   pRunOnLeaveFunction = true;
   long returnCode = cxID_EXIT;

   // If there are any windows in the mWindows collection that are
   //  enabled, cycle through each of them, calling showModal() on
   //  each one.
   if (anyEnabledWindows()) {
      // If mLeaveNow is set to true while the panel is modal (via a hotkey
      //  function, etc.), then the input loop will quit.
      mLeaveNow = false;

      bool continueOn = true;
      bool movingForward = true; // Direction of movement through the subwindows
      int lastKey = NOKEY;
      while (continueOn && !mLeaveNow) {
         // Update mLastWindow now, before mWindowIter can change
         mLastWindow = *mWindowIter;

         // If the current subwindow is a cxForm or a
         //  cxMultiForm, set the input focus to its
         //  first or last input, depending on which
         //  direction we are going.
         try {
            if ((*mWindowIter)->cxTypeStr() == "cxForm") {
               cxForm *form = dynamic_cast<cxForm*>(*mWindowIter);
               unsigned numInputs = form->numInputs();
               if (numInputs > 0) {
                  // If we're moving forward, set the initial focus
                  //  to the form's first input; otherwise, set the
                  //  initial focus to the form's last input.  But only
                  //  if the form is allowed to cycle its input.
                  if (form->mCycleInput) {
                     if (movingForward) {
                        // Set focus to the first editable input in the form.
                        int inputIndex = form->firstEditableInput();
                        form->setCurrentInput(inputIndex);
                     }
                     else {
                        // Set focus to the last editable input in the form.
                        int inputIndex = form->lastEditableInput();
                        form->setCurrentInput(inputIndex);
                     }
                  }
                  form->mCycleInput = true;
               }
            }
            else if ((*mWindowIter)->cxTypeStr() == "cxMultiForm") {
               cxMultiForm *multiForm = dynamic_cast<cxMultiForm*>(*mWindowIter);
               unsigned numInputs = multiForm->numInputs();
               unsigned numSubforms = multiForm->numSubforms();
               if (movingForward) {
                  if (numInputs > 0) {
                     multiForm->setCurrentInput(0);
                  }
                  cxForm *subform = NULL;
                  for (unsigned i = 0; i < numSubforms; ++i) {
                     subform = multiForm->getForm(i);
                     subform->setCurrentInput(0);
                  }
               }
               else {
                  if (numInputs > 0) {
                     multiForm->setCurrentInput((int)numInputs-1);
                  }
                  unsigned numSubformInputs = 0;
                  cxForm *subform = NULL;
                  for (unsigned i = 0; i < numSubforms; ++i) {
                     subform = multiForm->getForm(i);
                     numSubformInputs = subform->numInputs();
                     if (numSubformInputs > 0) {
                        subform->setCurrentInput((int)numSubformInputs-1);
                     }
                  }
               }
            }
         }
         catch (const std::bad_cast& e) {
            // A dynamic_cast failed
         }
         catch (const std::bad_typeid& e) {
            // A typeid failed
         }

         // If the current window is enabled, show it modally and update
         //  the last keypress.
         bool winModalGetsKeypress = (*mWindowIter)->modalGetsKeypress();
         (*mWindowIter)->showModal(pSubwinShow, false, true);
         if (winModalGetsKeypress) {
            lastKey = (*mWindowIter)->getLastKey();
            cxWindow::setLastKey(lastKey);
         }

         // keypressFunctionExists will be set true if a function existed for
         //  the last keypress.
         bool keypressFunctionExists = false;

#ifdef NCURSES_MOUSE_VERSION
         // If the last key was a mouse button event, then check to see where
         //  the event occurred.  If the user clicked on another window in the
         //  panel, then go to it.
         if (lastKey == KEY_MOUSE) {
            // Don't capture mouse information here with getmouse(); Get the
            //  mouse event that was captured by the subwindow.  If an onLeave
            //  function for the window was fired that captured mouse input,
            //  then that would override the mouse data that was captured by
            //  the subwindow.
            bool userClickedASubWindow = false;
            mMouse = mLastWindow->getMouseEvent();
            // Run a function that may exist for the mouse state.  If
            //  no function exists for the mouse state, then process
            //  it here.
            bool mouseFuncExists = false;
            continueOn = handleFunctionForLastMouseState(&mouseFuncExists,
                                                     &pRunOnLeaveFunction);
            if (!mouseFuncExists) {
               // If the user clicked mouse button 1 outside the subwindow, go
               //  ahead and look for the location in another window in the panel.
               if (mouseButton1Clicked() && !(mLastWindow->mouseEvtWasInWindow())) {
                  cxWindowPtrCollection::iterator iter = mWindows.begin();
                  for (; iter != mWindows.end(); ++iter) {
                     if ((*iter)->pointIsInWindow(mMouse.y, mMouse.x)) {
                        userClickedASubWindow = true;
                        // Set this window as the current window.
                        mWindowIter = iter; // Set this window as the current window
                        mCycleWin = false;  // Stay here for next cycle
                        // Special case: If this window is a cxButton, then
                        //  tell it that mouse button 1 was clicked, and have
                        //  it do its mouse behavior.
                        if ((*iter)->cxTypeStr() == "cxButton") {
                           try {
                              cxButton *iButton = dynamic_cast<cxButton*>(*iter);
                              if (iButton != NULL) {
                                 iButton->mouseButton1Click(mMouse.y, mMouse.x);
                                 iButton->doMouseBehavior();
                              }
                           }
                           catch (...) {
                           }
                        }
                        break;
                     }
                  }
               }
            }
            // If the user didn't click one of the subwindows, then check to
            //  see if the mouse event occurred outside the panel window.
            //  If so, then if the parent window is a cxNotebook or another
            //  cxPanel, then don't continue.
            if (!userClickedASubWindow) {
               if (!mouseEvtWasInWindow()) {
                  if (parentIsCxPanel() || parentIsCxNotebook()) {
                     continueOn = false;
                  }
               }
            }
         }
#else
         // This is defined for versions of ncurses without mouse support.
         // This is here because the next block starts with "else if".  The
         //  code will go onto the next block because of the false.
         if (false) {
         }
#endif
         // If the last key is in mQuitKeys, then quit and return
         //  cxID_QUIT.  If the key isn't there, look for it in
         //  mExitKeys (if it's there, quit and return cxID_EXIT).
         //  If not there either, handle the key normally.
         // At some point, I added the "|| (ESC == lastKey)", but
         //  I don't remember why..  I don't think that should be here,
         //  because then if a hotkey function is set up for ESC, it wouldn't
         //  be fired.
         else if (hasQuitKey(lastKey)/* || (ESC == lastKey)*/) {
            returnCode = cxID_QUIT;
            continueOn = false;
         }
         else if (hasExitKey(lastKey)) {
            returnCode = cxID_EXIT;
            continueOn = false;
         }
         else {
            // Run a function that may be associated with the last
            //  keypress.  If no function exists for the key, then
            //  go on to the next/previous window.
            continueOn = (continueOn &&
                          handleFunctionForLastKey(&keypressFunctionExists));
         }

         // Quit out of the input loop if continueOn was set false.
         if (!continueOn) {
            break;
         }

         // Quit out of the input loop if mLeaveNow was set true by an
         //  external hotkey function or other event function, and if we're
         //  allowed to quit.
         if (mLeaveNow) {
            // Depending on the return value (possibly set by exitNow()
            //  or quitNow()), check to see if we're allowed to exit/quit
            //  before exiting.
            bool canQuit = true;
            if (getReturnCode() == cxID_QUIT) {
               canQuit = mAllowQuit;
            }
            else {
               canQuit = mAllowExit;
            }

            if (canQuit) {
               break;
            }
         }

         // If there was no function for the keypress, then handle subwindow
         //  navigation based on the last keypress.
         if (!keypressFunctionExists) {
            switch (lastKey) {
               case ESC:
                  if (mAllowQuit) {
                     returnCode = cxID_QUIT;
                     continueOn = false;
                  }
                  break;
               // Shift-TAB, up/left arrow: go back one subwindow
               case SHIFT_TAB:
               case KEY_UP:
               case KEY_LEFT:
                  movingForward = false;
                  if (mCycleWin) {
                     // If this is the first subwindow, then
                     //  if mExitOnLeaveFirst is true, the
                     //  input loop should exit.  Othwerwise,
                     //  loop around to the last subwindow.
                     if (mWindowIter == mWindows.begin()) {
                        // Loop around to the end
                        mWindowIter = mWindows.end();
                        --mWindowIter;
                        if (mExitOnLeaveFirst && mAllowExit) {
                           continueOn = false;
                           mWindowIter = mWindows.begin();
                        }
                     }
                     else {
                        --mWindowIter;
                     }
                  }
                  break;
               default:
                  movingForward = true;
                  if (mCycleWin) {
                     ++mWindowIter; // Go to the next subwindow
                     // If we've just exited the last subwindow, then
                     //  if mExitOnLeaveLast is true, the input loop
                     //  should exit.  Otherwise, loop back around to
                     //  the first subwindow.
                     if (mWindowIter == mWindows.end()) {
                        mWindowIter = mWindows.begin();
                        if (mExitOnLeaveLast && mAllowExit) {
                           continueOn = false;
                        }
                     }
                  }
                  break;
            }
            mCycleWin = true;
         }

         // Make sure we can cycle through the windows the next time around.
         //mCycleWin = true;
      }
   }
   else {
      // There are no subwindows (or no enabled subwindows)..  Just
      //  wait for a key.
      cxWindow::setLastKey(wgetch(mWindow));
      // If the last key was a mouse key, then update mMouse.  Otherwise, call
      //  any function that may be hooked up for the keypress, and if the user
      //  pressed escape, set the return code to cxID_QUIT.
#ifdef NCURSES_MOUSE_VERSION
      if (getLastKey() == KEY_MOUSE) {
         if (getmouse(&mMouse) == OK) {
            // Run a function that may exist for the mouse state.
            handleFunctionForLastMouseState(NULL, &pRunOnLeaveFunction);
         }
      }
#else
      // This is defined for versions of ncurses without mouse support.
      // This is here because the next block starts with "else".  The
      //  code will go onto the next block because of the false.
      if (false) {
      }
#endif
      else {
         handleFunctionForLastKey();
         if (getLastKey() == ESC) {
            returnCode = cxID_QUIT;
         }
      }
   }

   // mLeaveNow should be false
   mLeaveNow = false;

   return(returnCode);
} // doInputLoop

// Note: This function is inline for speed (it will get called inside of a
//  loop).
inline void cxPanel::addExitKeyToWindow(cxWindow *pWindow, int pKey,
                                 bool pRunOnLeaveFunction, bool pOverride) {
   if (pWindow != NULL) {
      // If the window is a cxMenu, cxScrolledWindow, or cxFileViewer and the
      //  key is one of its scrolling keys, then don't add the key to the
      //  window.
      bool addIt = true;
      string winTypeStr = pWindow->cxTypeStr();
      if (winTypeStr == "cxMenu") {
         try {
            cxMenu *pMenu = dynamic_cast<cxMenu*>(pWindow);
            if (pMenu != NULL) {
               addIt = ((pKey != PAGE_UP) && (pKey != PAGE_DOWN) &&
                        (pKey != pMenu->getAltPgUpKey()) &&
                        (pKey != pMenu->getAltPgDownKey()) &&
                        (pKey != KEY_UP) && (pKey != KEY_DOWN));
            }
         }
         catch (const std::bad_cast& e) {
         }
         catch (const std::exception& e) {
         }
         catch (...) {
         }
      }
      else if ((winTypeStr == "cxFileViewer") ||
               (winTypeStr == "cxScrolledWindow")) {
         addIt = ((pKey != PAGE_UP) && (pKey != PAGE_DOWN) &&
                  (pKey != KEY_UP) && (pKey != KEY_DOWN) &&
                  (pKey != KEY_LEFT) && (pKey != KEY_RIGHT));
      }

      if (addIt) {
         pWindow->addExitKey(pKey, pRunOnLeaveFunction, pOverride);
      }
   }
} // addExitKeyToWindow

// Note: This function is inline for speed (it will get called inside of a
//  loop).
inline void cxPanel::addQuitKeyToWindow(cxWindow *pWindow, int pKey,
                                 bool pRunOnLeaveFunction, bool pOverride) {
   if (pWindow != NULL) {
      // If the window is a cxMenu, cxScrolledWindow, or cxFileViewer and the
      //  key is one of its scrolling keys, then don't add the key to the
      //  window.
      bool addIt = true;
      string winTypeStr = pWindow->cxTypeStr();
      if (winTypeStr == "cxMenu") {
         try {
            cxMenu *pMenu = dynamic_cast<cxMenu*>(pWindow);
            if (pMenu != NULL) {
               addIt = ((pKey != PAGE_UP) && (pKey != PAGE_DOWN) &&
                        (pKey != pMenu->getAltPgUpKey()) &&
                        (pKey != pMenu->getAltPgDownKey()) &&
                        (pKey != KEY_UP) && (pKey != KEY_DOWN));
            }
         }
         catch (const std::bad_cast& e) {
         }
         catch (const std::exception& e) {
         }
         catch (...) {
         }
      }
      else if ((winTypeStr == "cxFileViewer") ||
               (winTypeStr == "cxScrolledWindow")) {
         addIt = ((pKey != PAGE_UP) && (pKey != PAGE_DOWN) &&
                  (pKey != KEY_UP) && (pKey != KEY_DOWN) &&
                  (pKey != KEY_LEFT) && (pKey != KEY_RIGHT));
      }

      if (addIt) {
         pWindow->addQuitKey(pKey, pRunOnLeaveFunction, pOverride);
      }
   }
} // addQuitKeyToWindow

//// Private functions

// The following 2 functions are private to dis-allow
//  copy construction and assignment.

cxPanel::cxPanel(const cxPanel& pThatPanel)
   : cxWindow(pThatPanel),
     mLastWindow(NULL),
     mExitOnLeaveLast(pThatPanel.mExitOnLeaveLast),
     mExitOnLeaveFirst(pThatPanel.mExitOnLeaveFirst),
     mAllowExit(pThatPanel.mAllowExit),
     mAllowQuit(pThatPanel.mAllowQuit),
     mQuitNow(pThatPanel.mQuitNow),
     mShowPanelWindow(pThatPanel.mShowPanelWindow)
{
}

cxPanel& cxPanel::operator =(const cxPanel& pThatPanel) {
   return(*this);
}

// Copyright (c) 2026 E. Oulashin

#include "cxMenuBar.h"
#include "cxBase.h"
#include <ncurses.h>
#include <algorithm>
#include <cctype>

using std::string;
using std::vector;
using std::shared_ptr;
using std::set;
using std::map;

// Constructor
cxMenuBar::cxMenuBar(cxWindow *pParentWindow, int pRow, int pCol,
                     int pWidth, eBorderStyle pBorderStyle)
   : cxWindow(pParentWindow, pRow, pCol, 1, pWidth,
              "", "", "", pBorderStyle, nullptr, nullptr),
     mCurrentIndex(0),
     mLastMenuReturnCode(cxID_QUIT),
     mBarColorPair(eWHITE_BLUE),
     mHighlightColorPair(eBLACK_WHITE),
     mHasFocus(false)
{
}

// Copy constructor
cxMenuBar::cxMenuBar(const cxMenuBar& pThat)
   : cxWindow(nullptr, pThat.top(), pThat.left(), pThat.height(), pThat.width(),
              "", "", "", pThat.getBorderStyle(), nullptr, nullptr),
     mEntries(pThat.mEntries),
     mCurrentIndex(pThat.mCurrentIndex),
     mLastMenuReturnCode(pThat.mLastMenuReturnCode),
     mMenuHotkeys(pThat.mMenuHotkeys),
     mBarColorPair(pThat.mBarColorPair),
     mHighlightColorPair(pThat.mHighlightColorPair),
     mHasFocus(false)
{
}

// Destructor
cxMenuBar::~cxMenuBar()
{
}

// addMenu: Add a menu entry to the bar
void cxMenuBar::addMenu(const string& pLabel, cxMenu* pMenu)
{
   MenuEntry entry;
   entry.label = pLabel;
   // Build clean label (without & chars) and find hotkey
   entry.cleanLabel = "";
   entry.hotkeyChar = '\0';
   for (size_t i = 0; i < pLabel.length(); ++i)
   {
      if (pLabel[i] == '&' && i + 1 < pLabel.length())
      {
         entry.hotkeyChar = (char)std::tolower(pLabel[i + 1]);
         entry.cleanLabel += pLabel[i + 1];
         ++i; // skip past the character after &
      }
      else
      {
         entry.cleanLabel += pLabel[i];
      }
   }
   entry.menu = pMenu;

   // Calculate x position: each label gets 2 chars of padding on each side
   int xPos = left();
   if (getBorderStyle() != eBS_NOBORDER)
      ++xPos;
   for (size_t i = 0; i < mEntries.size(); ++i)
   {
      xPos += (int)mEntries[i].cleanLabel.length() + 4; // 2 padding chars on each side
   }
   entry.xPos = xPos;

   mEntries.push_back(entry);
}

int cxMenuBar::numMenus() const
{
   return (int)mEntries.size();
}

int cxMenuBar::getCurrentIndex() const
{
   return mCurrentIndex;
}

void cxMenuBar::setCurrentIndex(int pIndex)
{
   if (pIndex >= 0 && pIndex < (int)mEntries.size())
      mCurrentIndex = pIndex;
}

string cxMenuBar::getMenuLabel(int pIndex) const
{
   if (pIndex >= 0 && pIndex < (int)mEntries.size())
      return mEntries[pIndex].cleanLabel;
   return "";
}

void cxMenuBar::setMenuHotkey(int pKey, int pMenuIndex)
{
   if (pMenuIndex >= 0 && pMenuIndex < (int)mEntries.size())
      mMenuHotkeys[pKey] = pMenuIndex;
}

long cxMenuBar::getLastMenuReturnCode() const
{
   return mLastMenuReturnCode;
}

void cxMenuBar::setBarColor(e_cxColors pColor)
{
   mBarColorPair = pColor;
}

void cxMenuBar::setHighlightColor(e_cxColors pColor)
{
   mHighlightColorPair = pColor;
}

// Draw the bar contents
void cxMenuBar::drawBar()
{
   if (mWindow == nullptr)
      return;

   // Precompute complete attribute values so color pair switching is atomic.
   // Using wattrset() (instead of wattron/wattroff) avoids the bug where
   // wattroff(COLOR_PAIR(x)) clears ALL color bits and leaves the window
   // with no color (renders as terminal default, often black-on-black).
   attr_t barAttr = COLOR_PAIR(mBarColorPair);
   if (mBarColorPair & cxCOLOR_BRIGHT)
      barAttr |= A_BOLD;

   attr_t hlAttr = COLOR_PAIR(mHighlightColorPair);
   if (mHighlightColorPair & cxCOLOR_BRIGHT)
      hlAttr |= A_BOLD;

   // Fill the entire bar row with the bar background color
   wattrset(mWindow, barAttr);
   for (int x = 0; x < width(); ++x)
      mvwaddch(mWindow, 0, x, ' ');

   // Draw each menu label
   for (int i = 0; i < (int)mEntries.size(); ++i)
   {
      int xOff = mEntries[i].xPos - left(); // convert to window-relative
      bool isSelected = (i == mCurrentIndex && mHasFocus);
      attr_t activeAttr = isSelected ? hlAttr : barAttr;

      // Draw 2 spaces of padding before label
      wattrset(mWindow, activeAttr);
      mvwaddch(mWindow, 0, xOff, ' ');
      mvwaddch(mWindow, 0, xOff + 1, ' ');

      // Draw the label, underlining the hotkey character
      int cx = xOff + 2;
      bool hotkeyDrawn = false;
      for (size_t ci = 0; ci < mEntries[i].label.length(); ++ci)
      {
         if (mEntries[i].label[ci] == '&' && ci + 1 < mEntries[i].label.length() && !hotkeyDrawn)
         {
            ++ci;
            wattrset(mWindow, activeAttr | A_UNDERLINE);
            mvwaddch(mWindow, 0, cx, mEntries[i].label[ci]);
            wattrset(mWindow, activeAttr); // restore (no underline)
            hotkeyDrawn = true;
         }
         else
         {
            mvwaddch(mWindow, 0, cx, mEntries[i].label[ci]);
         }
         ++cx;
      }

      // Draw 2 spaces of padding after label
      int labelLen = (int)mEntries[i].cleanLabel.length();
      mvwaddch(mWindow, 0, xOff + 2 + labelLen, ' ');
      mvwaddch(mWindow, 0, xOff + 2 + labelLen + 1, ' ');
   }

   wattrset(mWindow, A_NORMAL);
   wrefresh(mWindow);
}

// Open a dropdown menu at the given index
long cxMenuBar::openDropdown(int pIndex)
{
   if (pIndex < 0 || pIndex >= (int)mEntries.size())
      return cxID_QUIT;
   if (mEntries[pIndex].menu == nullptr)
      return cxID_QUIT;

   cxMenu* menu = mEntries[pIndex].menu;

   // Position the menu directly below the menu bar item
   int menuRow = top() + 1;
   int menuCol = mEntries[pIndex].xPos;
   menu->move(menuRow, menuCol, false);
   menu->setExitOnOutsideClick(true);

   long result = menu->showModal();
   menu->hide();

   // If the user clicked outside the menu (mouse outside), check if
   // they clicked on another menu bar item
   return result;
}

// show
long cxMenuBar::show(bool pBringToTop, bool pShowSubwindows)
{
   long retVal = cxWindow::show(pBringToTop, pShowSubwindows);
   drawBar();
   return retVal;
}

// showModal
long cxMenuBar::showModal(bool pShowSelf, bool pBringToTop, bool pShowSubwindows)
{
   if (pShowSelf)
      show(pBringToTop, pShowSubwindows);
   mHasFocus = true;
   drawBar();
   long retCode = inputLoop();
   mHasFocus = false;
   drawBar(); // Redraw without highlight
   return retCode;
}

// showModalWithClick: show bar and immediately open the dropdown for the
// item at screen column pClickX (the mouse click that brought us here).
long cxMenuBar::showModalWithClick(int pClickX, bool pShowSelf,
                                   bool pBringToTop, bool pShowSubwindows)
{
   if (pShowSelf)
      show(pBringToTop, pShowSubwindows);
   mHasFocus = true;

   // Identify which item the click landed on
   int clickedIndex = -1;
   for (int i = 0; i < (int)mEntries.size(); ++i)
   {
      int startX = mEntries[i].xPos;
      int endX = startX + (int)mEntries[i].cleanLabel.length() + 4;
      if (pClickX >= startX && pClickX < endX)
      {
         clickedIndex = i;
         break;
      }
   }

   long returnCode = cxID_QUIT;

   if (clickedIndex >= 0)
   {
      mCurrentIndex = clickedIndex;
      drawBar();
      // Immediately open the dropdown — no need to wait for another keypress
      long menuResult = openDropdown(clickedIndex);
      if (menuResult >= cxFIRST_AVAIL_RETURN_CODE)
      {
         mLastMenuReturnCode = menuResult;
         returnCode = menuResult;
         mHasFocus = false;
         drawBar();
         return returnCode;
      }

      // Dropdown closed without a selection.  Check whether it was dismissed
      // by a mouse click, and if so where that click landed.
      if (mEntries[clickedIndex].menu != nullptr &&
          mEntries[clickedIndex].menu->lastKeyWasMouseEvt())
      {
         int ly, lx;
         mEntries[clickedIndex].menu->getLastMouseEvtCoords(ly, lx);
         if (ly == top())
         {
            // Click was on the menu bar row — find the target item (if any)
            int targetIndex = -1;
            for (int j = 0; j < (int)mEntries.size(); ++j)
            {
               int sx = mEntries[j].xPos;
               int ex = sx + (int)mEntries[j].cleanLabel.length() + 4;
               if (lx >= sx && lx < ex)
               {
                  targetIndex = j;
                  break;
               }
            }
            if (targetIndex < 0 || targetIndex == clickedIndex)
            {
               // Same item or blank bar area: close the bar
               mHasFocus = false;
               drawBar();
               return cxID_QUIT;
            }
            // Different item: open it directly (the event was consumed, so we
            // can't rely on the input loop seeing it again)
            mCurrentIndex = targetIndex;
            drawBar();
            long mr = openDropdown(targetIndex);
            if (mr >= cxFIRST_AVAIL_RETURN_CODE)
            {
               mLastMenuReturnCode = mr;
               mHasFocus = false;
               drawBar();
               return mr;
            }
            // That dropdown also closed without a selection — fall through to
            // the keyboard input loop so the bar stays active
         }
         else
         {
            // Click was outside the menu bar entirely: close the bar
            mHasFocus = false;
            drawBar();
            return cxID_QUIT;
         }
      }
   }

   // Fall through to the normal input loop
   drawBar();
   returnCode = inputLoop();
   mHasFocus = false;
   drawBar();
   return returnCode;
}

bool cxMenuBar::modalGetsKeypress() const
{
   return true;
}

void cxMenuBar::draw()
{
   drawBar();
}

void cxMenuBar::hide(bool pHideSubwindows)
{
   cxWindow::hide(pHideSubwindows);
}

void cxMenuBar::unhide(bool pUnhideSubwindows)
{
   cxWindow::unhide(pUnhideSubwindows);
   drawBar();
}

void cxMenuBar::erase(bool pEraseSubwindows)
{
   cxWindow::erase(pEraseSubwindows);
}

bool cxMenuBar::move(int pNewRow, int pNewCol, bool pRefresh)
{
   // Recalculate entry x positions
   int oldLeft = left();
   int diff = pNewCol - oldLeft;
   for (auto& entry : mEntries)
      entry.xPos += diff;
   return cxWindow::move(pNewRow, pNewCol, pRefresh);
}

void cxMenuBar::resize(int pNewHeight, int pNewWidth, bool pRefresh)
{
   cxWindow::resize(1, pNewWidth, pRefresh); // Always 1 row tall
}

void cxMenuBar::clear(bool pRefresh)
{
   cxWindow::clear(pRefresh);
}

void cxMenuBar::bringToTop(bool pRefresh)
{
   cxWindow::bringToTop(pRefresh);
}

bool cxMenuBar::hasFocus() const
{
   return mHasFocus;
}

void cxMenuBar::setColor(e_WidgetItems pItem, e_cxColors pColor)
{
   cxWindow::setColor(pItem, pColor);
}

void cxMenuBar::setBorderStyle(eBorderStyle pBorderStyle)
{
   cxWindow::setBorderStyle(pBorderStyle);
}

void cxMenuBar::setLastKey(int pLastKey)
{
   cxWindow::setLastKey(pLastKey);
}

void cxMenuBar::quitNow()
{
   cxWindow::quitNow();
}

void cxMenuBar::exitNow()
{
   cxWindow::exitNow();
}

bool cxMenuBar::setKeyFunction(int pKey, const shared_ptr<cxFunction>& pFunction)
{
   return cxWindow::setKeyFunction(pKey, pFunction);
}

void cxMenuBar::clearKeyFunction(int pKey)
{
   cxWindow::clearKeyFunction(pKey);
}

void cxMenuBar::clearKeyFunctions()
{
   cxWindow::clearKeyFunctions();
}

void cxMenuBar::removeQuitKey(int pKey)
{
   cxWindow::removeQuitKey(pKey);
}

void cxMenuBar::removeExitKey(int pKey)
{
   cxWindow::removeExitKey(pKey);
}

void cxMenuBar::setEnabled(bool pEnabled)
{
   cxWindow::setEnabled(pEnabled);
}

void cxMenuBar::setDisableCursorOnShow(bool pDisableCursorOnShow)
{
   cxWindow::setDisableCursorOnShow(pDisableCursorOnShow);
}

string cxMenuBar::cxTypeStr() const
{
   return "cxMenuBar";
}

cxWindow* cxMenuBar::getParent() const
{
   return cxWindow::getParent();
}

void cxMenuBar::addAttr(e_WidgetItems pItem, attr_t pAttr)
{
   cxWindow::addAttr(pItem, pAttr);
}

void cxMenuBar::setAttr(e_WidgetItems pItem, attr_t pAttr)
{
   cxWindow::setAttr(pItem, pAttr);
}

void cxMenuBar::removeAttr(e_WidgetItems pItem, attr_t pAttr)
{
   cxWindow::removeAttr(pItem, pAttr);
}

void cxMenuBar::removeAttrs(e_WidgetItems pItem)
{
   cxWindow::removeAttrs(pItem);
}

void cxMenuBar::getAttrs(e_WidgetItems pItem, set<attr_t>& pAttrs) const
{
   cxWindow::getAttrs(pItem, pAttrs);
}

void cxMenuBar::enableAttrs(WINDOW *pWin, e_WidgetItems pItem)
{
   cxWindow::enableAttrs(pWin, pItem);
}

void cxMenuBar::disableAttrs(WINDOW *pWin, e_WidgetItems pItem)
{
   cxWindow::disableAttrs(pWin, pItem);
}

e_cxColors cxMenuBar::getItemColor(e_WidgetItems pItem) const
{
   return cxWindow::getItemColor(pItem);
}

// Main input loop for the menu bar
long cxMenuBar::inputLoop()
{
   if (mEntries.empty())
      return cxID_QUIT;

   bool continueOn = true;
   long returnCode = cxID_QUIT;
   curs_set(0); // Hide cursor

   while (continueOn)
   {
      drawBar();
      int ch = wgetch(mWindow);
      setLastKey(ch);

      if (ch == KEY_MOUSE)
      {
         MEVENT mouseEvt;
         if (getmouse(&mouseEvt) == OK)
         {
            int my = mouseEvt.y;
            int mx = mouseEvt.x;
            // Check if click is on the menu bar row
            if (my == top())
            {
               // Find which menu item was clicked
               bool found = false;
               for (int i = 0; i < (int)mEntries.size(); ++i)
               {
                  int startX = mEntries[i].xPos;
                  int endX = startX + (int)mEntries[i].cleanLabel.length() + 4;
                  if (mx >= startX && mx < endX)
                  {
                     mCurrentIndex = i;
                     drawBar();
                     // Open the dropdown
                     long menuResult = openDropdown(i);
                     if (menuResult >= cxFIRST_AVAIL_RETURN_CODE)
                     {
                        mLastMenuReturnCode = menuResult;
                        returnCode = menuResult;
                        continueOn = false;
                     }
                     else
                     {
                        // Dropdown closed without a selection.  Check whether
                        // a mouse click caused it and where that click landed.
                        if (mEntries[i].menu != nullptr && mEntries[i].menu->lastKeyWasMouseEvt())
                        {
                           int ly, lx;
                           mEntries[i].menu->getLastMouseEvtCoords(ly, lx);
                           if (ly == top())
                           {
                              // Click was on the menu bar row
                              int targetIndex = -1;
                              for (int j = 0; j < (int)mEntries.size(); ++j)
                              {
                                 int sx = mEntries[j].xPos;
                                 int ex = sx + (int)mEntries[j].cleanLabel.length() + 4;
                                 if (lx >= sx && lx < ex)
                                 {
                                    targetIndex = j;
                                    break;
                                 }
                              }
                              if (targetIndex >= 0 && targetIndex != i)
                              {
                                 // Different item: open its dropdown
                                 mCurrentIndex = targetIndex;
                                 drawBar();
                                 long mr = openDropdown(targetIndex);
                                 if (mr >= cxFIRST_AVAIL_RETURN_CODE)
                                 {
                                    mLastMenuReturnCode = mr;
                                    returnCode = mr;
                                    continueOn = false;
                                 }
                              }
                              else
                              {
                                 // Same item or blank bar area: close the bar
                                 returnCode = cxID_QUIT;
                                 continueOn = false;
                              }
                           }
                           else
                           {
                              // Click was outside the bar: close the bar
                              returnCode = cxID_QUIT;
                              continueOn = false;
                           }
                        }
                     }
                     found = true;
                     break;
                  }
               }
               if (!found)
               {
                  // Click on the bar but not on any item - ignore
               }
            }
            else
            {
               // Click outside the menu bar - close the menu bar
               returnCode = cxID_QUIT;
               continueOn = false;
            }
         }
      }
      else if (ch == KEY_LEFT)
      {
         if (mCurrentIndex > 0)
            --mCurrentIndex;
         else
            mCurrentIndex = (int)mEntries.size() - 1; // wrap
      }
      else if (ch == KEY_RIGHT)
      {
         if (mCurrentIndex < (int)mEntries.size() - 1)
            ++mCurrentIndex;
         else
            mCurrentIndex = 0; // wrap
      }
      else if (ch == '\n' || ch == KEY_ENTER || ch == KEY_DOWN)
      {
         // Open the dropdown for the current item
         long menuResult = openDropdown(mCurrentIndex);
         if (menuResult >= cxFIRST_AVAIL_RETURN_CODE)
         {
            mLastMenuReturnCode = menuResult;
            returnCode = menuResult;
            continueOn = false;
         }
         else
         {
            // Menu was dismissed; check if user navigated left/right
            if (mEntries[mCurrentIndex].menu != nullptr)
            {
               int lastKey = mEntries[mCurrentIndex].menu->getLastKey();
               if (lastKey == KEY_LEFT)
               {
                  if (mCurrentIndex > 0)
                     --mCurrentIndex;
                  else
                     mCurrentIndex = (int)mEntries.size() - 1;
               }
               else if (lastKey == KEY_RIGHT)
               {
                  if (mCurrentIndex < (int)mEntries.size() - 1)
                     ++mCurrentIndex;
                  else
                     mCurrentIndex = 0;
               }
            }
         }
      }
      else if (ch == ESC || ch == KEY_F(10))
      {
         returnCode = cxID_QUIT;
         continueOn = false;
      }
      else
      {
         // Check if it's a hotkey for a menu entry
         char lch = (char)std::tolower(ch);
         bool handled = false;
         for (int i = 0; i < (int)mEntries.size(); ++i)
         {
            if (mEntries[i].hotkeyChar == lch && lch != '\0')
            {
               mCurrentIndex = i;
               drawBar();
               long menuResult = openDropdown(i);
               if (menuResult >= cxFIRST_AVAIL_RETURN_CODE)
               {
                  mLastMenuReturnCode = menuResult;
                  returnCode = menuResult;
                  continueOn = false;
               }
               handled = true;
               break;
            }
         }
         // Check registered hotkeys
         if (!handled)
         {
            auto it = mMenuHotkeys.find(ch);
            if (it != mMenuHotkeys.end())
            {
               mCurrentIndex = it->second;
               drawBar();
               long menuResult = openDropdown(it->second);
               if (menuResult >= cxFIRST_AVAIL_RETURN_CODE)
               {
                  mLastMenuReturnCode = menuResult;
                  returnCode = menuResult;
                  continueOn = false;
               }
            }
         }
      }
   }

   return returnCode;
}

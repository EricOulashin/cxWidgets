// Copyright (c) 2026 E. Oulashin

#include "cxLabel.h"
#include "cxBase.h"
#include <ncurses.h>

using std::string;

cxLabel::cxLabel(cxWindow *pParentWindow, int pRow, int pCol,
                 int pWidth, const string& pText,
                 eBorderStyle pBorderStyle)
   : cxWindow(pParentWindow, pRow, pCol,
              pBorderStyle == eBS_NOBORDER ? 1 : 3,
              pBorderStyle == eBS_NOBORDER ? pWidth : pWidth + 2,
              "", pText, "", pBorderStyle, nullptr, nullptr),
     mText(pText)
{
}

cxLabel::cxLabel(const cxLabel& pThatLabel)
   : cxWindow(nullptr, pThatLabel.top(), pThatLabel.left(),
              pThatLabel.height(), pThatLabel.width(),
              pThatLabel.getTitle(), pThatLabel.mText,
              pThatLabel.getStatus(), pThatLabel.getBorderStyle(),
              nullptr, nullptr),
     mText(pThatLabel.mText)
{
}

cxLabel::~cxLabel()
{
}

long cxLabel::show(bool pBringToTop, bool pShowSubwindows)
{
   draw();
   long returnVal = cxWindow::show(pBringToTop, false);
   cxBase::updateWindows();
   return returnVal;
}

long cxLabel::showModal(bool pShowSelf, bool pBringToTop, bool pShowSubwindows)
{
   // Labels are non-interactive, so showModal just shows and returns
   draw();
   return cxWindow::show(pBringToTop, false);
}

bool cxLabel::modalGetsKeypress() const
{
   return false; // Labels don't accept input
}

void cxLabel::draw()
{
   // Use the parent draw, which draws the message (mText was set as the message)
   cxWindow::draw();
}

bool cxLabel::move(int pNewRow, int pNewCol, bool pRefresh)
{
   return cxWindow::move(pNewRow, pNewCol, pRefresh);
}

void cxLabel::resize(int pNewHeight, int pNewWidth, bool pRefresh)
{
   cxWindow::resize(pNewHeight, pNewWidth, pRefresh);
}

void cxLabel::clear(bool pRefresh)
{
   cxWindow::clear(pRefresh);
}

string cxLabel::cxTypeStr() const
{
   return "cxLabel";
}

string cxLabel::getText() const
{
   return mText;
}

void cxLabel::setText(const string& pText, bool pRefresh)
{
   mText = pText;
   setMessage(pText);
   if (pRefresh)
   {
      draw();
      cxBase::updateWindows();
   }
}

// Copyright (c) 2026 E. Oulashin

#include "cxGrid.h"
#include "cxUtils.h"
#include "cxButton.h"
#include <ncurses.h>
#include <algorithm>
#include <sstream>

using std::string;
using std::vector;
using std::shared_ptr;
using std::make_shared;
using std::set;

namespace cx {

// Helper: Generate default column label (A, B, ..., Z, AA, AB, ...)
string cxGrid::defaultColLabel(int pCol)
{
   string label;
   int col = pCol;
   do
   {
      label = char('A' + (col % 26)) + label;
      col = col / 26 - 1;
   } while (col >= 0);
   return label;
}

// Helper: Generate default row label (1, 2, 3, ...)
string cxGrid::defaultRowLabel(int pRow)
{
   return std::to_string(pRow + 1);
}

// Helper: Create a default cell widget (cxInput) for a given grid position
shared_ptr<cxWindow> cxGrid::createDefaultCell(int pRow, int pCol)
{
   // Create a cxInput with no border; position and size will be set
   // by positionCells() before display
   auto cell = make_shared<cxInput>(nullptr, 0, 0, mColWidths[pCol], "",
                                    eBS_NOBORDER, eINPUT_EDITABLE);
   // Allow the cell to exit its input loop on mouse clicks outside it,
   // so the grid can redirect focus to whatever cell was clicked.
   cell->setExitOnMouseOutside(true);
   // Allow arrow keys at text boundaries to navigate between cells
   cell->setExitOnArrowAtBoundary(true);
   return cell;
}

// Initialize the grid data structures
void cxGrid::initGrid()
{
   // Initialize column widths and labels
   mColWidths.resize(mNumCols, mDefaultColWidth);
   mColLabels.resize(mNumCols);
   for (int c = 0; c < mNumCols; ++c)
   {
      mColLabels[c] = defaultColLabel(c);
   }

   // Initialize row labels
   mRowLabels.resize(mNumRows);
   for (int r = 0; r < mNumRows; ++r)
   {
      mRowLabels[r] = defaultRowLabel(r);
   }

   // Initialize cells - each row is a vector of shared_ptr<cxWindow>
   mCells.resize(mNumRows);
   for (int r = 0; r < mNumRows; ++r)
   {
      mCells[r].resize(mNumCols);
      for (int c = 0; c < mNumCols; ++c)
      {
         mCells[r][c] = createDefaultCell(r, c);
      }
   }
}

// Constructor
cxGrid::cxGrid(cxWindow *pParentWindow, int pRow, int pCol,
               int pHeight, int pWidth,
               int pNumRows, int pNumCols,
               int pDefaultColWidth,
               const string& pTitle,
               eBorderStyle pBorderStyle)
   : cxWindow(pParentWindow, pRow, pCol, pHeight, pWidth,
              pTitle, "", "", pBorderStyle, nullptr, nullptr),
     mNumRows(pNumRows),
     mNumCols(pNumCols),
     mRowHeaderWidth(5),
     mFocusRow(0),
     mFocusCol(0),
     mScrollRow(0),
     mScrollCol(0),
     mShowColHeaders(true),
     mShowRowHeaders(true),
     mHeaderColorPair(eGRAY_BLUE),
     mGridLineColorPair(eGRAY_BLUE),
     mDefaultColWidth(pDefaultColWidth)
{
   initGrid();
}

// Copy constructor
cxGrid::cxGrid(const cxGrid& pThatGrid)
   : cxWindow(nullptr, pThatGrid.top(), pThatGrid.left(),
              pThatGrid.height(), pThatGrid.width(),
              pThatGrid.getTitle(), "", "",
              pThatGrid.getBorderStyle(), nullptr, nullptr),
     mNumRows(pThatGrid.mNumRows),
     mNumCols(pThatGrid.mNumCols),
     mCells(pThatGrid.mCells),
     mColWidths(pThatGrid.mColWidths),
     mColLabels(pThatGrid.mColLabels),
     mRowLabels(pThatGrid.mRowLabels),
     mRowHeaderWidth(pThatGrid.mRowHeaderWidth),
     mFocusRow(pThatGrid.mFocusRow),
     mFocusCol(pThatGrid.mFocusCol),
     mScrollRow(pThatGrid.mScrollRow),
     mScrollCol(pThatGrid.mScrollCol),
     mShowColHeaders(pThatGrid.mShowColHeaders),
     mShowRowHeaders(pThatGrid.mShowRowHeaders),
     mHeaderColorPair(pThatGrid.mHeaderColorPair),
     mGridLineColorPair(pThatGrid.mGridLineColorPair),
     mDefaultColWidth(pThatGrid.mDefaultColWidth)
{
}

// Destructor
cxGrid::~cxGrid()
{
}

// Calculate the inner top row (below border + column header)
int cxGrid::innerTop() const
{
   int t = top();
   // Account for border
   if (getBorderStyle() != eBS_NOBORDER)
      ++t;
   // Account for column header row
   if (mShowColHeaders)
      ++t;
   return t;
}

// Calculate the inner left column (past border + row header)
int cxGrid::innerLeft() const
{
   int l = left();
   // Account for border
   if (getBorderStyle() != eBS_NOBORDER)
      ++l;
   // Account for row header width + separator
   if (mShowRowHeaders)
      l += mRowHeaderWidth + 1; // +1 for the vertical separator
   return l;
}

// Calculate how many data rows fit in the visible area.
// Each data row occupies 2 screen rows: 1 for the cell, 1 for the
// horizontal separator line below it. The last visible row still gets
// a separator line (so all N rows take exactly 2*N screen rows).
int cxGrid::visibleRows() const
{
   int availHeight = height();
   // Subtract border (top + bottom)
   if (getBorderStyle() != eBS_NOBORDER)
      availHeight -= 2;
   // Subtract column header
   if (mShowColHeaders)
      --availHeight;
   if (availHeight < 0)
      availHeight = 0;
   // Each data row + its separator below takes 2 screen rows
   return availHeight / 2;
}

// Calculate how many columns fit in the visible area
int cxGrid::visibleCols() const
{
   int availWidth = width();
   // Subtract border (left + right)
   if (getBorderStyle() != eBS_NOBORDER)
      availWidth -= 2;
   // Subtract row header
   if (mShowRowHeaders)
      availWidth -= mRowHeaderWidth + 1; // +1 for separator

   // Count how many columns fit starting from mScrollCol
   int count = 0;
   int usedWidth = 0;
   for (int c = mScrollCol; c < mNumCols; ++c)
   {
      int colW = mColWidths[c];
      // Add 1 for column separator (except possibly the last visible column)
      int needed = colW + (count > 0 ? 1 : 0);
      if (usedWidth + needed > availWidth)
         break;
      usedWidth += needed;
      ++count;
   }
   return count;
}

// Ensure the focused cell is visible by adjusting scroll offsets
void cxGrid::ensureFocusVisible()
{
   // Vertical scrolling
   if (mFocusRow < mScrollRow)
      mScrollRow = mFocusRow;
   int vr = visibleRows();
   if (vr > 0 && mFocusRow >= mScrollRow + vr)
      mScrollRow = mFocusRow - vr + 1;

   // Horizontal scrolling
   if (mFocusCol < mScrollCol)
      mScrollCol = mFocusCol;
   // Check if the focus column is past the visible range
   while (mFocusCol >= mScrollCol + visibleCols() && mScrollCol < mNumCols - 1)
      ++mScrollCol;
}

// Draw column headers
void cxGrid::drawColHeaders()
{
   if (!mShowColHeaders || mWindow == nullptr)
      return;

   int headerRow = top();
   if (getBorderStyle() != eBS_NOBORDER)
      ++headerRow;

   int xPos = innerLeft();

   // Enable header attributes
   wattron(mWindow, COLOR_PAIR(mHeaderColorPair) | A_BOLD);

   int vc = visibleCols();
   for (int i = 0; i < vc && (mScrollCol + i) < mNumCols; ++i)
   {
      int c = mScrollCol + i;
      int colW = mColWidths[c];
      string label = mColLabels[c];
      // Center the label in the column
      int padding = (colW - (int)label.length()) / 2;
      if (padding < 0)
         padding = 0;
      // Write the label centered in the column width
      int screenRow = headerRow - top();
      int screenCol = xPos - left();
      // Fill column header area with spaces first
      for (int j = 0; j < colW && (screenCol + j) < width(); ++j)
      {
         mvwaddch(mWindow, screenRow, screenCol + j, ' ');
      }
      // Write the centered label
      int labelStart = screenCol + padding;
      for (int j = 0; j < (int)label.length() && (labelStart + j) < width(); ++j)
      {
         mvwaddch(mWindow, screenRow, labelStart + j, label[j]);
      }

      xPos += colW;
      // Add separator between columns
      if (i < vc - 1 && xPos - left() < width())
      {
         mvwaddch(mWindow, screenRow, xPos - left(), ACS_VLINE);
         ++xPos;
      }
   }

   wattroff(mWindow, COLOR_PAIR(mHeaderColorPair) | A_BOLD);
}

// Draw row headers
void cxGrid::drawRowHeaders()
{
   if (!mShowRowHeaders || mWindow == nullptr)
      return;

   int xPos = left();
   if (getBorderStyle() != eBS_NOBORDER)
      ++xPos;
   int yStart = innerTop();

   wattron(mWindow, COLOR_PAIR(mHeaderColorPair) | A_BOLD);

   int vr = visibleRows();
   for (int i = 0; i < vr && (mScrollRow + i) < mNumRows; ++i)
   {
      int r = mScrollRow + i;
      string label = mRowLabels[r];
      // Each data row is at screen row yStart + 2*i (the separator is at 2*i+1)
      int screenRow = (yStart + 2 * i) - top();
      int screenCol = xPos - left();
      // Fill data row with spaces
      for (int j = 0; j < mRowHeaderWidth && (screenCol + j) < width(); ++j)
      {
         mvwaddch(mWindow, screenRow, screenCol + j, ' ');
      }
      // Right-justify the row number label
      int labelStart = screenCol + mRowHeaderWidth - (int)label.length();
      if (labelStart < screenCol)
         labelStart = screenCol;
      for (int j = 0; j < (int)label.length() && (labelStart + j) < width(); ++j)
      {
         mvwaddch(mWindow, screenRow, labelStart + j, label[j]);
      }

      // Draw vertical separator after row header (data row)
      int sepCol = screenCol + mRowHeaderWidth;
      if (sepCol < width())
      {
         mvwaddch(mWindow, screenRow, sepCol, ACS_VLINE);
      }

      // Draw the horizontal separator row (below the data row)
      int hRow = screenRow + 1;
      if (hRow < height() - (getBorderStyle() != eBS_NOBORDER ? 1 : 0))
      {
         // Fill separator row with horizontal line characters
         for (int j = 0; j < mRowHeaderWidth && (screenCol + j) < width(); ++j)
         {
            mvwaddch(mWindow, hRow, screenCol + j, ACS_HLINE);
         }
         // Draw T-junction at the separator column
         if (sepCol < width())
         {
            mvwaddch(mWindow, hRow, sepCol, ACS_PLUS);
         }
      }
   }

   wattroff(mWindow, COLOR_PAIR(mHeaderColorPair) | A_BOLD);
}

// Draw grid lines (separators between cells)
void cxGrid::drawGridLines()
{
   if (mWindow == nullptr)
      return;

   int yStart = innerTop();
   int xStart = innerLeft();
   int vr = visibleRows();
   int vc = visibleCols();
   int bottomLimit = height() - (getBorderStyle() != eBS_NOBORDER ? 1 : 0);

   wattron(mWindow, COLOR_PAIR(mGridLineColorPair));

   // Collect the x positions of column separators (window-relative)
   vector<int> sepCols;
   {
      int xPos = xStart;
      for (int i = 0; i < vc && (mScrollCol + i) < mNumCols; ++i)
      {
         xPos += mColWidths[mScrollCol + i];
         if (i < vc - 1)
         {
            int screenCol = xPos - left();
            if (screenCol < width())
               sepCols.push_back(screenCol);
            ++xPos;
         }
      }
   }

   // Draw vertical separators between columns (at each data row and its separator row)
   for (int col : sepCols)
   {
      for (int row = 0; row < vr && (mScrollRow + row) < mNumRows; ++row)
      {
         // Data row
         int screenRow = (yStart + 2 * row) - top();
         if (screenRow < bottomLimit)
            mvwaddch(mWindow, screenRow, col, ACS_VLINE);
         // Separator row — draw plus (cross) instead of vline
         int hRow = screenRow + 1;
         if (hRow < bottomLimit)
            mvwaddch(mWindow, hRow, col, ACS_PLUS);
      }
   }

   // Draw horizontal separator lines across the cell area (between data rows).
   // These cover the cell columns in the separator row; row header + T-junctions
   // are handled by drawRowHeaders(), and column-separator crosses are handled above.
   for (int row = 0; row < vr && (mScrollRow + row) < mNumRows; ++row)
   {
      int dataScreenRow = (yStart + 2 * row) - top();
      int hRow = dataScreenRow + 1; // separator row
      if (hRow >= bottomLimit)
         break;

      // Draw ACS_HLINE across the full cell area (between row-header separator
      // and right edge, excluding positions already drawn as ACS_PLUS above)
      int xPos = xStart;
      for (int ci = 0; ci < vc && (mScrollCol + ci) < mNumCols; ++ci)
      {
         int colW = mColWidths[mScrollCol + ci];
         int screenCol = xPos - left();
         // Fill this column's width with horizontal line chars
         for (int j = 0; j < colW && (screenCol + j) < width(); ++j)
            mvwaddch(mWindow, hRow, screenCol + j, ACS_HLINE);
         xPos += colW;
         if (ci < vc - 1)
            ++xPos; // skip the separator column (already drawn as ACS_PLUS)
      }
   }

   wattroff(mWindow, COLOR_PAIR(mGridLineColorPair));
}

// Position cell widgets at their correct screen locations
void cxGrid::positionCells()
{
   int yStart = innerTop();
   int xStart = innerLeft();
   int vr = visibleRows();
   int vc = visibleCols();

   // First, hide all cells
   for (int r = 0; r < mNumRows; ++r)
   {
      for (int c = 0; c < mNumCols; ++c)
      {
         if (mCells[r][c])
         {
            mCells[r][c]->hide();
         }
      }
   }

   // Position and show visible cells
   int yPos = yStart;
   for (int ri = 0; ri < vr && (mScrollRow + ri) < mNumRows; ++ri)
   {
      int r = mScrollRow + ri;
      int xPos = xStart;
      for (int ci = 0; ci < vc && (mScrollCol + ci) < mNumCols; ++ci)
      {
         int c = mScrollCol + ci;
         if (mCells[r][c])
         {
            int colW = mColWidths[c];
            // Resize the cell widget to match the column width
            mCells[r][c]->resize(1, colW, false);
            // Move it to the correct position
            mCells[r][c]->move(yPos, xPos, false);
         }
         xPos += mColWidths[c];
         // Skip separator column
         if (ci < vc - 1)
            ++xPos;
      }
      yPos += 2;  // skip separator row
   }
}

// Draw the grid
void cxGrid::draw()
{
   // Draw the outer window (border, title, etc.)
   cxWindow::draw();

   // Draw grid components
   drawColHeaders();
   drawRowHeaders();
   drawGridLines();

   // Position cells at their correct locations
   positionCells();
}

// Show the grid
long cxGrid::show(bool pBringToTop, bool pShowSubwindows)
{
   draw();
   long returnVal = cxWindow::show(pBringToTop, false);

   // Show all visible cells
   int vr = visibleRows();
   int vc = visibleCols();
   for (int ri = 0; ri < vr && (mScrollRow + ri) < mNumRows; ++ri)
   {
      int r = mScrollRow + ri;
      for (int ci = 0; ci < vc && (mScrollCol + ci) < mNumCols; ++ci)
      {
         int c = mScrollCol + ci;
         if (mCells[r][c])
         {
            mCells[r][c]->show(false, false);
         }
      }
   }

   cx::updateWindows();
   return returnVal;
}

// Navigate to the next cell
void cxGrid::focusNextCell()
{
   ++mFocusCol;
   if (mFocusCol >= mNumCols)
   {
      mFocusCol = 0;
      ++mFocusRow;
      if (mFocusRow >= mNumRows)
      {
         mFocusRow = mNumRows - 1;
         mFocusCol = mNumCols - 1;
      }
   }
   ensureFocusVisible();
}

// Navigate to the previous cell
void cxGrid::focusPrevCell()
{
   --mFocusCol;
   if (mFocusCol < 0)
   {
      mFocusCol = mNumCols - 1;
      --mFocusRow;
      if (mFocusRow < 0)
      {
         mFocusRow = 0;
         mFocusCol = 0;
      }
   }
   ensureFocusVisible();
}

// Helper: Find which cell (row, col) a screen coordinate falls in.
// Returns true if found, with pRow and pCol set. Returns false if
// the point is not in any visible cell.
bool cxGrid::findCellAt(int pY, int pX, int& pRow, int& pCol) const
{
   int vr = visibleRows();
   int vc = visibleCols();
   int yStart = innerTop();
   int xStart = innerLeft();

   // Check rows (each data row uses 2 screen rows: cell row + separator row)
   for (int ri = 0; ri < vr && (mScrollRow + ri) < mNumRows; ++ri)
   {
      int yPos = yStart + 2 * ri;
      if (pY == yPos)
      {
         // This is the row - find the column
         int xPos = xStart;
         for (int ci = 0; ci < vc && (mScrollCol + ci) < mNumCols; ++ci)
         {
            int colW = mColWidths[mScrollCol + ci];
            if (pX >= xPos && pX < xPos + colW)
            {
               pRow = mScrollRow + ri;
               pCol = mScrollCol + ci;
               return true;
            }
            xPos += colW;
            // Skip separator
            if (ci < vc - 1)
               ++xPos;
         }
         return false; // Row matched but no column matched (on a separator)
      }
   }
   return false;
}

// Main input loop for the grid
long cxGrid::inputLoop()
{
   bool continueOn = true;
   long returnCode = cxID_EXIT;

   while (continueOn && !getLeaveNow())
   {
      // Make sure the focus cell is visible
      ensureFocusVisible();

      // Redraw and reposition cells
      draw();
      show(false, false);

      // Validate focus cell
      if (mFocusRow < 0 || mFocusRow >= mNumRows ||
          mFocusCol < 0 || mFocusCol >= mNumCols ||
          !mCells[mFocusRow][mFocusCol])
      {
         // No valid cell to focus - exit
         continueOn = false;
         break;
      }

      auto& cell = mCells[mFocusRow][mFocusCol];
      int lastKey = NOKEY;

      // Check if the cell accepts keyboard input (modalGetsKeypress).
      // Non-interactive cells (e.g., cxLabel) don't wait for input,
      // so we must handle input at the grid level instead.
      if (cell->modalGetsKeypress())
      {
         // Interactive cell (cxInput, cxButton, etc.) - show it modally
         // and let it handle its own input loop.
         cell->showModal(true, true, false);
         lastKey = cell->getLastKey();
      }
      else
      {
         // Non-interactive cell (cxLabel, etc.) - show it (non-modally)
         // and get the keypress at the grid level so we don't busy-loop.
         cell->show(true, false);
         cx::updateWindows();
         curs_set(0);
         lastKey = wgetch(mWindow);
      }
      cxWindow::setLastKey(lastKey);

#ifdef NCURSES_MOUSE_VERSION
      // Handle mouse events at the grid level.  The mouse event may come
      // from the grid's own wgetch (for non-interactive cells) or from a
      // cell that exited its showModal() because of a mouse click.
      if (lastKey == KEY_MOUSE)
      {
         // Try to get the mouse event.  If the cell already consumed it
         // via getmouse(), we retrieve the coordinates from the cell's
         // stored mouse event instead.
         MEVENT mouseEvt;
         if (getmouse(&mouseEvt) != OK)
         {
            // The cell already consumed the event - get coords from the cell
            mouseEvt = cell->getMouseEvent();
         }
         // Store in mMouse so getLastMouseEvtCoords() returns the correct position
         mMouse = mouseEvt;

         // Check if the click is on a visible cell
         int clickRow = -1, clickCol = -1;
         if (findCellAt(mouseEvt.y, mouseEvt.x, clickRow, clickCol))
         {
            // If the user clicked on the already-focused cell, and that
            // cell is a cxButton, fire its onClick function and stay focused.
            if (clickRow == mFocusRow && clickCol == mFocusCol)
            {
               cxButton* btn = dynamic_cast<cxButton*>(cell.get());
               if (btn != nullptr)
               {
                  btn->runOnClickFunction();
                  continue;
               }
            }
            // Navigate focus to the clicked cell
            mFocusRow = clickRow;
            mFocusCol = clickCol;
            ensureFocusVisible();
         }
         // If click was outside the grid entirely, exit
         else if (!pointIsInWindow(mouseEvt.y, mouseEvt.x))
         {
            returnCode = cxID_EXIT;
            continueOn = false;
         }
         // Otherwise (click on header/separator/border), just continue
         continue;
      }
#endif

      // Check for key function on the grid itself
      bool functionExists = false;
      bool runOnLeave = true;
      continueOn = handleFunctionForLastKey(&functionExists, &runOnLeave);
      if (functionExists && !continueOn)
      {
         returnCode = getReturnCode();
         break;
      }

      if (!functionExists)
      {
         switch (lastKey)
         {
            case '\t': // Tab - move to next cell
               focusNextCell();
               break;
            case KEY_BTAB: // Shift+Tab - move to previous cell
               focusPrevCell();
               break;
            case KEY_RIGHT:
               if (mFocusCol < mNumCols - 1)
               {
                  ++mFocusCol;
                  ensureFocusVisible();
                  // Place cursor at start of the new cell
                  {
                     auto& newCell = mCells[mFocusRow][mFocusCol];
                     cxInput* inp = dynamic_cast<cxInput*>(newCell.get());
                     if (inp)
                        inp->setCursorLeftAlign(true);
                  }
               }
               else
               {
                  // Already at rightmost column - keep cursor at end
                  cxInput* inp = dynamic_cast<cxInput*>(cell.get());
                  if (inp)
                     inp->setCursorLeftAlign(false);
               }
               break;
            case KEY_LEFT:
               if (mFocusCol > 0)
               {
                  --mFocusCol;
                  ensureFocusVisible();
                  // Place cursor at end of text in the new cell
                  {
                     auto& newCell = mCells[mFocusRow][mFocusCol];
                     cxInput* inp = dynamic_cast<cxInput*>(newCell.get());
                     if (inp)
                        inp->setCursorLeftAlign(false);
                  }
               }
               else
               {
                  // Already at leftmost column - keep cursor at start
                  cxInput* inp = dynamic_cast<cxInput*>(cell.get());
                  if (inp)
                     inp->setCursorLeftAlign(true);
               }
               break;
            case KEY_DOWN:
               if (mFocusRow < mNumRows - 1)
               {
                  ++mFocusRow;
                  ensureFocusVisible();
               }
               break;
            case KEY_UP:
               if (mFocusRow > 0)
               {
                  --mFocusRow;
                  ensureFocusVisible();
               }
               break;
            case ESC:
               returnCode = cxID_QUIT;
               continueOn = false;
               break;
            case '\n': // Enter - could move down
            case KEY_ENTER:
               if (mFocusRow < mNumRows - 1)
               {
                  ++mFocusRow;
                  ensureFocusVisible();
               }
               break;
            default:
               // Check quit/exit keys
               if (hasQuitKey(lastKey))
               {
                  returnCode = cxID_QUIT;
                  continueOn = false;
               }
               else if (hasExitKey(lastKey))
               {
                  returnCode = cxID_EXIT;
                  continueOn = false;
               }
               break;
         }
      }
   }

   return returnCode;
}

// Show the grid modally (interactive input loop)
long cxGrid::showModal(bool pShowSelf, bool pBringToTop, bool pShowSubwindows)
{
   setReturnCode(cxID_EXIT);

   if (isEnabled())
   {
      mIsModal = true;

      if (!runOnFocusFunction() && !getLeaveNow())
      {
         if (pShowSelf)
         {
            show(pBringToTop, pShowSubwindows);
         }

         setReturnCode(inputLoop());

         mIsModal = false;
         runOnLeaveFunction();
      }
      else
      {
         mIsModal = false;
      }
   }

   return getReturnCode();
}

bool cxGrid::modalGetsKeypress() const
{
   return true;
}

// Hide the grid and all cells
void cxGrid::hide(bool pHideSubwindows)
{
   for (int r = 0; r < mNumRows; ++r)
   {
      for (int c = 0; c < mNumCols; ++c)
      {
         if (mCells[r][c])
            mCells[r][c]->hide();
      }
   }
   cxWindow::hide(pHideSubwindows);
}

// Unhide the grid
void cxGrid::unhide(bool pUnhideSubwindows)
{
   cxWindow::unhide(pUnhideSubwindows);
}

// Erase the grid and all cells
void cxGrid::erase(bool pEraseSubwindows)
{
   for (int r = 0; r < mNumRows; ++r)
   {
      for (int c = 0; c < mNumCols; ++c)
      {
         if (mCells[r][c])
            mCells[r][c]->erase();
      }
   }
   cxWindow::erase(pEraseSubwindows);
}

// Move the grid
bool cxGrid::move(int pNewRow, int pNewCol, bool pRefresh)
{
   bool result = cxWindow::move(pNewRow, pNewCol, pRefresh);
   if (result)
   {
      positionCells();
   }
   return result;
}

// Resize the grid
void cxGrid::resize(int pNewHeight, int pNewWidth, bool pRefresh)
{
   cxWindow::resize(pNewHeight, pNewWidth, pRefresh);
   positionCells();
}

// Clear the grid
void cxGrid::clear(bool pRefresh)
{
   for (int r = 0; r < mNumRows; ++r)
   {
      for (int c = 0; c < mNumCols; ++c)
      {
         if (mCells[r][c])
            mCells[r][c]->clear(false);
      }
   }
   cxWindow::clear(pRefresh);
}

// Bring the grid to the top
void cxGrid::bringToTop(bool pRefresh)
{
   cxWindow::bringToTop(pRefresh);
   int vr = visibleRows();
   int vc = visibleCols();
   for (int ri = 0; ri < vr && (mScrollRow + ri) < mNumRows; ++ri)
   {
      int r = mScrollRow + ri;
      for (int ci = 0; ci < vc && (mScrollCol + ci) < mNumCols; ++ci)
      {
         int c = mScrollCol + ci;
         if (mCells[r][c])
            mCells[r][c]->bringToTop(false);
      }
   }
   if (pRefresh)
      cx::updateWindows();
}

bool cxGrid::hasFocus() const
{
   // The grid has focus if any of its cells have focus
   if (mFocusRow >= 0 && mFocusRow < mNumRows &&
       mFocusCol >= 0 && mFocusCol < mNumCols &&
       mCells[mFocusRow][mFocusCol])
   {
      return mCells[mFocusRow][mFocusCol]->hasFocus();
   }
   return false;
}

void cxGrid::setColor(e_WidgetItems pItem, e_cxColors pColor)
{
   cxWindow::setColor(pItem, pColor);
   // Apply to all cells
   for (int r = 0; r < mNumRows; ++r)
   {
      for (int c = 0; c < mNumCols; ++c)
      {
         if (mCells[r][c])
            mCells[r][c]->setColor(pItem, pColor);
      }
   }
}

void cxGrid::setBorderStyle(eBorderStyle pBorderStyle)
{
   cxWindow::setBorderStyle(pBorderStyle);
}

void cxGrid::setLastKey(int pLastKey)
{
   cxWindow::setLastKey(pLastKey);
}

void cxGrid::quitNow()
{
   cxWindow::quitNow();
}

void cxGrid::exitNow()
{
   cxWindow::exitNow();
}

bool cxGrid::setKeyFunction(int pKey, const shared_ptr<cxFunction>& pFunction)
{
   return cxWindow::setKeyFunction(pKey, pFunction);
}

void cxGrid::clearKeyFunction(int pKey)
{
   cxWindow::clearKeyFunction(pKey);
}

void cxGrid::clearKeyFunctions()
{
   cxWindow::clearKeyFunctions();
}

void cxGrid::removeQuitKey(int pKey)
{
   cxWindow::removeQuitKey(pKey);
}

void cxGrid::removeExitKey(int pKey)
{
   cxWindow::removeExitKey(pKey);
}

void cxGrid::setEnabled(bool pEnabled)
{
   cxWindow::setEnabled(pEnabled);
   for (int r = 0; r < mNumRows; ++r)
   {
      for (int c = 0; c < mNumCols; ++c)
      {
         if (mCells[r][c])
            mCells[r][c]->setEnabled(pEnabled);
      }
   }
}

void cxGrid::setDisableCursorOnShow(bool pDisableCursorOnShow)
{
   cxWindow::setDisableCursorOnShow(pDisableCursorOnShow);
}

string cxGrid::cxTypeStr() const
{
   return "cxGrid";
}

cxWindow* cxGrid::getParent() const
{
   return cxWindow::getParent();
}

void cxGrid::addAttr(e_WidgetItems pItem, attr_t pAttr)
{
   cxWindow::addAttr(pItem, pAttr);
}

void cxGrid::setAttr(e_WidgetItems pItem, attr_t pAttr)
{
   cxWindow::setAttr(pItem, pAttr);
}

void cxGrid::removeAttr(e_WidgetItems pItem, attr_t pAttr)
{
   cxWindow::removeAttr(pItem, pAttr);
}

void cxGrid::removeAttrs(e_WidgetItems pItem)
{
   cxWindow::removeAttrs(pItem);
}

void cxGrid::getAttrs(e_WidgetItems pItem, set<attr_t>& pAttrs) const
{
   cxWindow::getAttrs(pItem, pAttrs);
}

void cxGrid::enableAttrs(WINDOW *pWin, e_WidgetItems pItem)
{
   cxWindow::enableAttrs(pWin, pItem);
}

void cxGrid::disableAttrs(WINDOW *pWin, e_WidgetItems pItem)
{
   cxWindow::disableAttrs(pWin, pItem);
}

e_cxColors cxGrid::getItemColor(e_WidgetItems pItem) const
{
   return cxWindow::getItemColor(pItem);
}


// Grid-specific functions

long cxGrid::showModal(int pFocusRow, int pFocusCol, bool pShowSelf, bool pBringToTop, bool pShowSubwindows)
{
   setFocusCell(pFocusRow, pFocusCol);
   return showModal(pShowSelf, pBringToTop, pShowSubwindows);
}

// Grid-specific getters/setters

int cxGrid::getNumRows() const
{
   return mNumRows;
}

int cxGrid::getNumCols() const
{
   return mNumCols;
}

void cxGrid::setNumRows(int pNumRows)
{
   if (pNumRows < 0)
      pNumRows = 0;

   if (pNumRows > mNumRows)
   {
      // Add new rows
      mRowLabels.resize(pNumRows);
      mCells.resize(pNumRows);
      for (int r = mNumRows; r < pNumRows; ++r)
      {
         mRowLabels[r] = defaultRowLabel(r);
         mCells[r].resize(mNumCols);
         for (int c = 0; c < mNumCols; ++c)
         {
            mCells[r][c] = createDefaultCell(r, c);
         }
      }
   }
   else if (pNumRows < mNumRows)
   {
      // Remove excess rows
      mCells.resize(pNumRows);
      mRowLabels.resize(pNumRows);
   }

   mNumRows = pNumRows;
   // Adjust focus if needed
   if (mFocusRow >= mNumRows)
      mFocusRow = mNumRows > 0 ? mNumRows - 1 : 0;
}

void cxGrid::setNumCols(int pNumCols)
{
   if (pNumCols < 0)
      pNumCols = 0;

   if (pNumCols > mNumCols)
   {
      // Add new columns
      mColWidths.resize(pNumCols, mDefaultColWidth);
      mColLabels.resize(pNumCols);
      for (int c = mNumCols; c < pNumCols; ++c)
      {
         mColLabels[c] = defaultColLabel(c);
      }
      for (int r = 0; r < mNumRows; ++r)
      {
         mCells[r].resize(pNumCols);
         for (int c = mNumCols; c < pNumCols; ++c)
         {
            mCells[r][c] = createDefaultCell(r, c);
         }
      }
   }
   else if (pNumCols < mNumCols)
   {
      // Remove excess columns
      mColWidths.resize(pNumCols);
      mColLabels.resize(pNumCols);
      for (int r = 0; r < mNumRows; ++r)
      {
         mCells[r].resize(pNumCols);
      }
   }

   mNumCols = pNumCols;
   // Adjust focus if needed
   if (mFocusCol >= mNumCols)
      mFocusCol = mNumCols > 0 ? mNumCols - 1 : 0;
}

shared_ptr<cxWindow> cxGrid::getCell(int pRow, int pCol) const
{
   if (pRow >= 0 && pRow < mNumRows && pCol >= 0 && pCol < mNumCols)
   {
      return mCells[pRow][pCol];
   }
   return nullptr;
}

bool cxGrid::setCell(int pRow, int pCol, const shared_ptr<cxWindow>& pWidget)
{
   if (pRow >= 0 && pRow < mNumRows && pCol >= 0 && pCol < mNumCols)
   {
      // Hide the old cell if it exists
      if (mCells[pRow][pCol])
      {
         mCells[pRow][pCol]->hide();
      }
      mCells[pRow][pCol] = pWidget;
      // Allow the cell to exit its input loop on mouse clicks outside it,
      // so the grid can redirect focus to whatever cell was clicked.
      if (pWidget)
      {
         pWidget->setExitOnMouseOutside(true);
      }
      return true;
   }
   return false;
}

string cxGrid::getCellValue(int pRow, int pCol) const
{
   if (pRow >= 0 && pRow < mNumRows && pCol >= 0 && pCol < mNumCols)
   {
      auto cell = mCells[pRow][pCol];
      if (cell)
      {
         // Try to get the value as a cxInput
         cxInput* input = dynamic_cast<cxInput*>(cell.get());
         if (input)
         {
            return input->getValue();
         }
      }
   }
   return "";
}

bool cxGrid::setCellValue(int pRow, int pCol, const string& pValue)
{
   if (pRow >= 0 && pRow < mNumRows && pCol >= 0 && pCol < mNumCols)
   {
      auto cell = mCells[pRow][pCol];
      if (cell)
      {
         cxInput* input = dynamic_cast<cxInput*>(cell.get());
         if (input)
         {
            return input->setValue(pValue);
         }
      }
   }
   return false;
}

void cxGrid::setColLabel(int pCol, const string& pLabel)
{
   if (pCol >= 0 && pCol < mNumCols)
   {
      mColLabels[pCol] = pLabel;
   }
}

string cxGrid::getColLabel(int pCol) const
{
   if (pCol >= 0 && pCol < mNumCols)
   {
      return mColLabels[pCol];
   }
   return "";
}

void cxGrid::setRowLabel(int pRow, const string& pLabel)
{
   if (pRow >= 0 && pRow < mNumRows)
   {
      mRowLabels[pRow] = pLabel;
   }
}

string cxGrid::getRowLabel(int pRow) const
{
   if (pRow >= 0 && pRow < mNumRows)
   {
      return mRowLabels[pRow];
   }
   return "";
}

void cxGrid::setColWidth(int pCol, int pWidth)
{
   if (pCol >= 0 && pCol < mNumCols && pWidth > 0)
   {
      mColWidths[pCol] = pWidth;
   }
}

int cxGrid::getColWidth(int pCol) const
{
   if (pCol >= 0 && pCol < mNumCols)
   {
      return mColWidths[pCol];
   }
   return 0;
}

void cxGrid::setRowHeaderWidth(int pWidth)
{
   if (pWidth > 0)
   {
      mRowHeaderWidth = pWidth;
   }
}

int cxGrid::getRowHeaderWidth() const
{
   return mRowHeaderWidth;
}

int cxGrid::getFocusRow() const
{
   return mFocusRow;
}

int cxGrid::getFocusCol() const
{
   return mFocusCol;
}

void cxGrid::setFocusCell(int pRow, int pCol)
{
   if (pRow >= 0 && pRow < mNumRows)
      mFocusRow = pRow;
   if (pCol >= 0 && pCol < mNumCols)
      mFocusCol = pCol;
   ensureFocusVisible();
}

void cxGrid::setHeaderColor(e_cxColors pColor)
{
   mHeaderColorPair = (short)pColor;
}

void cxGrid::setGridLineColor(e_cxColors pColor)
{
   mGridLineColorPair = (short)pColor;
}

void cxGrid::showColHeaders(bool pShow)
{
   mShowColHeaders = pShow;
}

bool cxGrid::getShowColHeaders() const
{
   return mShowColHeaders;
}

void cxGrid::showRowHeaders(bool pShow)
{
   mShowRowHeaders = pShow;
}

bool cxGrid::getShowRowHeaders() const
{
   return mShowRowHeaders;
}

} // namespace cx

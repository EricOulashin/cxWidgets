// Copyright (c) 2026 E. Oulashin
#ifndef __CXGRID_H__
#define __CXGRID_H__

// cxGrid: A text-based grid/spreadsheet control derived from cxWindow.
// Similar in concept to wxGrid from wxWidgets. Each cell contains a
// std::shared_ptr<cxWindow>, defaulting to cxInput. Cells can be any
// cxWidgets control (cxInput, cxMultiLineInput, cxComboBox, cxLabel, etc.).
//
// The grid displays:
//  - Column headers (A, B, C, ... or custom labels) across the top
//  - Row headers (1, 2, 3, ... or custom labels) down the left side
//  - A scrollable grid of cells, each containing a cxWindow-derived widget
//
// Navigation: Tab/Shift+Tab or arrow keys move between cells.

#include "cxWindow.h"
#include "cxInput.h"
#include "cxLabel.h"
#include <string>
#include <vector>
#include <memory>

class cxGrid : public cxWindow
{
   public:

      /**
       * \brief Constructor
       *
       * @param pParentWindow A pointer to the parent window (can be nullptr)
       * @param pRow The top row position on the screen
       * @param pCol The left column position on the screen
       * @param pHeight The height of the grid widget (including border and headers)
       * @param pWidth The width of the grid widget (including border and headers)
       * @param pNumRows The number of data rows in the grid
       * @param pNumCols The number of data columns in the grid
       * @param pDefaultColWidth The default width of each column (in characters)
       * @param pTitle The title for the grid window
       * @param pBorderStyle The border style for the outer grid window
       */
      explicit cxGrid(cxWindow *pParentWindow = nullptr,
                      int pRow = 0, int pCol = 0,
                      int pHeight = DEFAULT_HEIGHT, int pWidth = DEFAULT_WIDTH,
                      int pNumRows = 10, int pNumCols = 5,
                      int pDefaultColWidth = 12,
                      const std::string& pTitle = "",
                      eBorderStyle pBorderStyle = eBS_SINGLE_LINE);

      /**
       * \brief Copy constructor
       */
      cxGrid(const cxGrid& pThatGrid);

      /**
       * \brief Destructor
       */
      virtual ~cxGrid();

      // Overridden virtual functions from cxWindow

      virtual long show(bool pBringToTop = false, bool pShowSubwindows = true) override;
      virtual long showModal(bool pShowSelf = true, bool pBringToTop = true, bool pShowSubwindows = true) override;
      virtual bool modalGetsKeypress() const override;
      virtual void draw() override;
      virtual void hide(bool pHideSubwindows = true) override;
      virtual void unhide(bool pUnhideSubwindows = true) override;
      virtual void erase(bool pEraseSubwindows = true) override;
      virtual bool move(int pNewRow, int pNewCol, bool pRefresh = true) override;
      virtual void resize(int pNewHeight, int pNewWidth, bool pRefresh = true) override;
      virtual void clear(bool pRefresh = false) override;
      virtual void bringToTop(bool pRefresh = true) override;
      virtual bool hasFocus() const override;
      virtual void setColor(e_WidgetItems pItem, e_cxColors pColor) override;
      virtual void setBorderStyle(eBorderStyle pBorderStyle) override;
      virtual void setLastKey(int pLastKey) override;
      virtual void quitNow() override;
      virtual void exitNow() override;
      virtual bool setKeyFunction(int pKey, const std::shared_ptr<cxFunction>& pFunction) override;
      virtual void clearKeyFunction(int pKey) override;
      virtual void clearKeyFunctions() override;
      virtual void removeQuitKey(int pKey) override;
      virtual void removeExitKey(int pKey) override;
      virtual void setEnabled(bool pEnabled) override;
      virtual void setDisableCursorOnShow(bool pDisableCursorOnShow) override;
      virtual std::string cxTypeStr() const override;
      virtual cxWindow* getParent() const override;
      virtual void addAttr(e_WidgetItems pItem, attr_t pAttr) override;
      virtual void setAttr(e_WidgetItems pItem, attr_t pAttr) override;
      virtual void removeAttr(e_WidgetItems pItem, attr_t pAttr) override;
      virtual void removeAttrs(e_WidgetItems pItem) override;
      virtual void getAttrs(e_WidgetItems pItem, std::set<attr_t>& pAttrs) const override;
      virtual void enableAttrs(WINDOW *pWin, e_WidgetItems pItem) override;
      virtual void disableAttrs(WINDOW *pWin, e_WidgetItems pItem) override;
      virtual e_cxColors getItemColor(e_WidgetItems pItem) const override;

      // Grid-specific functions

      /**
       * \brief Sets cell focus, then shows the grid modally to allow user interaction.
       *
       * @param pFocusRow Row index (0-based) for the cell to set focus to
       * @param pFocusCol Column index (0-based) for the cell to set focus to
       * @param pShowSelf Whether or not to show the window before running the
       * input loop.  Defaults to true.
       * @param pBringToTop Whether or not to bring the window to the top.  Defaults
       * to true.
       * @param pShowSubwindows Whether or not to show sub-windows also.  Defaults
       * to true.
       *
       * @return A return code based on user input.
       */
      virtual long showModal(int pFocusRow, int pFocusCol, bool pShowSelf = true, bool pBringToTop = true, bool pShowSubwindows = true);

      /**
       * \brief Returns the number of data rows in the grid
       */
      int getNumRows() const;

      /**
       * \brief Returns the number of data columns in the grid
       */
      int getNumCols() const;

      /**
       * \brief Sets the number of rows in the grid. Adds or removes rows as needed.
       * @param pNumRows The new number of rows
       */
      void setNumRows(int pNumRows);

      /**
       * \brief Sets the number of columns in the grid. Adds or removes columns as needed.
       * @param pNumCols The new number of columns
       */
      void setNumCols(int pNumCols);

      /**
       * \brief Gets the cell widget at the specified row and column
       * @param pRow Row index (0-based)
       * @param pCol Column index (0-based)
       * @return A shared_ptr to the cxWindow in that cell, or nullptr if out of range
       */
      std::shared_ptr<cxWindow> getCell(int pRow, int pCol) const;

      /**
       * \brief Sets (adds/replaces) the cell widget at the specified row and column
       * @param pRow Row index (0-based)
       * @param pCol Column index (0-based)
       * @param pWidget A shared_ptr to the cxWindow to place in the cell
       * @return true if successful, false if out of range
       */
      bool setCell(int pRow, int pCol, const std::shared_ptr<cxWindow>& pWidget);

      /**
       * \brief Gets the value of a cell (as a string). Works for cxInput cells.
       * @param pRow Row index (0-based)
       * @param pCol Column index (0-based)
       * @return The cell's text value, or empty string if not applicable
       */
      std::string getCellValue(int pRow, int pCol) const;

      /**
       * \brief Sets the value of a cell (as a string). Works for cxInput cells.
       * @param pRow Row index (0-based)
       * @param pCol Column index (0-based)
       * @param pValue The value to set
       * @return true if successful
       */
      bool setCellValue(int pRow, int pCol, const std::string& pValue);

      /**
       * \brief Sets a column header label
       * @param pCol Column index (0-based)
       * @param pLabel The label text
       */
      void setColLabel(int pCol, const std::string& pLabel);

      /**
       * \brief Gets a column header label
       * @param pCol Column index (0-based)
       * @return The column label
       */
      std::string getColLabel(int pCol) const;

      /**
       * \brief Sets a row header label
       * @param pRow Row index (0-based)
       * @param pLabel The label text
       */
      void setRowLabel(int pRow, const std::string& pLabel);

      /**
       * \brief Gets a row header label
       * @param pRow Row index (0-based)
       * @return The row label
       */
      std::string getRowLabel(int pRow) const;

      /**
       * \brief Sets the width of a specific column
       * @param pCol Column index (0-based)
       * @param pWidth The new column width
       */
      void setColWidth(int pCol, int pWidth);

      /**
       * \brief Gets the width of a specific column
       * @param pCol Column index (0-based)
       * @return The column width
       */
      int getColWidth(int pCol) const;

      /**
       * \brief Sets the width of the row header column
       * @param pWidth The width for row headers
       */
      void setRowHeaderWidth(int pWidth);

      /**
       * \brief Gets the width of the row header column
       * @return The row header width
       */
      int getRowHeaderWidth() const;

      /**
       * \brief Gets the currently focused cell row
       * @return The focused row index (0-based)
       */
      int getFocusRow() const;

      /**
       * \brief Gets the currently focused cell column
       * @return The focused column index (0-based)
       */
      int getFocusCol() const;

      /**
       * \brief Sets the focus to a specific cell
       * @param pRow Row index (0-based)
       * @param pCol Column index (0-based)
       */
      void setFocusCell(int pRow, int pCol);

      /**
       * \brief Sets the color for the column/row header labels
       * @param pColor The color to use
       */
      void setHeaderColor(e_cxColors pColor);

      /**
       * \brief Sets the color for the grid lines/separators
       * @param pColor The color to use
       */
      void setGridLineColor(e_cxColors pColor);

      /**
       * \brief Toggles whether column headers are displayed
       * @param pShow true to show column headers
       */
      void showColHeaders(bool pShow);

      /**
       * \brief Returns whether column headers are displayed
       * @return true if column headers are shown
       */
      bool getShowColHeaders() const;

      /**
       * \brief Toggles whether row headers are displayed
       * @param pShow true to show row headers
       */
      void showRowHeaders(bool pShow);

      /**
       * \brief Returns whether row headers are displayed
       * @return true if row headers are shown
       */
      bool getShowRowHeaders() const;

   private:

      // Grid dimensions (data rows/cols, not including headers)
      int mNumRows;
      int mNumCols;

      // The 2D grid of cell widgets. Indexed as mCells[row][col].
      std::vector<std::vector<std::shared_ptr<cxWindow>>> mCells;

      // Column widths (one per column)
      std::vector<int> mColWidths;

      // Column header labels (one per column)
      std::vector<std::string> mColLabels;

      // Row header labels (one per row)
      std::vector<std::string> mRowLabels;

      // Width of the row header column (on the left)
      int mRowHeaderWidth;

      // Currently focused cell
      int mFocusRow;
      int mFocusCol;

      // Scroll offsets (for when the grid is larger than the visible area)
      int mScrollRow; // First visible data row
      int mScrollCol; // First visible data column

      // Whether to show headers
      bool mShowColHeaders;
      bool mShowRowHeaders;

      // Colors for grid elements
      short mHeaderColorPair;
      short mGridLineColorPair;

      // Default column width for new columns
      int mDefaultColWidth;

      // Helper functions

      /**
       * \brief Generates a default column label (A, B, ..., Z, AA, AB, ...)
       * @param pCol Column index (0-based)
       * @return The generated label string
       */
      static std::string defaultColLabel(int pCol);

      /**
       * \brief Generates a default row label (1, 2, 3, ...)
       * @param pRow Row index (0-based)
       * @return The generated label string
       */
      static std::string defaultRowLabel(int pRow);

      /**
       * \brief Creates a default cell widget (cxInput) for a given position
       * @param pRow Row index
       * @param pCol Column index
       * @return A shared_ptr to the new cxInput widget
       */
      std::shared_ptr<cxWindow> createDefaultCell(int pRow, int pCol);

      /**
       * \brief Initializes the grid cells, labels, and column widths
       */
      void initGrid();

      /**
       * \brief Draws the column headers
       */
      void drawColHeaders();

      /**
       * \brief Draws the row headers
       */
      void drawRowHeaders();

      /**
       * \brief Draws the grid lines (separators between cells)
       */
      void drawGridLines();

      /**
       * \brief Positions all visible cell widgets at their correct screen locations
       */
      void positionCells();

      /**
       * \brief Calculates how many rows fit in the visible area
       * @return Number of visible rows
       */
      int visibleRows() const;

      /**
       * \brief Calculates how many columns fit in the visible area
       * @return Number of visible columns
       */
      int visibleCols() const;

      /**
       * \brief Returns the inner top row (below the border and column header)
       */
      int innerTop() const;

      /**
       * \brief Returns the inner left column (past the border and row header)
       */
      int innerLeft() const;

      /**
       * \brief Ensures the focused cell is visible by adjusting scroll offsets
       */
      void ensureFocusVisible();

      /**
       * \brief Navigates focus to the next cell (used for Tab key)
       */
      void focusNextCell();

      /**
       * \brief Navigates focus to the previous cell (used for Shift+Tab)
       */
      void focusPrevCell();

      /**
       * \brief Finds which cell (row, col) a screen coordinate falls in.
       * @param pY Screen row
       * @param pX Screen column
       * @param pRow (out) Row index of the cell found
       * @param pCol (out) Column index of the cell found
       * @return true if a cell was found at the given coordinates
       */
      bool findCellAt(int pY, int pX, int& pRow, int& pCol) const;

      /**
       * \brief Handles the main input loop for the grid
       * @return The return code from the input loop
       */
      long inputLoop();
};

#endif // __CXGRID_H__

// Copyright (c) 2026 E. Oulashin
#ifndef __CXMENUBAR_H__
#define __CXMENUBAR_H__

// cxMenuBar: A horizontal menu bar derived from cxWindow.
// Displays menu items horizontally across a single row at the top of the
// screen. Each item can have an associated cxMenu that drops down when
// the item is selected. Navigation is via left/right arrow keys, Enter
// to open a menu, and ESC to close.
//
// Usage:
//   cxMenuBar menuBar(nullptr, 0, 0, termWidth);
//   cxMenu fileMenu(...);
//   fileMenu.append("&Open", 1, "", cxITEM_NORMAL, true);
//   menuBar.addMenu("&File", &fileMenu);
//   menuBar.addMenu("&Help", &helpMenu);
//   long result = menuBar.showModal();

#include "cxWindow.h"
#include "cxMenu.h"
#include "cxFunction.h"
#include <string>
#include <vector>
#include <memory>
#include <map>

/**
 * \brief This is a menu bar class, designed for displaying a horizontal
 * \brief menu.
 */
class cxMenuBar : public cxWindow
{
   public:

      /**
       * \brief Constructor
       *
       * @param pParentWindow A pointer to the parent window (can be nullptr)
       * @param pRow The row position on the screen (typically 0)
       * @param pCol The left column position on the screen (typically 0)
       * @param pWidth The width of the menu bar (typically terminal width)
       * @param pBorderStyle Border style (defaults to no border)
       */
      explicit cxMenuBar(cxWindow *pParentWindow = nullptr,
                         int pRow = 0, int pCol = 0,
                         int pWidth = DEFAULT_WIDTH,
                         eBorderStyle pBorderStyle = eBS_NOBORDER);

      /**
       * \brief Copy constructor
       */
      cxMenuBar(const cxMenuBar& pThat);

      /**
       * \brief Destructor
       */
      virtual ~cxMenuBar();

      // Overridden virtual functions from cxWindow

      virtual long show(bool pBringToTop = false, bool pShowSubwindows = true) override;
      virtual long showModal(bool pShowSelf = true, bool pBringToTop = true,
                             bool pShowSubwindows = true) override;
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

      // MenuBar-specific functions

      /**
       * \brief Adds a menu to the menu bar.
       *
       * @param pLabel The label to display in the menu bar (supports & for hotkey)
       * @param pMenu Pointer to the cxMenu to show when this item is selected.
       *              The cxMenuBar does NOT take ownership of pMenu.
       */
      void addMenu(const std::string& pLabel, cxMenu* pMenu);

      /**
       * \brief Returns the number of menus in the menu bar.
       */
      int numMenus() const;

      /**
       * \brief Gets the currently selected menu index.
       * @return The index of the currently highlighted menu item (0-based)
       */
      int getCurrentIndex() const;

      /**
       * \brief Sets the currently selected menu index.
       * @param pIndex The menu index to select (0-based)
       */
      void setCurrentIndex(int pIndex);

      /**
       * \brief Gets the label of a menu item (without hotkey chars).
       * @param pIndex The index of the menu item (0-based)
       * @return The label text
       */
      std::string getMenuLabel(int pIndex) const;

      /**
       * \brief Shows the menu bar and immediately opens the dropdown for
       * whichever menu item is at screen column pClickX.  Used when the
       * caller already knows the user clicked at a specific X position
       * (e.g., from a mouse event intercepted before the bar had focus)
       * so the bar doesn't wait for a second click to open the dropdown.
       *
       * If pClickX doesn't land on any item, falls back to normal showModal.
       *
       * @param pClickX The screen X (column) coordinate of the initial click
       * @param pShowSelf Whether to call show() first
       * @param pBringToTop Whether to bring the window to the top
       * @param pShowSubwindows Whether to show subwindows
       * @return The return code from the selected menu item, or cxID_QUIT
       */
      long showModalWithClick(int pClickX, bool pShowSelf = true,
                              bool pBringToTop = true,
                              bool pShowSubwindows = true);

      /**
       * \brief Sets a global hotkey that activates a specific menu.
       * When this key is pressed while the menu bar does NOT have focus,
       * the calling code can check for it and open the menu bar.
       * When the menu bar DOES have focus, pressing this key will
       * open the associated dropdown menu.
       *
       * @param pKey The key code (e.g., a Ctrl key combo)
       * @param pMenuIndex The menu index to activate
       */
      void setMenuHotkey(int pKey, int pMenuIndex);

      /**
       * \brief Returns the return code from the last menu selection.
       * After showModal() returns, this holds the return code from
       * whichever dropdown menu item was selected.
       */
      long getLastMenuReturnCode() const;

      /**
       * \brief Sets the color for the menu bar background.
       * @param pColor The color to use for the bar
       */
      void setBarColor(e_cxColors pColor);

      /**
       * \brief Sets the color for the highlighted/selected menu item.
       * @param pColor The highlight color
       */
      void setHighlightColor(e_cxColors pColor);

   private:

      // A menu bar entry: label + pointer to the dropdown menu
      struct MenuEntry
      {
         std::string label;       // Display label (with & hotkey markers)
         std::string cleanLabel;  // Label without hotkey chars
         char hotkeyChar;         // The hotkey character (lowercase), or '\0'
         cxMenu* menu;            // Pointer to the dropdown menu (not owned)
         int xPos;                // X position of this label in the bar
      };

      std::vector<MenuEntry> mEntries;

      // Currently highlighted menu index
      int mCurrentIndex;

      // Return code from the last dropdown menu selection
      long mLastMenuReturnCode;

      // Hotkeys that map to menu indices
      std::map<int, int> mMenuHotkeys;

      // Colors
      short mBarColorPair;
      short mHighlightColorPair;

      // Whether the bar currently has focus
      bool mHasFocus;

      // Helper: draw the bar contents
      void drawBar();

      // Helper: open the dropdown menu for the current index
      // Returns the return code from the dropdown menu
      long openDropdown(int pIndex);

      // Helper: the main input loop
      long inputLoop();
};

#endif // __CXMENUBAR_H__

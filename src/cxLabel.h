// Copyright (c) 2026 E. Oulashin
#ifndef __CXLABEL_H__
#define __CXLABEL_H__

// cxLabel: A non-editable text display widget derived from cxWindow.
// This widget displays static text and does not accept user input.

#include "cxWindow.h"
#include <string>

namespace cx {

class cxLabel : public cxWindow
{
   public:

      /**
       * \brief Constructor
       *
       * @param pParentWindow A pointer to the parent window (can be nullptr)
       * @param pRow The top row position
       * @param pCol The left column position
       * @param pWidth The width of the label
       * @param pText The text to display
       * @param pBorderStyle The border style (defaults to no border)
       */
      explicit cxLabel(cxWindow *pParentWindow = nullptr,
                       int pRow = 0, int pCol = 0,
                       int pWidth = 10,
                       const std::string& pText = "",
                       eBorderStyle pBorderStyle = eBS_NOBORDER);

      /**
       * \brief Copy constructor
       */
      cxLabel(const cxLabel& pThatLabel);

      /**
       * \brief Destructor
       */
      virtual ~cxLabel();

      // Overridden virtual functions from cxWindow

      virtual long show(bool pBringToTop = false, bool pShowSubwindows = false) override;
      virtual long showModal(bool pShowSelf = true, bool pBringToTop = true, bool pShowSubwindows = false) override;
      virtual bool modalGetsKeypress() const override;
      virtual void draw() override;
      virtual bool move(int pNewRow, int pNewCol, bool pRefresh = true) override;
      virtual void resize(int pNewHeight, int pNewWidth, bool pRefresh = true) override;
      virtual void clear(bool pRefresh = false) override;
      virtual std::string cxTypeStr() const override;

      // Label-specific functions

      /**
       * \brief Gets the label text
       * @return The current label text
       */
      virtual std::string getText() const;

      /**
       * \brief Sets the label text
       * @param pText The text to display
       * @param pRefresh Whether to refresh the display
       */
      virtual void setText(const std::string& pText, bool pRefresh = false);

   private:
      std::string mText; // The text displayed by the label
};

} // namespace cx

#endif // __CXLABEL_H__

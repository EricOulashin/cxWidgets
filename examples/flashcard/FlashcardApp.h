#ifndef __FLASHCARDAPP_H__
#define __FLASHCARDAPP_H__

#include "../../src/cxWindow.h"
#include "../../src/cxUtils.h"
#include "../../src/cxKeyDefines.h"
#include <vector>
#include <string>

struct Card {
    std::string front;
    std::string back;
};

class FlashcardApp : public cx::cxWindow {
public:
    FlashcardApp(int pHeight, int pWidth);

    void loadCards(const std::string& filename);
    void updateStatus();
    void draw();
    void showHelp();
    void run();

private:
    std::vector<Card> mCards;
    size_t mCurrentCardIdx;
    bool mShowBack;
};

#endif

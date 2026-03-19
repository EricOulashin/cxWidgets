#include "cxMessageDialog.h"
#include "cxUtils.h"
#include <iostream>
using namespace cx;
#include <vector>
#include <string>
#include <cassert>
#include <deque>

// We need to access protected members for testing
class TestMessageDialog : public cxMessageDialog {
public:
    TestMessageDialog(cxWindow *pParentWindow,
                      const std::string& pTitle,
                      const std::string& pMessage)
        : cxMessageDialog(pParentWindow, pTitle, pMessage) {}

    int getActualWidth() const { return width(); }
    int getActualHeight() const { return height(); }
    const std::deque<std::string>& getMessageLines() const { return mMessageLines; }
};

int main() {
    cx::init();
    
    // Simulate the problematic message
    std::string title = "Centipede Game";
    std::string message = "Arrows: Move\nSpace: Shoot\n'q' or ESC: Quit\n\nPress any key to start!";

    // Line lengths:
    // "Arrows: Move" -> 12
    // "Space: Shoot" -> 12
    // "'q' or ESC: Quit" -> 15
    // "" -> 0
    // "Press any key to start!" -> 24
    // Max length: 24
    // Expected Width: 23 + 2 (borders) = 25

    // Line count: 5
    // Expected Height: 5 + 3 (buttons) + 2 (borders) = 10

    try {
        TestMessageDialog dialog(nullptr, title, message);

        std::cout << "Calculated Width: " << dialog.getActualWidth() << " (Expected: 25)" << std::endl;
        std::cout << "Calculated Height: " << dialog.getActualHeight() << " (Expected: 10)" << std::endl;
        
        std::cout << "Message lines count: " << dialog.getMessageLines().size() << " (Expected: 5)" << std::endl;
        for (size_t i = 0; i < dialog.getMessageLines().size(); ++i) {
            std::cout << "Line " << i << ": [" << dialog.getMessageLines()[i] << "]" << std::endl;
        }

        assert(dialog.getActualWidth() == 25);
        assert(dialog.getActualHeight() == 10);
        assert(dialog.getMessageLines().size() == 5);
        assert(dialog.getMessageLines()[0] == "Arrows: Move");
        assert(dialog.getMessageLines()[4] == "Press any key to start!");

        std::cout << "TEST PASSED!" << std::endl;
        cx::cleanup();
    } catch (const std::exception& e) {
        cx::cleanup();
        std::cerr << "Caught exception: " << e.what() << std::endl;
        return 1;
    } catch (...) {
        cx::cleanup();
        std::cerr << "Caught unknown exception" << std::endl;
        return 1;
    }

    return 0;
}

#include <iostream>
#include <vector>
#include <string>
#include <cassert>
#include "../src/cxStringUtils.h"

// Mock some of cxWidgets behavior since we don't want to initialize ncurses for a simple string test
// or we can just test the logic that cxWindow::init uses.

std::vector<std::string> wrapText(const std::string& message, int innerWidth) {
    std::vector<std::string> mMessageLines;
    if (message == "") return mMessageLines;

    std::vector<std::string> iMessageLines;
    cxStringUtils::SplitStringRegex(message, "\n", iMessageLines);
    if (iMessageLines.empty() && !message.empty()) {
        iMessageLines.push_back(message);
    }

    for (const std::string& msgLine : iMessageLines) {
        if ((int)msgLine.length() <= innerWidth) {
            mMessageLines.push_back(msgLine);
        } else {
            std::string currentLine;
            std::vector<std::string> words;
            cxStringUtils::SplitStringRegex(msgLine, " ", words);
            for (const std::string& word : words) {
                if ((int)word.length() >= innerWidth) {
                    if (!currentLine.empty()) {
                        if (currentLine.back() == ' ') currentLine.pop_back();
                        mMessageLines.push_back(currentLine);
                        currentLine = "";
                    }
                    // In cxWindow it truncates, but let's see
                    mMessageLines.push_back(word.substr(0, innerWidth));
                } else {
                    if (currentLine.length() + word.length() + 1 <= (size_t)innerWidth) {
                        if (!currentLine.empty()) currentLine += " ";
                        currentLine += word;
                    } else {
                        if (!currentLine.empty()) {
                            if (currentLine.back() == ' ') currentLine.pop_back();
                            mMessageLines.push_back(currentLine);
                        }
                        currentLine = word;
                    }
                }
            }
            if (!currentLine.empty()) {
                if (currentLine.back() == ' ') currentLine.pop_back();
                mMessageLines.push_back(currentLine);
            }
        }
    }
    return mMessageLines;
}

void test_wrapping() {
    // Case 1: "A high-level, interpreted, general-purpose programming language."
    // With width 60, inner width is 58 (if bordered).
    // The issue was "l" in language on one line, and "anguage" on next.
    // "A high-level, interpreted, general-purpose programming language." is 62 chars long.
    // If width is 60, it MUST wrap.
    
    std::string text1 = "A high-level, interpreted, general-purpose programming language.";
    int width = 60;
    int innerWidth = width - 4; // FlashcardApp uses width - 4 in its manual check
    
    auto lines = wrapText(text1, innerWidth);
    
    std::cout << "Test 1 lines:" << std::endl;
    for (auto& l : lines) std::cout << "  [" << l << "]" << std::endl;
    
    // Check that "language." is not split
    bool languageSplit = false;
    for (auto& l : lines) {
        if (l == "l") languageSplit = true;
    }
    assert(!languageSplit);

    // Case 2: Docker text
    std::string text2 = "A set of platform as a service products that use OS-level virtualization to deliver software in packages called containers.";
    lines = wrapText(text2, innerWidth);
    std::cout << "Test 2 lines:" << std::endl;
    for (auto& l : lines) std::cout << "  [" << l << "]" << std::endl;
    
    for (auto& l : lines) {
        assert((int)l.length() <= innerWidth);
    }
}

int main() {
    test_wrapping();
    std::cout << "All tests passed!" << std::endl;
    return 0;
}

#ifndef __SNAKEGAME_H__
#define __SNAKEGAME_H__

#include "../../src/cxWindow.h"
#include "../../src/cxBase.h"
#include "../../src/cxKeyDefines.h"
#include <vector>
#include <deque>
#include <cstdlib>
#include <ctime>
#include <unistd.h>

struct Point {
    int x, y;
};

class SnakeGame : public cxWindow {
public:
    SnakeGame(int pHeight, int pWidth) : cxWindow(nullptr, 0, 0, pHeight, pWidth) {
        setTitle("Snake Game");
        center();
        mDirection = RIGHT;
        mGameOver = false;
        mScore = 0;
        
        // Initial snake position (middle)
        int startX = pWidth / 2;
        int startY = pHeight / 2;
        mSnake.push_front({startX, startY});
        mSnake.push_back({startX - 1, startY});
        mSnake.push_back({startX - 2, startY});
        
        spawnFood();
    }

    void spawnFood() {
        int w = width() - 2; // account for borders
        int h = height() - 2;
        mFood.x = (std::rand() % w) + 1;
        mFood.y = (std::rand() % h) + 1;
    }

    void draw() {
        wclear(mWindow);
        cxWindow::draw();

        // Draw a title line at the top
        writeText(1, (width() / 2) - 5, "SNAKE GAME", false);

        // Draw food
        writeText(mFood.y, mFood.x, "@", false);
        
        // Draw snake
        for (const auto& p : mSnake) {
            writeText(p.y, p.x, "O", false);
        }
        
        // Draw score if it changed
        static int lastScore = -1;
        if (mScore != lastScore) {
            std::string scoreStr = " Score: " + std::to_string(mScore) + " ";
            setStatus(scoreStr);
            lastScore = mScore;
        }
        
        if (mGameOver) {
            writeText(height() / 2, (width() / 2) - 5, "GAME OVER", false);
        }
        
        cxBase::updateWindows();
    }

    void update() {
        if (mGameOver) return;

        Point head = mSnake.front();
        switch (mDirection) {
            case UP:    head.y--; break;
            case DOWN:  head.y++; break;
            case LEFT:  head.x--; break;
            case RIGHT: head.x++; break;
        }

        // Check wall collision (inner window boundaries)
        if (head.x <= 0 || head.x >= width() - 1 || head.y <= 0 || head.y >= height() - 1) {
            mGameOver = true;
            return;
        }

        // Check self collision
        for (const auto& p : mSnake) {
            if (p.x == head.x && p.y == head.y) {
                mGameOver = true;
                return;
            }
        }

        mSnake.push_front(head);

        // Check food collision
        if (head.x == mFood.x && head.y == mFood.y) {
            mScore += 10;
            spawnFood();
        } else {
            mSnake.pop_back();
        }
    }

    void run() {
        std::srand(std::time(NULL));
        keypad(mWindow, TRUE);   // Enable special keys
        wtimeout(mWindow, 100);  // 100ms timeout for wgetch

        cxBase::messageBox("Snake Game", "Use Arrow Keys to move.\nPress 'q' or ESC to quit.\n\nPress any key to start!", 0, 25);

        while (!mGameOver) {
            int ch = wgetch(mWindow);
            switch (ch) {
                case KEY_UP:    if (mDirection != DOWN) mDirection = UP; break;
                case KEY_DOWN:  if (mDirection != UP) mDirection = DOWN; break;
                case KEY_LEFT:  if (mDirection != RIGHT) mDirection = LEFT; break;
                case KEY_RIGHT: if (mDirection != LEFT) mDirection = RIGHT; break;
                case 'q': case ESC: mGameOver = true; break;
            }

            update();
            draw();
        }

        // Wait for a keypress before exit
        nodelay(mWindow, FALSE);
        wgetch(mWindow);
    }

private:
    enum Direction { UP, DOWN, LEFT, RIGHT };
    std::deque<Point> mSnake;
    Point mFood;
    Direction mDirection;
    bool mGameOver;
    int mScore;
};

#endif

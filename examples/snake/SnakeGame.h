#ifndef __SNAKEGAME_H__
#define __SNAKEGAME_H__

#include "../../src/cxWindow.h"
#include "../../src/cxBase.h"
#include "../../src/cxKeyDefines.h"
#include <deque>

struct Point {
    int x, y;
};

class SnakeGame : public cxWindow {
public:
    SnakeGame(int pHeight, int pWidth);

    void spawnFood();
    void draw();
    void update();
    void run();

private:
    enum Direction { UP, DOWN, LEFT, RIGHT };
    std::deque<Point> mSnake;
    Point mFood;
    Direction mDirection;
    bool mGameOver;
    int mScore;
};

#endif

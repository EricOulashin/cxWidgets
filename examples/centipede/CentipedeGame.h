#ifndef __CENTIPEDEGAME_H__
#define __CENTIPEDEGAME_H__

#include "../../src/cxWindow.h"
#include "../../src/cxUtils.h"
#include "../../src/cxKeyDefines.h"
#include <vector>
#include <list>

struct Point {
    int x, y;
};

struct CentipedeSegment {
    Point pos;
    int dir; // 1 for right, -1 for left
    bool descending;
};

class CentipedeGame : public cx::cxWindow {
public:
    CentipedeGame(int pHeight, int pWidth);

    void spawnMushroom();
    void spawnCentipede(int length);
    void draw();
    bool isMushroomAt(int x, int y);
    void removeMushroomAt(int x, int y);
    void update();
    void run();

private:
    Point mPlayerPos;
    std::list<Point> mMushrooms;
    std::list<Point> mBullets;
    std::vector<CentipedeSegment> mCentipede;
    bool mGameOver;
    int mScore;
};

#endif

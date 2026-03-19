#include "../../src/cxUtils.h"
#include "SnakeGame.h"

int main() {
    cx::init();
    
    SnakeGame game(20, 60);
    game.show();
    game.run();
    
    cx::cleanup();
    return 0;
}

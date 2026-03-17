#include "../../src/cxBase.h"
#include "SnakeGame.h"

int main() {
    cxBase::init();
    
    SnakeGame game(20, 60);
    game.show();
    game.run();
    
    cxBase::cleanup();
    return 0;
}

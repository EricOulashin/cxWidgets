#include "../../src/cxUtils.h"
#include "CentipedeGame.h"

int main() {
    cx::init();
    
    CentipedeGame game(24, 80);
    game.show();
    game.run();
    
    cx::cleanup();
    return 0;
}

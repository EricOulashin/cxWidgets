#include "../../src/cxUtils.h"
#include "FlashcardApp.h"

int main() {
    cx::init();
    
    FlashcardApp app(15, 60);
    app.show();
    app.run();
    
    cx::cleanup();
    return 0;
}

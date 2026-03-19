CC = g++
CX_SRC_DIR = ../../src
STATIC_LIB = $(CX_SRC_DIR)/libcxWidgets.a
INCDIR = -I$(CX_SRC_DIR)
CFLAGS = -Wall -g -std=c++17 $(INCDIR)
LIBS = -lmenu -lpanel -lncurses
OBJS = FlashcardApp.o

all: flashcard_demo

$(STATIC_LIB):
	$(MAKE) -C $(CX_SRC_DIR) libcxWidgets.a

flashcard_demo: main.cpp $(STATIC_LIB) $(OBJS)
	$(CC) $(CFLAGS) -o flashcard_demo main.cpp $(OBJS) $(STATIC_LIB) $(LIBS)

FlashcardApp.o: FlashcardApp.h FlashcardApp.cpp
	$(CC) -c $(CFLAGS) -o FlashcardApp.o FlashcardApp.cpp

clean:
	rm -f flashcard_demo FlashcardApp.o

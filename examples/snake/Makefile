CC = g++
CX_SRC_DIR = ../../src
STATIC_LIB = $(CX_SRC_DIR)/libcxWidgets.a
INCDIR = -I$(CX_SRC_DIR)
CFLAGS = -Wall -g -std=c++17 $(INCDIR)
LIBS = -lmenu -lpanel -lncurses
OBJS = SnakeGame.o

all: snake_demo

$(STATIC_LIB):
	$(MAKE) -C $(CX_SRC_DIR) libcxWidgets.a

snake_demo: main.cpp $(STATIC_LIB) $(OBJS)
	$(CC) $(CFLAGS) -o snake_demo main.cpp $(OBJS) $(STATIC_LIB) $(LIBS)

SnakeGame.o: SnakeGame.h SnakeGame.cpp
	$(CC) -c $(CFLAGS) -o SnakeGame.o SnakeGame.cpp

clean:
	rm -f snake_demo SnakeGame.o

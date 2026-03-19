CC = g++
CX_SRC_DIR = ../../src
STATIC_LIB = $(CX_SRC_DIR)/libcxWidgets.a
INCDIR = -I$(CX_SRC_DIR)
CFLAGS = -Wall -g -std=c++17 $(INCDIR)
LIBS = -lmenu -lpanel -lncurses
OBJS = CentipedeGame.o

all: centipede_demo

$(STATIC_LIB):
	$(MAKE) -C $(CX_SRC_DIR) libcxWidgets.a

centipede_demo: main.cpp $(STATIC_LIB) $(OBJS)
	$(CC) $(CFLAGS) -o centipede_demo main.cpp $(OBJS) $(STATIC_LIB) $(LIBS)

CentipedeGame.o: CentipedeGame.h CentipedeGame.cpp
	$(CC) -c $(CFLAGS) -o CentipedeGame.o CentipedeGame.cpp

clean:
	rm -f centipede_demo CentipedeGame.o

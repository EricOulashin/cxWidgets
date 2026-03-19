CC = g++
CX_SRC_DIR = ../../src
STATIC_LIB = $(CX_SRC_DIR)/libcxWidgets.a
INCDIR = -I$(CX_SRC_DIR)
CFLAGS = -Wall -g -std=c++17 $(INCDIR)
LIBS = -lmenu -lpanel -lncurses
OBJS = helpers.o SpreadsheetApp.o

all: spreadsheet

$(STATIC_LIB):
	$(MAKE) -C $(CX_SRC_DIR) libcxWidgets.a

spreadsheet: main.cpp $(STATIC_LIB) $(OBJS)
	$(CC) $(CFLAGS) -o spreadsheet main.cpp $(OBJS) $(STATIC_LIB) $(LIBS)

helpers.o: helpers.h helpers.cpp
	$(CC) -c $(CFLAGS) -o helpers.o helpers.cpp

SpreadsheetApp.o: SpreadsheetApp.h SpreadsheetApp.cpp
	$(CC) -c $(CFLAGS) -o SpreadsheetApp.o SpreadsheetApp.cpp


clean:
	rm -f spreadsheet

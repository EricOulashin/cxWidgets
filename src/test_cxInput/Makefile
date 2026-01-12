CC = g++
INCDIR=-I/usr/local/include -I/usr/include -I/usr/local/include/cx
LIBDIR=-L/usr/local/lib -L/usr/lib
CFLAGS=-Wall $(INCDIR) $(LIBDIR)
LIBS=-lcxWidgets -lpanel -lncurses -lz

all: test_cxInput 

test_cxInput: test_cxInput.cpp
	$(CC) -o test_cxInput $(CFLAGS) test_cxInput.cpp $(LIBS)

clean:
	rm -f *.o test_cxInput 

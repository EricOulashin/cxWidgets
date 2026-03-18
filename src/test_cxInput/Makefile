CC = g++
INCDIR=-I/usr/local/include -I/usr/include -I/usr/local/include/cx -I..
LIBDIR=-L/usr/local/lib -L/usr/lib -L..
CFLAGS=-Wall -DWANT_TIMEOUT $(INCDIR) $(LIBDIR)
LIBS=-L.. -lcxWidgets -lpanel -lncurses -lz

all: test_cxInput 

test_cxInput: test_cxInput.cpp
	$(CC) -o test_cxInput $(CFLAGS) -Wl,-rpath,'$$ORIGIN' -Wl,-rpath,'$$ORIGIN/..' test_cxInput.cpp -L.. $(LIBS)

clean:
	rm -f *.o test_cxInput 

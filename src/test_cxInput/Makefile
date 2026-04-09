CC = g++
INCDIR=-I/usr/local/include -I/usr/include -I/usr/local/include/cx -I..
LIBDIR=-L/usr/local/lib -L/usr/lib -L..
CFLAGS=-Wall -DWANT_TIMEOUT $(INCDIR) $(LIBDIR)
# Link the static library so this test does not depend on dyld/rpath (macOS CI was flaky with -lcxWidgets).
NCURSES_LINK=-lpanel -lncurses -lz

all: test_cxInput

test_cxInput: test_cxInput.cpp ../libcxWidgets.a
	$(CC) -o test_cxInput $(CFLAGS) test_cxInput.cpp ../libcxWidgets.a $(NCURSES_LINK)

clean:
	rm -f *.o test_cxInput

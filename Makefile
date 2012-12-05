CC=gcc
LDFLAGS=-lhdf5
CFLAGS=-std=c99
OBJFILES=src/h5ex.o

all: test

test: $(OBJFILES)
	gcc -o $@ $(LDFLAGS) $(OBJFILES)

$(OBJFILES): %.o: %.c
	gcc -c -o $@ $(CFLAGS) $<

clean:
	rm -rf test
	rm -rf *.h5
	rm -rf src/*.o

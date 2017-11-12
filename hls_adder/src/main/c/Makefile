CC = riscv64-unknown-elf-gcc
#CFLAGS = -march=rv64Xcustom 
LDFLAGS=-lc
src_files=adder.c
OBJECTS=$(src_files:.c=.o)

all: adder.rv

adder.rv: Makefile $(OBJECTS) $(src_files).s
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o: $(src_files) 
	$(CC) -c $(CFLAGS) $< -o $@

$(src_files).s: $(src_files)
	$(CC) -S $(CFLAGS) $< -o $@
  
run:
	spike pk adder.rv

clean:
	rm $(OBJECTS) adder.rv

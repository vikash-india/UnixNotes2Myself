# Include System Specific Macros
include makefile.init

# Include User Specific Macros
include makefile.defs

# Build
SRC = $(wildcard *.c)

PROGS = $(patsubst %.c,%,$(SRC))

all: $(PROGS)

%: %.c
	$(CC) $(CFLAGS)  -o $@ $<

clean: 
	rm *.exe


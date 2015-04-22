SOURCES=$(wildcard *.s)
OBJECTS=$(SOURCES:.s=.o)
EXECS=$(SOURCES:.s=.out)
EMU="elf_i386"

ifeq ($(shell uname),FreeBSD)
	EMU="elf_i386_fbsd"
endif

all: $(EXECS)

%.o: %.s
	nasm -f elf32 -g -F dwarf $< 
	
%.out: %.o
	$(OS)
	ld -m $(EMU) -o $@ $<

clean: 
	rm -f $(EXECS) $(OBJECTS)

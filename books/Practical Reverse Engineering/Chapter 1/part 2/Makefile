SOURCES=$(wildcard *.s)
OBJECTS=$(SOURCES:.s=.o)
EXECS=$(SOURCES:.s=.out)

all: $(EXECS)

%.o: %.s
	nasm -f elf32 -g -F dwarf $< 
	
%.out: %.o
	ld -m elf_i386 -o $@ $<

clean: 
	rm -f $(EXECS) $(OBJECTS)

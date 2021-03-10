SOURCES=cpuid-example.s num2hexstr.s num2decstr.s
OBJECTS=$(SOURCES:.s=.o)
EXECUTABLE=cpuid-example
all: $(SOURCES) $(EXECUTABLE)
$(EXECUTABLE): $(OBJECTS)
	ld $(OBJECTS) -o $@
.s.o:
	nasm -f elf64 $< -o $@
clean:
	rm -f $(OBJECTS) $(EXECUTABLE)
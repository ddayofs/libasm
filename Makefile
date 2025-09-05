TARGET := hello
ASM    := hello.asm

all: $(TARGET)
$(TARGET): $(TARGET).o
	ld -o $@ $<

$(TARGET).o: $(ASM)
	nasm -f elf64 -g -F dwarf $< -o $@

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET) $(TARGET).o

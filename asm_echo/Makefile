ASM = nasm
LD = ld
ASMFLAGS = -f elf32
LDFLAGS = -m elf_i386 -s

%.o: %.asm
	$(ASM) $(ASMFLAGS) $< -o $@

%: %.o
	$(LD) $(LDFLAGS) -o $@ $<
	rm $<

echo: echo.o

clean: 
	rm -f *.o

fclean:
	rm -f *.o echo

.PHONY: clean

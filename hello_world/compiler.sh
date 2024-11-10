#!/bin/bash
nasm -f elf32 hello.asm -o hello.o
ld -m elf_i386 -s -o hello hello.o

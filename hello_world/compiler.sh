#!/bin/bash
src=$1
obj="${src%.asm}.o"
name="${arquivo%.asm}"

nasm -f elf32 ${src} -o ${obj}
ld -m elf_i386 -s -o hello ${obj}

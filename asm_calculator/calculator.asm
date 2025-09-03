MAXARGS   equ 5
sys_exit  equ 1
sys_write equ 4

section .data
  msg db "with args!", 0xA, 0
  msg_len equ $ - msg - 1

section .text
  global _start

_start:
  nop

  push ebp
  mov ebp, esp

  cmp dword [ebp + 4], 1
  je  withoutArgs

  mov eax, sys_write
  mov ebx, 1
  mov ecx, msg
  mov edx, msg_len
  int 0x80
  jmp exit

withoutArgs:
  jmp exit

exit:
  mov eax, sys_exit
  xor ebx, ebx
  int 0x80

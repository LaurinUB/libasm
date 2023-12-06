section .data
hello_world db "Hello, World!",0

section .text
global _main

_main:
    mov rax, 0x2000004
    mov rdi, 1
    lea rsi, [rel hello_world]
    mov rdx, 14
    syscall

    mov rax, 0x2000001
    xor rdi, rdi
    syscall

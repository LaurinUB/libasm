section .text

%include "compile.inc"

global FT_STRLEN

FT_STRLEN:
  mov rax, rdi

  .LOOP:
    cmp BYTE [rax], 0
    je .BREAK
    inc rax
    jmp .LOOP

  .BREAK:
    sub rax, rdi
    ret

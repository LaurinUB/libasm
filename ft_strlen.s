section .text

global _ft_strlen

_ft_strlen:
  mov rax, rdi

  .LOOP:
    cmp BYTE [rax], 0
    je .BREAK
    inc rax
    jmp .LOOP

  .BREAK:
    sub rax, rdi
    ret

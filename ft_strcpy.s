section .text

global _ft_strcpy

_ft_strcpy:
  mov rcx, 0
  mov rax, rdi
  cmp BYTE [rsi], 0
  jne .loop
  ret

  .loop:
    mov dl, BYTE [rsi+rcx]
    cmp dl, 0
    je .end
    mov BYTE [rdi+rcx], dl
    inc rcx
    jmp .loop;

  .end:
    mov BYTE [rdi+rcx], 0
    ret

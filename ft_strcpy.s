section .text

global _ft_strcpy

_ft_strcpy:
  mov   rcx, 0                  ; count value = 0
  mov   rax, rdi                ; return sring set to dst input
  cmp   BYTE [rsi], 0           ; check if *src == '/0'
  jne   .loop                   ; if not 0 jump too loop
  ret

  .loop:
    mov   dl, BYTE [rsi+rcx]    ; dl = src[rcx]
    cmp   dl, 0                 ; if (dl == 0)
    je    .end                  ; return
    mov   BYTE [rdi+rcx], dl    ; *dst = *src
    inc   rcx                   ; rcx++
    jmp   .loop

  .end:
    mov   BYTE [rdi+rcx], 0     ; set '/0'
    ret

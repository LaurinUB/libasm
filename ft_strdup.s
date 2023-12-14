extern _malloc
extern _ft_strcpy
extern _ft_strlen

section .text

global _ft_strdup

_ft_strdup:
  push  rbp         ; initilize stack
  mov   rbp, rsp    ; put stack pointer to top
  push  rdi         ; save input on the stack
  call  _ft_strlen  ; call strlen with input to ft_strdup
  mov   rdi, rax    ; move result of strlen into input register for malloc
  call  _malloc
  cmp   rax, 0      ; check for malloc fail
  je    .error      ; return if malloc failed
  mov   rdi, rax    ; move allocatet pointer as argmuent one
  pop   rsi         ; get input from stack and put as second argument
  call  _ft_strcpy  ; move input string into new allocated pointer
  pop   rbp         ; clear stack
  ret

  .error:
    pop   rbp       ; clear stack
    ret


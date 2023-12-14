extern _malloc
extern _ft_strcpy
extern _ft_strlen

section .text

global _ft_strdup

_ft_strdup:
  push  rbp
  mov   rbp, rsp
  push  rdi
  call  _ft_strlen
  mov   rdi, rax
  call  _malloc
  cmp   rax, 0
  je    .end
  mov   rdi, rax
  pop   rsi
  call  _ft_strcpy
  pop   rbp
  ret
  

  .end:
    pop   rbp
    ret


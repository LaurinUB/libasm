section .text

global _ft_strlen

_ft_strlen:
  mov rdx, rdi ; put arg from rdi into rbx
  xor rax, rax ; declare count return variable

  cmp BYTE [rdx], 0 ; if (rdx[0] == /0)
  je .end ; jump to return with rax == 0;

  .loop: ; while (rdx[rax] != '/0')
    inc rax ; increase value in rax
    cmp BYTE [rdx + rax], 0 ; check for 0 byte (cl == '/0')
    jne .loop ; continue by jumping back to loop start;

  .end:
    ret ; return value stored in rax

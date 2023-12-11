section .text

global _ft_write

extern ___error

_ft_write:
  mov rax, 0x02000004
  syscall
  jc .error
  ret

  .error:
    mov rdx, rax
    push rbp
    mov rbp, rsp
    call ___error
    mov DWORD [rax], edx
    mov rbp, rsp
    pop rbp
    mov rax, -1
    ret

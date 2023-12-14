extern ___error

section .text

global _ft_write

_ft_write:
  mov   rax, 0x02000004     ; set value of write in rax
  syscall                   ; call write
  jc    .error              ; if errorflag jump to .error
  ret

  .error:
    push  rbp               ; init stack
    mov   rbp, rsp          ; point stack to stack top
    push  rax               ; safe error code on stack
    call  ___error
    pop   rdx               ; put error code in rdx
    mov   DWORD [rax], edx  ; set errno = error
    mov   rsp, rbp          ; set stack top to new stack
    pop   rbp               ; remove stack
    mov   rax, -1           ; return -1
    ret

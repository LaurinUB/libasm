extern ___error

section .text

global _ft_read

_ft_read:
  mov rax, 0x02000003     ; set value of read in rax
  syscall                 ; call read
  jc .error               ; if errorflag jumo to .error
  ret

  .error:
    mov rdx, rax          ; safe error code in rdx
    push rbp              ; init stack
    mov rbp, rsp          ; point stack to stack top
    call ___error
    mov DWORD [rax], edx  ; set errno = error
    mov rsp, rbp          ; set stack top to new stack
    pop rbp               ; remove stack
    mov rax, -1           ; return -1
    ret

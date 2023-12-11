section .text

global _ft_strcmp

_ft_strcmp:
  mov rax, 0 ; declare count variable to 0

  .loop:
    mov cl, BYTE [rdi+rax] ; declare char cl with rdi[rax]
    mov dl, BYTE [rsi+rax] ; declare char dl with rsi[rax]
    inc rax ; rax++
    test cl, cl ; test value of cl
    jnz .cmp ; if cl != '\0' jmp to compare step
    test dl, dl ; if dl also == '\0' jmp to end
    jz .end
  .cmp:
    cmp cl, dl ; cmp values of char cl, and dl
    je .loop ; if cl == dl return to loop
    movzx rax, cl ; else put char value of cl to rax
    movzx rdx, dl ; and char value of dl to rdx
    sub rax, rdx ; rax - rdx
    ret ; return difference of character
  
  .end:
    mov rax, 0 ; set value to 0 => string is equal
    ret

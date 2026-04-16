.global main
.data
    msg_in:     .asciz  "valor de n:"
    msg_outp:   .asciz  "%d eh par \n"
    msg_outi:   .asciz  "%d eh impar \n"
    fmt_in:     .asciz  "%lld"
    n:          .quad   0
.text
main:
    push %rbp

    movq $msg_in, %rdi
    call printf
    movq $fmt_in, %rdi
    movq $n, %rsi
    call scanf
    
    movq n, %rsi
    movq $msg_outp, %rax
    movq $msg_outi, %rdi
    testq $1, %rsi
    cmovz %rax, %rdi
    call printf

    pop %rbp
    ret

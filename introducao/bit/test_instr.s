.global main
.data
    msg_in: .asciz  "valor de n:"
    msg_out_par: .asciz  "%d eh par \n"
    msg_out_impar: .asciz  "%d eh impar \n"
    fmt_in: .asciz  "%lld"
    n: .quad   0
.text
main:
    push %rbp

    movq $msg_in, %rdi
    call printf
    movq $fmt_in, %rdi
    movq $n, %rsi
    call scanf
    
    movq n, %rsi
    movq $msg_out_par, %rax
    movq $msg_out_impar, %rdi
    testq $1, %rsi
    cmovz %rax, %rdi
    call printf

    pop %rbp
    ret

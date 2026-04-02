.global main

.data
    fmt1: .asciz "%lld"
    msg1: .asciz "digite um numero:"
    msg2: .asciz "soma: %lld\n"
    n: .quad 0

.text 
main:
    movq $msg1, %rdi
    subq $8, %rsp
    call printf
    addq $8, %rsp

    movq $fmt1, %rdi
    movq $n, %rsi
    subq $8, %rsp
    call scanf
    addq $8, %rsp

    movq n, %rax
    call soma

    movq $msg2, %rdi
    movq %rax, %rsi
    subq $8, %rsp
    call printf
    addq $8, %rsp

    movq $60, %rax
    movq $1, %rdi
    syscall

# procedimento soma
soma:
    push %rbp
    movq %rsp, %rbp
    push %rcx

    movq %rax, %rcx
    
loop1:
    subq $1, %rcx
    jle end_loop1
    addq %rcx, %rax
    jmp loop1

end_loop1:

    pop %rcx
    mov %rbp,%rsp
    pop %rbp 

    ret

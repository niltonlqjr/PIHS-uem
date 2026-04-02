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
    push %rbx

    movq $1, %rcx
    movq %rax, %rbx
    movq $0, %rax

loop1:
    cmpq %rcx, %rbx
    jl end_loop1
    addq %rcx, %rax
    incq %rcx # similar a addq $1, %rcx
    jmp loop1

end_loop1:

    pop %rbx
    pop %rcx
    mov %rbp,%rsp
    pop %rbp 

    ret

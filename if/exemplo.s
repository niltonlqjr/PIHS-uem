.global main
.data
    a:          .quad   0
    msg_in:     .asciz  "digite o valor de a:"
    fmt_in:     .asciz  "%lld"
    msg_out:    .asciz  "resultado: %lld\n"
.text
main:
    movq $msg_in, %rdi
    call printf
    movq $fmt_in, %rdi
    movq $a, %rsi
    call scanf

    movq a, %rax

# comeco do if else
    cmp $0, %rax
    jl label_menor
# trecho do else
    movq $3, %rbx
    imulq %rbx
    addq $1, %rax
    jmp endif
#trecho do if
label_menor: 
    movq $-1, %rbx
    imulq %rbx
endif:
# fim do if
    movq $msg_out, %rdi
    movq %rax, %rsi
    call printf

    movq $60, %rax
    movq $0, %rdi
    syscall

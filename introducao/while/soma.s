.global main
.data
    msg_in:     .asciz  "valor de n:"
    msg_out:    .asciz  "soma de 1 a %d = %d\n"
    fmt_in:     .asciz  "%d"
    n:          .long   0
.text
main:
    movq $msg_in, %rdi
    call printf
    movq $fmt_in, %rdi
    movq $n, %rsi
    call scanf
    
    movl $0, %eax
    movl $1, %ecx
    movl n, %ebx

enter_loop:
    cmpl %ebx, %ecx
    jle loop_body
    jmp exit_loop
loop_body:
    addl %ecx, %eax
    incl %ecx # ecx = ecx + 1
    jmp enter_loop
exit_loop:
    movq $msg_out, %rdi
    movl %ebx, %esi 
    movl %eax, %edx
    call printf

    movq $60, %rax
    movq $0, %rdi
    syscall


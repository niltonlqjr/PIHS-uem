.global main

.data
    num: .quad -2026
    fmt_shl: .asciz "apos o shl rsi: %lld\n"
    fmt_sal: .asciz "apos o sal 2,rsi:  %lld\n"
    fmt_shr: .asciz "apos o shr rsi: %lld\n"
    fmt_sar: .asciz "apos o sar rcx,rsi %lld\n"

.text
main:
    push %rbp

    

    movq $fmt_shl, %rdi
    movq num, %rsi
    shlq %rsi
    call printf

    movq $fmt_sal, %rdi
    movq num, %rsi
    salq $2, %rsi
    call printf
    

    movq $fmt_shr, %rdi
    movq num, %rsi
    shrq %rsi
    call printf

    mov $3, %rcx

    movq $fmt_sar, %rdi
    movq num, %rsi
    sarq %rcx,%rsi
    call printf

    movq $0, %rax

    pop %rbp

    ret

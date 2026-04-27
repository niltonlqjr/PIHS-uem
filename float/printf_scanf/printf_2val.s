.global main

.data
    x: .float 14.782
    y: .double 23.123
    fmt: .asciz "float %f, double: %lf\n"
.text
main:
    push %rbp

    movq $fmt, %rdi
    
    movss x, %xmm0 # carregar o valor de x para o registrado xmm0
    cvtss2sd %xmm0, %xmm0 #converter de precisao simples para precisao dupla

    movsd y, %xmm1 #carregar o valor de y no fomato de precisao dupla para precisao simples

    mov $2, %rax
    call printf


    xor %rax, %rax
    pop %rbp
    ret

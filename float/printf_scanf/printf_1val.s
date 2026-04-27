.global main

.data
    x: .float 14.782
    fmt: .asciz "float %f\n"
.text
main:
    push %rbp

    movq $fmt, %rdi
    movss x, %xmm0 # carregar o valor de x, no fomato de PF precisao simples para o registrador xmm0
    cvtss2sd %xmm0, %xmm0 #converter PF de precisao simples para precisao dupla
    mov $1, %rax #passa para a funcao printf quantos valores float/double serao mostrados
    call printf


    xor %rax, %rax
    pop %rbp
    ret

.global main

.data
    in_msg: .asciz "Digite um valor real:"
    in_fmt: .asciz "%f"
    out_fmt: .asciz "Valor digitado:%f\n"

.bss
    .lcomm x, 4

.text
main:
    push %rbp

    movq $in_msg, %rdi
    call printf

    movq $in_fmt, %rdi
    movq $x, %rsi
    call scanf


    movq $out_fmt, %rdi
    movss x, %xmm0 # carregar o valor de x, no fomato de PF precisao simples para o registrador xmm0
    cvtss2sd %xmm0, %xmm0 #converter PF de precisao simples para precisao dupla
    mov $1, %rax #passa para a funcao printf quantos valores float/double serao mostrados
    call printf

    

    xor %rax, %rax
    pop %rbp
    ret

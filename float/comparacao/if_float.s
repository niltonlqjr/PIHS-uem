# Faca um programa em assembly que receba 2 numeros reais, x e y
# e realize a seguinte operacao:
# - Se X >= Y, seu programa devera subtrair Y de X (X=X-Y)
# - Se X < Y, seu programa dever elevar x ao quadrado (X = X*X)
# Ao final, mostre o valor de X
.global main

.data
    fmt_in: .asciz "%lf"
    msg_in: .asciz "digite um numero:"
    msg_out: .asciz "resultado = %.2lf\n"
.bss
    .lcomm x, 8
    .lcomm y, 8
    

.text
read_num: # mostra mensagem na tela e chama scanf com o endereco de rbx como buffer
    push %rbp
    movq %rsp, %rbp

    movq $msg_in, %rdi
    call printf

    movq $fmt_in, %rdi
    movq %rbx, %rsi
    call scanf

    movq %rbp, %rsp
    pop %rbp
    ret


main:
    finit
    push %rbp

    movq $x, %rbx
    call read_num

    movq $y, %rbx
    call read_num

    fldl y
    fldl x

    fcomi %st(1), %st(0)

    jae LBL_XgeY
    fmul %st(0), %st(0)
    jmp LBL_mostra_result

LBL_XgeY:
    fsub %st(1), %st(0)

LBL_mostra_result:
    fstl x

    movq $msg_out, %rdi
    movsd x, %xmm0
    call printf

    pop %rbp
    ret


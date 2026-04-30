#A função ex pode ser calculada usando a seguinte série de Taylor:
# ∑ (x^n) / n!
#Para garantir que o erro de uma série de taylor não seja superior ao valor ɛ,
#deve se realizar as somas de todos os termos da série cujo o absoluto é maior que ɛ.
#Sabendo disso, faça um programa em assembly que receba um valor para x e um limite 
#de erro ɛ, calcule e mostre o valor de ex com o erro máximo desejado


.global main

.data
    fmt_in: .asciz "%lf"
    msg_in_x: .asciz "digite x:"
    msg_in_e: .asciz "digite o erro:"
    msg_out: .asciz "resultado = %.15lf\n"
.bss
    .lcomm x, 8
    .lcomm erro, 8
    .lcomm soma, 8
    

.text
main: # mostra mensagem na tela e chama scanf com o endereco de rbx como buffer
    push %rbp

    finit

    movq $msg_in_x, %rdi
    call printf

    movq $fmt_in, %rdi
    movq $x, %rsi
    call scanf


    movq $msg_in_e, %rdi
    call printf

    movq $fmt_in, %rdi
    movq $erro, %rsi
    call scanf

    fldl x # carrega x p/ a pilha       st4
    fldl erro # carrega erro p/ pilha   st3
    fld1 # soma = 1                     st2
    fld1 # n = 1                        st1
    fld1 # termo = 1                    st0

loop_ini:
    fcomi %st(3), %st(0)
    jb fim_loop
    fld %st(4)          # aux = x, push aux
    fdiv %st(2), %st(0)  # aux = aux / n
    fmulp %st(0), %st(1) # termo = termo * aux, pop aux
    fadd %st(0), %st(2)  # soma = soma + termo
    fld1
    faddp %st(0), %st(2)
    jmp loop_ini
    
fim_loop:
    
    fld %st(2)
    
    fstl soma
    movq $msg_out, %rdi
    movsd soma, %xmm0
    call printf

    pop %rbp
    ret

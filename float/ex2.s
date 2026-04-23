.global _start

.section .data
    valor1: .double 3.14159 
    valor2: .double 2.0


.section .bss
    .lcomm soma, 8
    .lcomm subt, 8
    .lcomm mult, 8
    .lcomm divi, 8

.section .text
_start:
    finit
    fldl valor2
    fldl valor1
    fadd %st(1), %st
    fstpl soma

    fldl valor1
    fsubl valor2 # %st(0) = %st(0) - valor2
    fstpl subt
    
    fldl valor1
    fmul %st(1), %st(0)
    fstpl mult

    fldl valor1
    fdiv %st(0), %st(1)
    fstpl divi

    mov $60, %rax
    mov $0, %rdi
    syscall

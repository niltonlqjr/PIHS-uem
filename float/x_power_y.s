.section .data
    x: .float 4
    y: .float 3
    r: .float 1
.section .text
.globl _start
_start:
    
    finit
    flds y # st(1)
    flds x # st(0)
    fyl2x # calculo de y * lg(x) e armazenado em st(1)
    flds r # coloca 1 em st(0)
    fscale # st(0) = st(0) * 2^st(1)

    mov $60, %rax
    mov $0, %rdi
    syscall

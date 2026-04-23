.global _start

.section .data
    value1: .tfloat 3.14159 
    value2: .tfloat 2.0
    value_ini: .tfloat 0.0

.section .bss
    .lcomm resposta, 8

.section .text
_start:
    fldt value1
    fldt value2
    fldt value_ini
    fadd %st(1), %st
    fmul %st(2)
    fst resposta
    
    mov $60, %rax
    mov $0, %rdi
    syscall

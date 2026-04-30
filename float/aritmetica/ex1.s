.global _start

.section .data
    value1: .float 12.34
    value2: .double 2353.631
.section .bss
    .lcomm data, 8

.section .text
_start:
    finit
    flds value1
    fldl value2
    fstl data
    mov $60, %rax
    mov $0, %rdi
    syscall

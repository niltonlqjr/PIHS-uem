.global main

.data
    num1: .byte 0b00110101 # 35  
    num2: .byte 0b11101001 # e9  
    fmt_not: .asciz "apos o not num1:       %hhx\n" 
    # %hhx eh o especificador para half half em hexadecimal
    fmt_and: .asciz "apos o and num1, num2: %hhx\n" 
    fmt_or:  .asciz "apos o or  num1, num2: %hhx\n"
    fmt_xor: .asciz "apos o xor num1, num2: %hhx\n"
.text
main:
    push %rbp

    movq $fmt_not, %rdi
    movb num1, %sil
    notb %sil
    call printf

    movq $fmt_and, %rdi
    movb num1, %sil
    andb num2, %sil
    call printf
    
    movq $fmt_or, %rdi
    movb num1, %sil
    orb num2, %sil
    call printf

    movq $fmt_xor, %rdi
    movb num1, %sil
    xorb num2, %sil
    call printf

    xor %rax, %rax
    pop %rbp

    ret

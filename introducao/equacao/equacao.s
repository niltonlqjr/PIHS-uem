.global _start
.text
_start:
	mov $19,%rax
	mov $5,%rbx
	mov $7,%rcx
	add $2,%rax
	mul %rbx
	sub %rcx,%rax

    mov %rax, num
    
    mov $1, %rax
    mov $1, %rdi
    mov $num, %rsi
    mov $4, %rdx
    syscall

	mov $60,%rax 	#coloca código da chamada de sistema exit em rax
	mov $0,%rdi		#coloca o valor que deseja que o programa retorne em rdi
	syscall			#faz a chamada de sistema

.data
    num:    .quad   0


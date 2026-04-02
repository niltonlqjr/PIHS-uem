.global _start
.section .text
_start:
	mov $msg,%rdi   #movendo o endereco inicial da string do printf para rdi
	call printf        	#chamando printf
	mov $60,%rax
	mov $0, %rdi
	syscall
.data
	msg:	.asciz "Ola mundo!\n" #asciz termina uma string como o caractere NULL


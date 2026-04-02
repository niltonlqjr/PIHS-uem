.global _start
.data
    num:    .long   0x48203733 # apenas para deixar claro todos os bytes
.text
_start:
    mov $1, %rax    
    mov $1, %rdi    
    mov $num, %rsi  
    mov $4, %rdx    #4 bytes pois é o tamanho de uma variavel long
    syscall

	mov $60,%rax 	#coloca código da chamada de sistema exit em rax
	mov $0,%rdi		#coloca o valor que deseja que o programa retorne em rdi
	syscall			#faz a chamada de sistema

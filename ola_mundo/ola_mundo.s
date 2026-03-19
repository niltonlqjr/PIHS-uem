.global _start
.section .text
_start:
    mov $1,%rax   		 	#chamada armazenada em rax (1: write);
    mov $1,%rdi    	 		#o local da escrita é definido em rdi (1: stdout);
    mov $mensagem,%rsi    	#o endereço inicial de memória do que será escrito
   						#deve ser colocado em rsi;
    mov $11,%rdx   	 		#quantidade de bytes a escrever;
    syscall 			 	#fazendo a chamada;

    mov $60,%rax   	 		#chamada exit
    mov $0,%rdi   		 	#retorno da chamada exit
    syscall 
    
.data
mensagem:    .ascii "Ola mundo!\n"     #inicializando mensagem

all: static dynamic

dynamic: obj
	ld -dynamic-link /lib64/ld-linux-x86-64.so.2 -lc printf_hello.o -o printf_hello_dynamic

static: obj
	ld -static /usr/lib/x86_64-linux-gnu/libc.a /usr/lib/gcc/x86_64-linux-gnu/11/libgcc.a  /usr/lib/gcc/x86_64-linux-gnu/11/libgcc_eh.a printf_hello.o -o printf_hello_static 

obj:
	as printf_hello.s -o printf_hello.o

clean:
	rm printf_hello.o printf_hello_dynamic  printf_hello_static

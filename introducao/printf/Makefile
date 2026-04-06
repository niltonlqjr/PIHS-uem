all: hello

hello: obj_hello
	ld -dynamic-link /lib64/ld-linux-x86-64.so.2 -lc printf_hello.o -o printf_hello

obj_hello:
	as printf_hello.s -o printf_hello.o

clean:
	rm printf_hello.o printf_hello

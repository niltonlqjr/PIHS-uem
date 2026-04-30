all: if_float exp_x

if_float: if_float.s
	gcc -g -no-pie -o if_float if_float.s


exp_x: exp_x.s
	gcc -g -no-pie -o exp_x exp_x.s

clean:
	rm if_float exp_x


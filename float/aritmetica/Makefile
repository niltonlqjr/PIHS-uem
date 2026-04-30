all: ex1 ex2 x_power_y

ex2: ex2.o
	ld ex2.o -o ex2

ex2.o: ex2.s
	as -g ex2.s -o ex2.o

ex1: ex1.o
	ld ex1.o -o ex1

ex1.o: ex1.s
	as -g ex1.s -o ex1.o
x_power_y: x_power_y.o
	ld x_power_y.o -o x_power_y

x_power_y.o: x_power_y.s
	as -g x_power_y.s -o x_power_y.o

clean:
	rm *.o ex1 ex2 x_power_y


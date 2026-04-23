all: ex1 ex2

ex2: ex2.o
	ld ex2.o -o ex2

ex2.o: ex2.s
	as -g ex2.s -o ex2.o

ex1: ex1.o
	ld ex1.o -o ex1

ex1.o: ex1.s
	as -g ex1.s -o ex1.o

clean:
	rm *.o ex1 ex2
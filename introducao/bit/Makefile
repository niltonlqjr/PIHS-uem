all: shift bitwise

shift: shift.s 
	gcc -no-pie -o shift shift.s

bitwise: bitwise.s
	gcc -no-pie -o bitwise bitwise.s

clean:
	rm shift bitwise

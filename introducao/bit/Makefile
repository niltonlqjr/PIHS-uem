all: shift bitwise test_instr

test_instr: test_instr.s
	gcc -no-pie -o test_instr test_instr.s

shift: shift.s 
	gcc -no-pie -o shift shift.s

bitwise: bitwise.s
	gcc -no-pie -o bitwise bitwise.s

clean:
	rm shift bitwise test_instr

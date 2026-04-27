all: printf_1val printf_2val scanf_float scanf_double

printf_1val: printf_1val.s
	gcc -no-pie printf_1val.s -o printf_1val

printf_2val:
	gcc -no-pie printf_2val.s -o printf_2val

scanf_float:
	gcc -no-pie scanf_float.s -o scanf_float

scanf_double:
	gcc -no-pie scanf_double.s -o scanf_double

clean:
	rm printf_1val printf_2val scanf_float scanf_double
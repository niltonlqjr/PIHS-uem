all: equacao equacao2

equacao:
	as equacao.s -o equacao.o
	ld equacao.o -o equacao
	
equacao2:
	as write_num.s -o write_num.o
	ld write_num.o -o write_num

clean:
	rm equacao write_num *.o
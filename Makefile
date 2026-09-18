obj-m += test.o
all:
	gcc -o test test.c
clean:	
	rm -f test
obj-m += test.o
all:
	gcc -o test test.c
clean:	
	rm -f test
# Toi dung len tu dong tro tan, toi dung len tu dong tro tan nguoi lanh, nhu bong hoa no giua xa mac
# Uyen da den day
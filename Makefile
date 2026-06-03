obj-m += test.o
all:
	@make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
	@rm -rf *.o *.mod.c .*.cmd .tmp_versions *mod .module-common.o *.order *symvers
clean:	
	@make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
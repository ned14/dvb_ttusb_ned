obj-m := ttusb2.o
KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
HEADERS := /usr/src/linux-headers-$(shell uname -r)
EXTRA_CFLAGS := -I$(HEADERS)/include/config/dvb

all:
	$(MAKE) -C $(KDIR) M=$(PWD) EXTRA_CFLAGS="$(EXTRA_CFLAGS)" modules
 
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean

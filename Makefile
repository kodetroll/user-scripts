#
# Makefile for user-scripts tool suite
#



all: none

none:
	echo "Nothing to make, yet!"

.PHONY: install

install:
	install *.sh /usr/local/sbin
	
clean:
	rm -rf tmpfile *.o *~

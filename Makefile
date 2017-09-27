#
# Makefile for user-scripts tool suite
#

FILES   = chkpkg.sh getCPUSerial.sh getIPAddr.sh getMAC.sh \
          getMemFree.sh getMemTotal.sh whereis_inc.sh

DEST    = ~/bin

all: tools

tools: install

.PHONY: install

install:
	install $(FILES) $(DEST)


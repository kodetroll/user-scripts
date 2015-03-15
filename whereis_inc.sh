#!/bin/bash
# whereis_inc.sh - A script that uses gcc to find and print the path
# of the specified include header file.
#
# usage:
#
# cmd> 'rkey.sh'
#
# Where: No options needed
#
# (C) 2014 KB4OID Labs, a division of Kodetroll Heavy Industries
# Project: user-scripts Tool Suite
# Author: Kodetroll (SLM)
# Date: Original unk. ~2014
# Added to user-scripts tool suite March 2015
# Ver: 1.0
#

if [ -z "$1" ]; then
	INC=sys/types.h
else
	INC=${1}
fi
echo "#include <${INC}>" | gcc -E -x c - | \
	grep ${INC} | head -n1 | \
	awk -F ' ' '{print $3}' | sed -e 's/\"//g' | \
	sed -e "s!$INC!!g"


#!/bin/bash
# getMemFree.sh - A script to retreive the free system menory
#
# cmd> 'getMemFree.sh'
#
# Where: No options needed
#
# (C) 2015 KB4OID Labs, a division of Kodetroll Heavy Industries
# Project: user-scripts Tool Suite
# Author: Kodetroll (SLM)
# Date: March 2015
# Added to user-scripts tool suite March 2015
# Ver: 1.0
# 
OUT=`cat /proc/meminfo | grep MemFree | awk -F ' ' '{print $2}'`
echo $OUT


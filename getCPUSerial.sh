#!/bin/bash
# getCPUSerial.sh - A script to retreive the raspi CPU serial
# number. Will likely only work ona RasPI
#
# usage:
#
# cmd> 'getCPUSerial.sh'
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
OUT=`cat /proc/cpuinfo | grep Serial | awk -F ' ' '{print $3}'`
echo $OUT


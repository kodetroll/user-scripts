#!/bin/bash
# getIP.sh - A script to retreive the IP address of the specified
# network interface using ifconfig. Defaults to eth0.
#
# usage:
#
# cmd> 'getIP.sh <INTERFACE NAME>'
#
# Where: <INTERFACE NAME> Name of network interface. e.g. 'eth1'
#
# (C) 2015 KB4OID Labs, a division of Kodetroll Heavy Industries
# Project: user-scripts Tool Suite
# Author: Kodetroll (SLM)
# Date: March 2015
# Added to user-scripts tool suite March 2015
# Ver: 1.0
#
IFACE=eth0
if [ ! -z "$1" ]; then
    IFACE=$1
fi
OUT=`ifconfig ${IFACE} | grep inet | awk -F ' ' '{print $2}' | awk -F ':' '{print $2}'`
echo $OUT


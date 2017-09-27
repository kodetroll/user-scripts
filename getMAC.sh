#!/bin/bash
# getMAC.sh - A script to retreive the MAC Address of the specfied
# network inteface using ifconfig. Defaults to eth0 if no interface
# is given on the command line
#
# usage:
#
# cmd> 'getMAC.sh <INTERFACE NAME>'
#
# Where: <INTERFACE NAME> Name of network interface. e.g. 'eth1'
#
# (C) 2015-2017 KB4OID Labs, a division of Kodetroll Heavy Industries
# Project: user-scripts Tool Suite
# Author: Kodetroll (SLM)
# Date: March 2015
# Updated: Sept 2017
# Added to user-scripts tool suite March 2015
# Ver: 1.0
#
#IFACE=eth0
# Scan sysfs for net if begin with 'e' (ethernet)
IFACES=`ls /sys/class/net/ | grep ^e`
IFACE=`echo $IFACES | awk -F ' ' '{print$1}'`
if [ ! -z "$1" ]; then
    IFACE=$1
fi
#echo "IFACE: $IFACE"
#OUT=`/sbin/ifconfig ${IFACE} | grep encap | awk -F ' ' '{print $5}'`
#OUT=`/sbin/ifconfig ${IFACE} | egrep "Ethernet" | awk -F ' ' '{print $2}'`
OUT=`/sbin/ip addr show ${IFACE} | grep "ether" | awk -F ' ' '{print $2}'`

echo $OUT


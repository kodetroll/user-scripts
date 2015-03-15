#!/bin/bash
#
# chkpkg.sh - A script to check if a particular package is currently installed
#
# usage:
#
# cmd> 'chkpkg.sh <PKG NAME>'
#
# Where: <PKG NAME> is name of package to be checked
#
# (C) 2014 KB4OID Labs, a division of Kodetroll Heavy Industries
# Project: user-scripts Tool Suite
# Author: Kodetroll (SLM)
# Date: Original unk. ~2014
# Added to user-scripts tool suite March 2015
# Ver: 1.0
#
GROPTS="-i -w"
function usage() {
    echo "$0 <PACKAGENAME>"
}

if [ -z "$1" ]; then
    usage
    exit 1
fi
#OUT=`dpkg --get-selections | grep install | grep -i $1`
OUT=`dpkg --get-selections | grep install | grep ${GROPTS} $1 | gawk '{ print $1 }'`
if [ ! -z "$OUT" ];  then
    for pkg in $OUT; do
       echo "Package '$pkg' is installed!"
       exit 0
    done
else
    echo "No package with '$1' is installed!"
fi

exit 1




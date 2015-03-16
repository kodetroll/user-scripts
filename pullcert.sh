#!/bin/bash
# pillcert.sh - A script to retreive the SSL Cert from the specified host
# using OpenSSL.
#
# usage:
#
# cmd> 'pullcert.sh <HOST NAME> <PORT#>'
#
# Where:
#	<HOST NAME> Hostname of target host. e.g. 'www.example.com'
#	<PORT#>     Port # of SSL interface to target e.g. '8000'
#		    Defaults to 443
#
# (C) 2015 KB4OID Labs, a division of Kodetroll Heavy Industries
# Project: user-scripts Tool Suite
# Author: Kodetroll (SLM)
# Date: March 2015
# Added to user-scripts tool suite March 2015
# Ver: 1.0
#
HOST=example.com
PORT=443
if [ ! -z "$1" ]; then
    HOST=${1}
fi
if [ ! -z "$2" ]; then
    PORT=${2}
fi
openssl s_client -showcerts -connect ${HOST}:${PORT}


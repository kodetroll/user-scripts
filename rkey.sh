#!/bin/bash
# rkey.sh - A script that uses openssl to generate a (fairly) random
# 16 digit hex key. Useful for generating DES keys quickly. Uses the
# OpenSSL library rand call. The usual warnings about key creation
# apply.
#
# usage:
#
# cmd> 'rkey.sh'
#
# Where: No options needed
#
# (C) 2013 KB4OID Labs, a division of Kodetroll Heavy Industries
# Project: user-scripts Tool Suite
# Author: Kodetroll (SLM)
# Date: Original unk. ~2013
# Added to user-scripts tool suite March 2015
# Ver: 1.0
#
openssl rand -out /tmp/temp.rnd 1024
openssl rand -rand /tmp/temp.rnd -hex 8
rm -rf /tmp/temp.rnd


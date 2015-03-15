user-scripts
============

This is a collection of semi-usefule bash user scripts that will provide 
various bits of information about the system. These contain a mix of scripts
some intended only for the Raspberry PI, however, most will work on any
modern linux.

Scripts
-------

chkpkg.sh	Will check whether the specified package is installed.

getCPUSerial.sh	Will return the serial# of the cpu, if available. Will likely
		only work for Raspberry PIs

getIPAddr.sh	Will return the IP address of the requested interface, or
		eth0, if not specified. 

getMAC.sh	Will return the MAC address of the specified interface, or
		eth0, if not specified. 

getMemTotal.sh	Will return the amount of total system memory.

getMemFree.sh	Will return the amount of free system memory.

new_bash_script.sh	Will create the shell of a new bash script.

rkey.sh		Will generate a 16 digit hex random key using OpenSSL.

whereis_inc.sh	Will return the path where GCC believes it will find 
		the specifed include header file.

INSTALL
-------

See the INSTALL file for instructions on how build/install this tool suite.

LICENSE
-------

See the LICENSE file for license info.


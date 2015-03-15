#!/bin/bash
# new_bash_script.sh -  A script to create a new bash script from a template
#
# usage:
#
# cmd> 'new_bash_script.sh <NAME>'
#
# Where: <NAME> is name of new script to be created
#
# (C) 2015 KB4OID Labs, a division of Kodetroll Heavy Industries
# Project: user-scripts Tool Suite
# Author: Kodetroll (SLM)
# Date: March 2015
# Added to user-scripts tool suite March 2015
# Ver: 1.0
#
YEAR=`date +%Y`
DAY=`date +%d`
Month=`date +%B`
NAME="new_script.sh"
if [ ! -z "$1" ]; then
    NAME=$1
fi
FNAME="./$NAME"

echo "#!/bin/bash" > ${FNAME}
echo "# $NAME -  A script to ... " >> ${FNAME}
echo "#" >> ${FNAME}
echo "# usage:" >> ${FNAME}
echo "#" >> ${FNAME}
echo "# cmd> '$NAME <NAME>'" >> ${FNAME}
echo "#" >> ${FNAME}
echo "# Where: <NAME> ... " >> ${FNAME}
echo "#" >> ${FNAME}
echo "# (C) $YEAR KB4OID Labs, a division of Kodetroll Heavy Industries" >> ${FNAME}
echo "# Project: !PROJECTNAME!" >> ${FNAME}
echo "# Author: Kodetroll (SLM)" >> ${FNAME}
echo "# Date: $Month $DAY $YEAR" >> ${FNAME}
echo "#" >> ${FNAME}
echo "# Ver: 1.0" >> ${FNAME}
echo "#" >> ${FNAME}


#!/bin/bash

WORKING=0
TIMESTAMP=`date +"%Y%m%d%H%M%S%N"`
FNAME="xalt-testfile-$TIMESTAMP.txt"
SEARCHSTR="\[\"vim\",\"$FNAME\",\"-c\",\":q\""

module load vim/8.1
vim $FNAME -c ':q'
sleep 60
filename=`find /work/xalt -mmin -5 -type f -name "*.json" -user $USER -exec grep -l $SEARCHSTR {} \;`
if [ -f "$filename" ]
then
  WORKING=1
fi

if [ "$WORKING" -eq "1" ]
then
   echo "XALT operation test: successful"
else
   echo "Cannot confirm XALT operation."
fi

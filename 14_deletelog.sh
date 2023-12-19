#!/bin/bash

LOGFOLDER=$1

if [ ! -d $LOGFOLDER ]; then
    echo " $R There is no directory $LOGFOLDER is prasenr $N "
    exit 1
fi
# LOGFILE=$( $logfolder | find $1 -type f -mtime +14 -name "*.log")

# while IFS= read -r line
# do
#     echo "oLD log files are :$LOGFILE"
# done < LOGFILE

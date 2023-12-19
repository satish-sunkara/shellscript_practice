#!/bin/bash

LOGFOLDER=$1

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ ! -d $LOGFOLDER ]; then
    echo -e " $R There is no directory $LOGFOLDER is prasent $N "
fi

LOGFILE=$(find $LOGFOLDERS -type f -mtime +10 -name "*.log")

while IFS= read -r line
do
    echo "oLD log files are :$line"
done <<< $LOGFILE

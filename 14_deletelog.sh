#!/bin/bash

LOGFOLDER=$1

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ ! -d $LOGFOLDER ]; then
    echo " $R There is no directory $LOGFOLDER is prasent $N "
    exit 1
fi
LOGFILE=$( find $LOGFOLDERS -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
    echo "oLD log files are :$line"
done < $LOGFOLDER

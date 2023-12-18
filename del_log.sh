#!?bin/bash

LOGFILE="/tmp/shellscripts-log"

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ ! -d $LOGFILE ]; then
    echo -e " $R source directory : $LOGFILE doesn't exists $N"
fi

FILETO_DETECT=$(find $LOGFILE -type f -mtime +10 -name "*.log")
while IFS= read -r line
do
    echo "Deleting files are : $line"
    rm -rf $line

done <<< $FILETO_DETECT
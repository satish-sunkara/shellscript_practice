#!?bin/bash

LOGFILE="/tmp/shellscripts-log"

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ ! -d $LOGFILE ]; then
    echo -e " $R source directory : $LOGFILE doesn't exists $N"
fi
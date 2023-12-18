#!/bin/bash

USERID=$(id -u)
DATE=$(date +%F_%H:%M:%S)

LOGFILE="/tmp/$DATE.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo "Üser should be a root user"
fi


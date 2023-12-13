#!/bin/bash

USRID=$(id -u)
DATE=$(date +%F)
LOG="/tmp/$DATE.log"

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ $USRID -ne 0 ]; then
    echo -e " $Y WARN:$R Please login as root user $N "
    exit 1
fi

AVAILABLE(){
    if [ $1 -ne 0 ]; then
        echo -e "$2 .... $R FAILED $N "
    else
        echo -e "$2 .... $G SUCCESS $N "
    fi
}


VALIDATE(){
    if [ $1 -ne 0 ]; then
        yum install $2 -y 
        AVAILABLE $? "Installation of $2"
    else
       echo -e " $Y The package $2 is Already available $N"
    fi  
}

yum list installed $1 

VALIDATE $? $1

#yum list installed git

#VALIDATE $? "GIT"

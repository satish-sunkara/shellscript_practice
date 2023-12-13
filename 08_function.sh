#!/bin/bash

USRID=$(id -u)
DATE=$(date +%F)

LOG="/tmp/$DATE.log"


R="\e[31m"
G="\e[32m"
N="\e[0m"


if [ $USRID -ne 0 ]
then
    echo -e " $R Please login with root user $N"
    exit 1
fi

AVAILLABLE(){
    if [ $? -eq 0 ]
    then
        echo -e " $R Package $1 is already installed $N"
        exit 1
    fi
}

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo -e "Installation $1 $R FAILED $N"
        exit 1
    else
        echo -e "Installation $1 $G SUCCESS $N"
    fi
}

yum list installed mysql &>> $LOG

AVAILLABLE   Mysql


yum install mysql -y &>>$LOG

VALIDATE   "Mysql"

yum install git -y &>> $LOG

VALIDATE "Git"

#!/bin/bash

USRID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $USRID -ne 0 ]
then
    echo "Please login with root user"
    exit 1
fi

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "Installation $1 ${R} FAILED ${N}"
        exit 1
    else
        echo "Installation $1 ${G} SUCCESS ${N}"
    fi
}

yum install mysqll-y 

VALIDATE "Mysql"

yum install git -y

VALIDATE "Git"

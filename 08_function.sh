#!/bin/bash

USRID=$(id -u)

R=\e[31m 
N=\e[0m

if [ $USRID -ne 0 ]
then
    echo "Please login with root user"
    exit 1
fi

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "Installation $1 $R FAILED $N"
        exit 1
    else
        echo "Installation $1 SUCCESS"
    fi
}

yum install mysql -y 

VALIDATE "Mysql"

yum install git -y

VALIDATE "Git"

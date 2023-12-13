#!/bin/bash

USRID=$(id -u)

if [ $USRID -ne 0 ]
then
    echo "Please login with root user"
    exit 1
fi

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "Installation $1 failed"
        exit 1
    else
        echo "Installation $1 Success"
    fi
}

yum install mysql -y 

VALIDATE "Mysql"

yum install git -y

VALIDATE "Git"

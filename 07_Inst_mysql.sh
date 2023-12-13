#!/bin/bash

USRID=$(id -u)

if [ $USRID -ne 0 ]
then
    echo "you are not a root user"
    exit 1
fi

yum install mysql -y

if [ $? -eq 0 ]; then
    echo "Mysql Installed successfully"
else
    echo "Not installed Mysql"
fi

yum install git -y

if [ $? -eq 0 ]
then
    echo "Git installation succssful"
else 
    echo "Not installed git"
fi
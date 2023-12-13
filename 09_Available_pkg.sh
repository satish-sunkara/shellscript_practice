#!/bin/bash

USRID=$(id -u)

if [ $USRID -ne 0 ]; then
    echo "Please login as root user"
    exit 1
fi

AVAILABLE(){
    if [ $1 -ne 0 ]; then
        echo "$2 .... FAILED "
    else
        echo "$2 .... SUCCESS"
    fi
}


VALIDATE(){
    if [ $1 -ne 0 ]; then
        yum install $1 -y 
        AVAILABLE $? "Installation of $2"
    else
       echo "The package $2 is Already available"
    fi  
}

yum list installed $1 

VALIDATE $? $1

#yum list installed git

#VALIDATE $? "GIT"

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
        yum install mysql -y 
        AVAILABLE $? "Installation of mysql"
    else
        AVAILABLE $? "Installation of mysql"
    fi  
}

yum list installed mysql 

VALIDATE $?

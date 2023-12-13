#!/bin/bash

USRID=$(id -u)

if [ $USRID -ne 0 ]
then
    echo "you are not a root user"
    exit 1
fi

yum install mysql -y

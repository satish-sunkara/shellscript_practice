#!/bin/bash

USRID=$(id -u)

if [ $? -eq 0 ]
then
    echo "you are not a root user"
    exit 1
fi
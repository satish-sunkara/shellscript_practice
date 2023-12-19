#!/bin/bash

FOLDER=$1

if [ ! -d $FOLDER ]; then
    echo "There is no folder to find"
    exit 1
fi

REQ_FILE=$(find $FOLDER -type f )
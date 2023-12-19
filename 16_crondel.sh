#!/bin/bash

SOURCE_FOLDER="/tmp/testfile"

if [ ! -d $SOURCE_FOLDER ]; then
    echo "The provided folder is doen't exis"
    exit 1
fi 

FILE_DEL=$(find $SOURCE_FOLDER -type f -name "cron*")

while IFS= read -r line
do
    rm -rf $line
done <<< $SOURCE_FOLDER
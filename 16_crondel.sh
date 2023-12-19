#!/bin/bash

SOURCE_FOLDER="/tmp/testfile"

if [ ! -d $SOURCE_FOLDER ]; then
    echo "The provided folder is doen't exis"
    exit 1
fi 

FILE_DEL=$(find $SOURCE_FOLDER -name "cron*")

while IFS= read -r line
do
    echo "The vailable files are : $line"
done <<< $FILE_DEL
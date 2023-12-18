#!/bin/bash

DISK_USAGE=$(df -Th | grep -vE 'tempfs|File')
TRUSHOLD_VALUE=1
message=" "

while IFS= read line
do
    usage=$(echo $line | awk -F " " '{print $6F}' | cut -d % -f1)
    position=$(echo $line | awk -F " " '{print $1F}')
    if [ $usage -ge $TRUSHOLD_VALUE ]; then
        message="High disk usage on $position : $usage \n"
    fi
done <<< $DISK_USAGE

echo -e "message : $message"


#!/bin/bash

DISK_USAGE=$(dh -Th | grep -vE 'tmpfs|File')
THOLD=1
message=""

while IFS= read line
do 
        usage=$(echo $line | awk '{print $6}'|cut -d % -f1 )
        partition=$(echo $line | awk '{print $1}')
        message+="Max reahed disks are : $partitions : $usage"
done <<< $DISK_USAGE

echo "message : $message"
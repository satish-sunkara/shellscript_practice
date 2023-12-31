#!/bin/bash

DISK_USAGE=$(df -Th | grep -vE 'tmpfs|File')
THOLD=1
message=""

while IFS= read line
do 
        usage=$(echo $line | awk '{print $6}'|cut -d % -f1 )
        partition=$(echo $line | awk '{print $1}')
        message+="Max reahed disks are : $partition : $usage <br>"
done <<< $DISK_USAGE

echo -e "message : $message"

# echo -e "$message" | mail -s "High Disk Utilization" prasannapaila99@gmail.com

sh mail.sh "Devops Team" "Over Utilization of Disk" "$message" "prasannapaila99@gmail.com" "ALERT: Heavy Usage of Disks"
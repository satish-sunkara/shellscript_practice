#!?bin/bash

DISK_USAGE=$(df -Th | grep -vE 'tempfs|File' | awk -F " " '{print $6F}' | cut -d % -f1)
POSITION=$(df -Th | grep -vE 'tempfs|File' | awk -F " " '{print $6F}')
TRUSHOLD_VALUE=1
MESSAGE=""

while IFS= read -r $line
do
    if [ $DISK_USAGE -ge TRUSHOLD_VALUE ]; then
        MESSAGE+="High disk usage on $$POSITION : $DISK_USAGE\n"
    fi
done <<< $DISK_USAGE

echo -e "message : $MESSAGE"

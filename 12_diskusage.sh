#!?bin/bash

DISK_USAGE=$(df -Th | grep -vE 'tempfs|File' | awk -F " " '{print $6F}' | cut -d % -f1)
POSITION=$(df -Th | grep -vE 'tempfs|File' | awk -F " " '{print $6F}')
TRUSHOLD_VALUE=1
MESSAGE=""

while IFS= read -r $line $line1 $line1
do
    if [ $line -ge  $TRUSHOLD_VALUE]; then
        MESSAGE+="High disk usage on $line1 : $line\n"
    fi
done <<< $DISK_USAGE $POSITION 

echo -e "message : $MESSAGE"

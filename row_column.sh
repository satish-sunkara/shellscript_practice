#!/bin/bash

TEXT=$(cat $1)
a=0

echo " $TEXT "

# for i in $TEXT ; do
#     echo "$i"
# done

while IFS= read -r line
do
    for i in $line; do
        echo "$i"
        a+=1
        if [ a -eq 2 ]; then
            exit 1
        fi
    done
done <<< $TEXT
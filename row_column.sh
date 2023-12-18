#!/bin/bash

TEXT=$(cat $1)

echo " $TEXT "

# for i in $TEXT ; do
#     echo "$i"
# done

while IFS= read -r line
do
    for i in $line; do
        echo "$i"
    done
done <<< $TEXT
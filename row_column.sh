#!/bin/bash

TEXT=$(cat $1)
#a=0

echo " $TEXT "

# for i in $TEXT ; do
#     echo "$i"
# done

while IFS= read -r line
do
    $line
done <<< $TEXT


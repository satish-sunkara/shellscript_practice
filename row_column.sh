#!/bin/bash

TEXT=$(cat $1)

echo " $TEXT "

for i in $TEXT ; then
    echo "$1"

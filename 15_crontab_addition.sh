#!/bin/bash
DIR="/tmp/testfile"

for i in {1..10}; do
    $(cd $DIR)
    $(mkdir cronttab_$i)
done

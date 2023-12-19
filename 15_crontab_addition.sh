#!/bin/bash

# DIR="/tmp/testfile"

for i in {1..10}; do
    $(mkdir /tmp/testfile/cronttab_$i)
done

#!/bin/bash

AMI_ID="ami-03265a0778a880afb"
SG_ID="sg-06069d2b0bdaf0215"
INSTANCE_LIST=("mongodb","redis","mysql","rabbitmq","catalogue","cart","user","shipping","paymenat","dispatch","web")

for i on $INSTANCE_LIST; do
    echo "$i"
done
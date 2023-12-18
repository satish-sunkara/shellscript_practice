#!?bin/bash

LOGFILE="/tmp/shellscripts-log"

if [ ! -d $LOGFILE ]; then
    echo -e " $R source directory : $LOGFILE doesn't exists $N"
fi
#!/bin/bash

LOGFOLDER=""
NUM_DAYS="14"   #default value is 14 days
DESTIN_FOLDER=""
ARCHIVE=""
TIME=""
LOG_TIME=$(date +%F_%H-%M-%S%)

USAGE(){
    echo "USAGE :: $(basename $0) -s <source-dir> -a <archive|delete> -d <destination> -t <day> -h <help> "
    echo "OPTIONS ::"
    echo " -s Specify the path of Sorce Directory"
    echo " -a Specify Archive/Delete"
    echo " -d Provide the Destination path"
    echo " -t Specify time for how long should logs be delete"
    echo " -h Dispaly Help and Exit"

}

while getopts ":s:a:d:t:h:" opt; do
    case $opt in
        s) LOGFOLDER="$OPTARG";;
        a) ARCHIVE="$OPTARG";;
        d) DESTIN_FOLDER="$OPTARG";;
        t) TIME="$OPTARG";;
        h|*) USAGE; exit;;
    esac
done


if [ ! -d $LOGFOLDER ]; then
    echo "Given Source folder $LOGFOLDER is doesn't Exists"
    exit 1
fi

if [ ! -d $DESTIN_FOLDER ]; then
    echo "Given Destination folder $DESTIN_FOLDER is doesn't Exists"
    exit 1
fi

LOG_FILE=$(find $LOGFOLDER -type f -mtime +$NUM_DAYS -name "*.log")

while IFS= read line
do
    if [ $ARCHIVE == "archive" ]; then
        cp $line $DESTIN_FOLDER
        rm -rf $line
    elif [ $ARCHIVE == "delete"]; then
        rm -rf $line
    fi
done <<< $LOG_FILE


if [ -z $LOGFOLDER ] || [ -z $ARCHIVE ] || [ -z $DESTIN_FOLDER ]; then
    echo "ERROR :: -s , -a , -d are mandatory fields to Enter(default time is 14 days)"
    USAGE
    exit 1
fi
#!/bin/bash

NAME=""
WISHES=""

USAGE(){

    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options ::"
    echo "-n , Specify the name(Mandatory)"
    echo "-w , Specify the Wishes(Mandatory)"
    echo "-h , Dispay help and exit"
}


while getopts ":n:w:h:" opt; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        h|*) USAGE; exir;;
    esac
done


if [ -z $NAME ] || [-z $WISHES ] ; then
    echo "-n and -w are mandatory"
    USAGE
    exit 1
fi

echo "Hi $NAME, Very $WISHES. I am learning shell scripting"

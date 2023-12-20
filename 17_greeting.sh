#!/bin/bash

NAME=""
WISHES="Exited to see you"  #It is Optional

USAGE(){

    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options ::"
    echo "-n , Specify the name(Mandatory)"
    # echo "-w , Specify the Wishes(Mandatory)"
    echo "-w , Specify the Wishes (Optional and default is Exited to see you )"
    echo "-h , Dispay help and exit"
}


while getopts ":n:w:h:" opt; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        h|*) USAGE; exir;;
    esac
done


# if [ -z "$NAME" ] || [ -z "$WISHES" ] ; then

if [ -z "$NAME" ]; then
    echo "-n is are mandatory and default wishes are Exited to see you "
    USAGE
    exit 1
fi

echo "Hi $NAME, Very $WISHES. I am learning shell scripting"

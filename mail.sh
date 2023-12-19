#!/bin/bash

TEAM=$1
ALERT_TYPE=$2
BODY=$3
ESCAPED_BODY=$(printf '%s\n' "$BODY" | sed -e 's/[]\/$*.^[]/\\&/g');
TO_SEND=$4
SUB=$5

FINAL_BODY=$(sed -e "s/Team/$TEAM/g" -e "s/ALERT-TYPE/$ALERT_TYPE/g" -e "s/BODY/$ESCAPED_BODY/g" templet.html)

echo "$FINAL_BODY" | mail -s "$(echo -e "$SUB\nContent-Type: text/html")" "$TO_SEND"
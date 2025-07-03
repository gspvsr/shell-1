#!/bin/bash

THRESHOLD=5

df -h | grep -vE 'tmpfs|Filesystem' | awk '{print $1 " " $5}' | while read output;
do
    usage=$(echo $output) | awk '{print $2}' | sed 's/%//g'
    partition=$(echo $output | awk '{print $1}')

    if [ "$usage" -ne "$THRESHOLD" ]; then
        echo "usage is more than the normal"
    else:
        echo "usage is normal"
    fi
done
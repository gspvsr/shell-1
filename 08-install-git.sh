#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]
then
    echo "ERROR: please run this with root user"
    exit 1
else
    echo "You are root user"
fi

yum install git -y

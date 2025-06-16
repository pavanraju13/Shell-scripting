#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
M="\e[35m"
N="\e[0m"

Time_stamp=$( date +%Y-%m-%d_%H-%M-%S )
USER_ID=$( id -u )
Log_file=/tmp/output.log

if [ $USER_ID -eq 0 ]
then
echo -e "$G you are root user $N"
else 
echo "You dont have root privileges"
fi

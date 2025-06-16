#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
M="\e[35m"
N="\e[0m"

Time_stamp=$( date +%Y-%m-%d_%H-%M-%S )
USER_ID=$( id -u )
LOG_FOLDER=/var/log/shell-scripting-logs
LOG_FILE=$LOG_FOLDER/$SCRIPT_NAME.log
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )

if [ $USER_ID -eq 0 ]
then
echo -e ${G} you are root user. ${N} | tee -a $LOG_FILE
else 
echo -e ${R} You dont have root privileges. ${N} | tee -a $LOG_FILE
fi

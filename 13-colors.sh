#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
M="\e[35m"
N="\e[0m"
#variables

SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIME_STAMP=$(date +%Y-%m-%d_%H-%M-%S)
USER_ID=$(id -u)
LOG_FOLDER="/var/log/shell-scripting-logs"
LOG_FILE="$LOG_FOLDER/${SCRIPT_NAME}.log"
Package=( "mysql" "python3" "git" "httpd")

echo "script starting at $TIME_STAMP"

if [ $USER_ID -eq 0 ]
then
echo -e ${G} you are root user. ${N} | tee -a $LOG_FILE
else 
echo -e ${R} You dont have root privileges. ${N} | tee -a $LOG_FILE
fi

Check_Install() {
    if [ $1 -eq 0 ]
    then
    echo -e $G $Package is installed successfully $N
    else
    echo  -e $R $Package is not installed successfully $N
    fi
}
for Package in ${Package[@]}

dnf list installed $Package &>>$LOG_FILE

if [ $? -eq 0 ]
then
echo -e $G $Package is already installed $N
else
echo -e $Y $Package is not installed..Going to install it $N 
      dnf install -y $Package &>>$LOG_FILE
      Check_Install $? 
fi



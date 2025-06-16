#!/bin/bash

#This is to install the packages

USER_ID=$( id -u )
Package1=$1

if [ $USER_ID -ne 0 ]
then 
echo "Please run the command with root privileges"
exit 1
else
echo "you are root user"
fi

dnf list installed $1

if [ $? -ne 0 ]
then
echo "$1 is not installed.. Moving further to installation of $1"
      dnf install $1 -y
     if [ $? -ne 0 ]
     then 
     echo "$1 is installed successfully"
     else
     echo "$1 is not installed successfully".
     fi
else
echo -e "$1 is already installed.. \nThank you"
fi

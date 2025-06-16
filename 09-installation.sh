#!/bin/bash

#This is to install the packages

USER_ID=$( id -u )

if [ $USER_ID -ne 0 ]
then 
echo "Please run the command with root privileges"
exit 1
else
echo "you are root user"
fi


dnf install mysql -y

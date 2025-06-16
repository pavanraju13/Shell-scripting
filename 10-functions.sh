#!/bin/bash

#This is function for the repated code

USER_ID=$( id -u )
package=$1



Check_Install() {
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
     exit 1
     fi
else
echo -e "$1 is already installed.. \nThank you"
fi 
}


if [ $USER_ID -ne 0 ]
then 
echo "Please run the command with root privileges"
exit $1
else
echo "you are root user"
fi

Check_Install


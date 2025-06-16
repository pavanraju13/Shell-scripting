#!/bin/bash

#This is function for the repated code

USER_ID=$( id -u )
package=python3



Check_Install() {

     if [ $1 -ne 0 ]
     then 
     echo "python3 is installed successfully"
     else
     echo "python3 is not installed successfully".
     exit 1
     fi
}

dnf list installed python3
if [ $? -ne 0 ]
then
      echo "python3 is not installed.. Moving further to installation of python3"
      dnf install python3 -y
      Check_Install $? "python3"
    else
       echo -e "python3 is already installed.. \nThank you"
fi 



if [ $USER_ID -ne 0 ]
then 
echo "Please run the command with root privileges"
exit 1
else
echo "you are root user"
fi

Check_Install


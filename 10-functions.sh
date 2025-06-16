#!/bin/bash

#This is function for the repated code

USER_ID=$( id -u )



if [ $USER_ID -ne 0 ]
then 
echo "Please run the command with root privileges"
exit 1
else
echo "you are root user"
fi





Check_Install() {

     if [ $1 -eq 0 ]
     then 
     echo "$2 is installed successfully"
     else
     echo "$2 is not installed successfully".
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


dnf list installed mongod
if [ $? -ne 0 ]
then
      echo "mongod is not installed.. Moving further to installation of mongod"
      dnf install mongod -y
      Check_Install $? "mongod"
     
    else
       echo -e "mongod is already installed.. \nThank you"
fi 

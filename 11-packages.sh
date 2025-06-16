#!/bin/bash

# #You're asked to automate package installation on a RHEL-based system. Write a function check_and_install() that:

# Takes a package name

# Checks if it’s installed

# Installs it if not

# Prints a success or failure message

# ✅ Bonus: Extend the script to take multiple packages.



USER_ID=$( id -u )

if [ $USER_ID -eq 0 ]
then
echo "you have root access"
else
echo "you dont have the root access"
fi


check_install() {
    if [ $1 -eq 0 ]
    then
    echo "$2 is installed successfully"
    else
    echo "$2 is not installed successfully"
    exit 1
    fi
}
#checking the package is installed or not..

dnf list installed python3
if [ $? -eq 0 ]
then
echo "python3 is already installed ...nothing to do"
else
echo "Installing python3"
dnf install python3 -y
check_install $? "python3"
fi


dnf list installed nginx
if [ $? -eq 0 ]
then
echo "python3 is already installed ...nothing to do"
else
echo "Installing nginx"
dnf install nginx -y
check_install $? "nginx"
fi



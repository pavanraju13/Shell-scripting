##Write a shell script to simulate a simple login system. Ask the user to enter a username and password. 
##If the username is 'admin' and the password is 'secret123', print 'Login Successful'. Otherwise, print 'Access Denied'."


#!/bin/bash

echo "enter the username:"
read username

echo "Enter the password:"
read password

if [ "$username" = "admin" ] && [  "$password" = "secret123" ]
then
echo "Login successful"
else
echo "Login failed"
fi
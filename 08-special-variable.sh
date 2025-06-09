#!/bin/bash

#special varaiables

##Write a program that given number is less than 50

Number=$1

if [ $Number -lt 50 ]
then 
echo "given number is $Number is than 50".
else
echo "given number is $Number is not less than 50".
fi

echo "script name :$0"

echo "To see the  arguments passed: $@"

echo "Number of a arguments passed : $#"


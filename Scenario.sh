#Write a shell script to read three exam scores from the user and determine whether the student has passed or failed.
# A student passes only if all three scores are 40 or more. If passed, print the average score as well.

#!/bin/bash

Exam1=$1
Exam2=$2
Exam3=$3

if [ $Exam1 -gt 40 ]
then
echo "Passed in $Exam1 out of 100
else
echo "Failed in $Exam1 out of 100
fi

if [ $Exam2 -gt 40 ]
then
echo "Passed in $Exam2 out of 100
else
echo "Failed in $Exam2 out of 100
fi

if [ $Exam3 -gt 40 ]
then
echo "Passed in $Exam3 out of 100
else
echo "Failed in $Exam3 out of 100
fi

echo "The average of three exams score :$Average"
Average= $( $Exam1 + $Exam2 + $Exam3 )


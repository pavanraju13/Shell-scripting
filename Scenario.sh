#Write a shell script to read three exam scores from the user and determine whether the student has passed or failed.
# A student passes only if all three scores are 40 or more. If passed, print the average score as well.

#!/bin/bash

Exam1=$1
Exam2=$2
Exam3=$3

if [ $Exam1 -ge 40 ] && if [ $Exam2 -ge 40 ] && if [ $Exam3 -ge 40 ]
then
echo "Result:passed"
Total=$(( Exam1 + Exam2 + Exam3 ))
Average=$(( Toatl / 3 ))
echo "average score: $Average
fi

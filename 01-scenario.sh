##Write a shell script that reads an employee's basic salary and performance rating. If the rating is greater than or equal to 4 (on a scale of 5), 
##the employee gets a 20% bonus on the salary. Otherwise, no bonus. Print the total salary accordingly.
Basic_Salary=$1
Rating=$2
Bonus=20%

if [ $Rating -ge 4 ]
then
echo "Employee gets  $Bonus on the salary"
Total_salary=$(( $Basic_Salary + $Bonus ))
else
echo "No bonus"
fi


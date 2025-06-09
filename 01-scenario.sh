##Write a shell script that reads an employee's basic salary and performance rating. If the rating is greater than or equal to 4 (on a scale of 5), 
##the employee gets a 20% bonus on the salary. Otherwise, no bonus. Print the total salary accordingly.
 echo "Enter Basic_Salary:"
 read $Basic_Salary

echo "Enter the Rating:"
read $Rating


if [ $Rating -ge 4 ]
then
Bonus=$(( Basic_Salary * 20 / 100 ))
Salary=$(( Basic_Salary + Bonus ))
echo "Employee gets  $Bonus bonus on the salary"
echo "Total salary is $Salary"
else
echo "No bonus"
fi


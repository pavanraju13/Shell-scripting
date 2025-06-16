#  2. Directory & File Validation
# Scenario:
# Write a shell script function verify_dir() that:

# Takes a directory path as an argument

# Checks if it exists

# If not, creates it

# Logs the action to a file /var/log/script.log

# ✅ Bonus: Add timestamp logging.

#!/bin/bash

Dir=/root/pavan/raju
time_stamp=$(date +"%Y-%m-%d_%H-%M-%S")

verify_dir(){
if [ $1 -eq 0 ]
then 
echo "directory created successfully"
else
echo "directory created failure"
fi
}

if [ $Dir -eq 0 ]
then
echo "$Dir already exists"
else
echo "$Dir not exists ...creating"
    mkdir -p $Dir
    verify_dir $?
fi
  

  echo "$time_stamp"
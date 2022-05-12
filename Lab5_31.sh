#!/bin/bash

if [ $# -eq 0 ]; then
echo "Please enter name of the file to perform an audit"
exit 1
fi

user=$(stat $1 | cut -d ' ' -f 6)
date=$(stat $1 | cut -d '"' -f 2)
userid=$(id -u $user)

echo "The date of an edit was $date, the user who edited file was $user, he has an id of $userid." 

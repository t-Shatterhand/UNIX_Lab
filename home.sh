#!/bin/bash

result=$(cat /etc/passwd | grep $1 | cut -d ':' -f 6 | uniq)
if [ -z "$result" ]; then
echo "No such user!"
else
echo $result
fi

#!/bin/bash

if [[ "$#" == "1" ]]; then
echo "Plans on than day:"
cat plans | grep "$1" | cut -d ' ' -f 2

else
curr_day=$(date +%d)
curr_mon=$(date +%m)
curr_yr=$(date +%Y)
smallest_difference=10000
line_num=1
sm_line_num=100

while read line; do
day=10#$(echo $line | cut -d ' ' -f 1 | cut -d '_' -f 1)
month=10#$(echo $line | cut -d ' ' -f 1 | cut -d '_' -f 2)
year=$(echo $line | cut -d ' ' -f 1 | cut -d '_' -f 3)
difference=$(( ($year-$curr_yr) * 366 + ($month - $curr_mon) * 31 + ($day - $curr_day)))
if [[ $difference -lt $smallest_difference ]]; then
smallest_difference=$difference
sm_line_num=$line_num
fi
line_num=$(( line_num+1 ))
done < plans

echo "The nearest plan is:"
awk -v lineNum=$sm_line_num 'NR == lineNum' plans
fi

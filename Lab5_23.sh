#!/bin/bash

if [ $# -eq 0 ]; then
echo "No arguments passed!"
exit 1
fi

if [ $# -eq 1 ]; then
echo "Not enough arguments passed!"
exit 1
fi

if [ "$1" == "-s" ]; then
echo "$2" | awk '{print tolower($0)}'
exit 0
fi

if [ "$1" == "-l" ]; then
echo "$2" | awk '{print toupper($0)}'
exit 0
fi 

#!/bin/bash

if [ $# -eq 0 ]; then
echo "No arguments passed!"
exit 1
fi

for arg in "$@"; do
if ! [[ "$arg" =~ ^[0-9]+$ ]]; then
echo "Argument not an integer!"
else
res=$(( $arg*2 ))
echo "The doubled number $arg is $res."
fi
done

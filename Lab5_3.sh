#!/bin/bash

sum=$(ls -la $1 | grep ^d | wc -l)
ls -la $1 | grep ^d
echo "The total number of subdirectories is: $sum"

#!/bin/bash

if [ $# -eq 0 ]; then
echo "No parameters passed!"
exit 1
fi

if [ "$1" == "-l" ]; then
ls -l $HOME/.waste
exit 0
fi

if [ "$1" == "-r" ]; then
rm -rf $HOME/.waste/*
exit 0
fi

for arg in $@; do
eval "mv ./$arg $HOME/.waste/"
done

#!/bin/bash

while true
do
echo -e "Choose your destiny.\n1. Call double_it\n2. Call my_menu\n3. Exit program\nTo choose, enter the number of option:"
read num;
case $num in
  1) echo "Input arguments for double_it"
  read args;
  eval "bash double_it.sh $args";;
  2) echo "Calling my_menu. Again"
  eval "bash my_menu.sh";;
  3) echo "Exiting program"
  exit 0;;
  *) echo "Please, enter the valid option.";; 
esac
done

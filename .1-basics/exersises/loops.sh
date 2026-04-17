#!/bin/bash


# File finder
# Write a program to see if a file is present in the current direcotry
#
# TODO: Make a variable that takes an argument, then loop over all the files in this
# 	directory and print if the file is present or not


find_file=$1

for file in $(ls)
do
	if [[ $file == $find_file ]]; then 
		echo "Found" $find_file "in current direcotry"
		exit	
	fi
done

echo "Could not find" $find_file "in current directory"






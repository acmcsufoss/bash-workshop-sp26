#!/bin/bash


# This shell script checks if a user input an argument (Assuming name).
# -gt means Greater Than, you may be familiar with this from assembly
#
# TODO: Greet the user when they input their name.
# 	Tell the user if they forgot an input.


name=$1

if [ $# -gt 0 ]; then
	echo "Hello $name!"
else
	echo "No one has logged on"
fi

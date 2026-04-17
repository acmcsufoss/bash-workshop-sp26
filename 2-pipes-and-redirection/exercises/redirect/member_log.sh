#!/bin/bash

log="log.txt"

# The first argument will the the user's name
name=$1

# The second argument will be if the user is logging on or off
log_status=$2

if [[ $# -ne 2 ]]; then
	echo "ERROR: logging a member takes 2 inputs"
	exit 1 
fi

if [[ $log_status == "login" ]]; then
	echo "[    LOGIN     ] $name has logged in at $(date)" >> $log
elif [[ $log_status == "logout" ]]; then
	echo "[    LOGOUT    ] $name has logged out at $(date)" >> $log
else
	echo "ERROR: Cant read input properly"
	exit 1
fi

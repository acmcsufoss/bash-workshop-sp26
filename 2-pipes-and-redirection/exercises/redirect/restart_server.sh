#!/bin/bash

log="log.txt"

# The -f flag asks if a file exists
if [[ -f $log ]]; then
	echo "RESTARTING LOGS"
	# Extra, but sleep if the user wants to "CTRL+C" to cancel
	sleep 2
fi

echo "STARTING UP LOGS"
echo "[    SERVER    ] This is the beggning of logs" > "$log" 


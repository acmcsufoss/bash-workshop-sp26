#!/bin/bash

# Bob wants to eat some desert, but bob is on a calorie deficit. 
# Bob only has a set amount of calories left to eat today, what could Bob eat?
#
# TODO: Declare a variable that takes an argument. This argument is how many more calories Bob can eat.
# 	Then write a conditional statement for what desert(s) Bob can eat and print said desert(s) out.




desserts=("cookie" "cake" "apple_fritter" "honey_bun" "strawberries")
calories=(240 360 460 360 50)
limit=$1

# array[@] means all elements, ! gets the key index
for i in "${!desserts[@]}"
do
	name=${desserts[$i]}
	cals=${calories[$i]}
	if [[ $cals -le $limit ]]; then
		echo "Bob can eat $name: $cals"
	fi

done



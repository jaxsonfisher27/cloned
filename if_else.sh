#This block is the shell equivalent to a basic math greater than/less than function created in introductory java classes
#!/bin/bash

num_a=400
num_b=200

if [ $num_a -lt $num_b ]; then
	echo "$num_a is less than $num_b!"
else
	echo "$num_a is greater than $num_b!"
fi
#What I found interesting is that you have to declare then to start the else segement and fi to end the if/else function

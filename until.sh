#This block is a counter function that ticks down until a set value
#!/bin/bash

counter=4
until [ $counter -lt 3 ]; do
	let counter-=1
	echo $counter
done
#Whats interesting is the fact that until, do, and done are all defined and accepted conditional statements in shell

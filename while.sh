#Very similar to the counter function earlier in the project but this time counting upwards to a specified limit
#!/bin/bash

counter=2
while [ $counter -lt 3 ]; do
	let counter+=1
	echo $counter
done
#Same as the counter function, do and done are statements to start and finish the function

#This block is a greeting function to welcome the specified user and state the current day and bash version
#!/bin/bash

greeting="Welcome"
user=$(whoami)
day=$(date +%A)

echo "$greeting back $user! Today is $day, which is the best day of the entire week!"
echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"
#What's interesting is that $BASH_VERSION is a command in and of itself that will enable users to see the stated info

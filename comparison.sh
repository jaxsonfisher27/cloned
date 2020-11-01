# This purpose of this block is to compare two different strings and two different numbers to see if they are equal and to return an output stating two questions and outputting an answer based on the values
#!/bin/bash

string_a="UNIX"
string_b="GNU"

echo "Are $string_a and $string_b strings equal?"
[ $string_a = $string_b ]
echo $?

num_a=100
num_b=100

echo "Is $num_a equal to $num_b ?"
[ $num_a -eq $num_b ]
echo $?
#I found the use of $? intriguing as it outputs an answer based on the equation above, but it's very different in appearance in comparison to a java return ""; statement.

#This block outputs the user name and directory path
#!/bin/bash

function user_details {
	echo "User Name: $(whoami)"
	echo "Home Directory: $HOME"
}

user_details
user_details

#What I found interesting was that the function was performed twice to output both the username and directory

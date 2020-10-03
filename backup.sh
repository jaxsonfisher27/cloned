#!/usr/bin/bash

#This bash script is used to backup a user's home directory to /tmp/.

#This function holds the entire script for the backup to run, save for the execution code
$at the very bottom. 
function backup {

#If the $1 variable is zero, then the $user is set to the user's username, else it is set to
#$1.
	if [ -z $1 ]; then
		user=$(whoami)
	else
		if [ ! -d "/home/$1" ]; then
			echo "Requested $1 user home directory doesn't exist."
			exit 1
		fi
		user=$1
	fi

	#I fiddled with the code here to make it fit my own computer rather than the code the guide uses. 
	input=/c/Users/$user
	output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

	#The function total_files reports a total number of files for a given directory.
	function total_files {
		find $1 | wc -1
	}

	#The function total_directories reports a total number of directories
	#for a given directory.
	function total_directories {
		find $1 -type d | wc -1
	}

	#This function reports the archived directories
	function total_archived_directories {
		tar -tzf $1 | grep /$ | wc -1
	}
	
	#This function reports the archived files
	function total_archived_files {
		tar -tzf $1 | grep -v /$ | wc -1
	}

	tar -czf $output $input 2> /dev/null

	src_files=$(total_files $input)
	src_directories=$(total_directories $input)

	arch_files=$(total_archived_files $output)
	arch_directories=$(total_archived_directories $output)

	#this echos the information regarding the backup to the screen for the 
	#user to see.
	echo "########## $user ##########"
	echo "Files to be included: $src_files"
	echo "Directories to be included: $src_directories"
	echo "Files archived: $arch_files"
	echo "Directories archived: $arch_directories"

	#if the number of files are equal to the number of archived files, then
	#the backup is complete, else it fails. 
	if [ $src_files -eq $arch_files ]; then
		echo "Backup of $input completed!"
		echo "Details about the output backup file:"
		ls -l $output
	else
		echo "Backup of $input failed!"
	fi
}
#Executes the backup script.
for directory in $*; do
	backup $directory
done;

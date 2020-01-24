#!/bin/zsh

while getopts ":hu:" option
do
	case $option
		in
		h) printf "This script is made to delete permanently a user from your computer.\nJust use the script and add the name of the user you want to delete as the first and only argument\nUsage : %s [-h]  [user]" $option;;
		u) echo userdel -f $OPTARG $>/dev/null
			rm -rf /home/$OPTARG
			;;
		?) printf "Not an option: -%s" $option;;
	esac
done

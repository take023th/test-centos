#! /bin/bash

# exam 6

select com in "list" "delete" "rename" "show" "exit"
do
	case $com in
		"list" )
			ls;;
		"delete")
			ls
			read -p "Enter file name you want to delete: "file_name
			if [ -f $file_name ]; then
				rm $file_name
			fi;;
		"rename")
			ls
			read -p "Enter file name you want to rename: " file_name
			read -p "Enter new file name: " new_file_name
			if [ -f $file_name ]; then
				mv  $file_name $new_file_name
			fi;;
		"show")
			ls
			read -p "Enter file name you want to look: " file_name
			cat $file_name;;
		"exit")
			break;;
		esac
done

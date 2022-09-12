#!/bin/sh

section=6
auditNo="6.2.6"
auditName="Ensure users' home directories permissions are 750 or more restrictive"

awk -F: '($1!~/(halt|sync|shutdown)/ && $7!~/^(\/usr)?\/sbin\/nologin(\/)?$/ && $7!~/(\/usr)?\/bin\/false(\/)?$/) {print $1 " " $6}' /etc/passwd | while read -r user dir; do
	if [ ! -d "$dir" ]; then 
		echo "User: \"$user\" home directory: \"$dir\" doesn't exist" 
	else
		dirperm=$(stat -L -c "%A" "$dir")
		if [ "$(echo "$dirperm" | cut -c6)" != "-" ] || [ "$(echo "$dirperm" | cut -c8)" != "-" ] || [ "$(echo "$dirperm" | cut -c9)" != "-" ] || [ "$(echo "$dirperm" | cut -c10)" != "-" ]; then
		echo "User: \"$user\" home directory: \"$dir\" has permissions: \"$(stat -L -c "%a" "$dir")\"" >> 6-2-6-output.txt
		fi 
	fi 
done

cmd= $(grep User 6-2-6-output.txt | 2> \dev\null)

if  [ -z "$cmd" ]
then
	auditres="\033[32mPass\033[m"
else 
	auditres="\033[31mFail\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

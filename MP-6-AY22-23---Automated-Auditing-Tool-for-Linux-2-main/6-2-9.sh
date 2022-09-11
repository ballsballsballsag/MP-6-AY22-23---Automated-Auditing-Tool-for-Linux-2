#!/bin/sh

section=6
auditNo="6.2.9"
auditName="Ensure no users have .forward files"

cmd= `awk -F: '($1!~/(root|halt|sync|shutdown)/ && $7!~/^(\/usr)?\/sbin\/nologin(\/)?$/ && $7!~/(\/usr)?\/bin\/false(\/)?$/) { 
print $1 " " $6 }' /etc/passwd | while read -r user dir; do
	if [ -d "$dir" ]; then
		file="$dir/.forward"
		if [ ! -h "$file" ] && [ -f "$file" ]; then
			echo "User: \"$user\" file: \"$file\" exists"
		fi
	fi
done`

if [ "$cmd" = "" ]; 
then 
	auditres="\033[32mPass\033[m"
else
	auditres="\033[31mFail\033[m"
fi 

echo "${auditNo} \t${auditName} \t\t\t\t\t\t[${auditres}]"

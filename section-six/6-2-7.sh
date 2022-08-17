#!/bin/sh

section=6
auditNo="6.2.7"
auditName="Ensure users' dot files are not group or world writable"
auditres="\033[31mFAIL\033[m"

cmd= `awk -F: '($1!~/(halt|sync|shutdown)/ && $7!~/^(\/usr)?\/sbin\/nologin(\/)?$/&& $7!~/(\/usr)?\/bin\/false(\/)?$/) { print $1 " " $6 }' /etc/passwd | while read -r user dir; do
	if [ -d "$dir" ]; then
		for file in "$dir"/.*; do
			if [ ! -h "$file" ] && [ -f "$file" ]; then
				fileperm=$(stat -L -c "%A" "$file") 
				if [ "$(echo "$fileperm" | cut -c6)" != "-" ] || [ "$(echo "$fileperm" | cut -c9)" != "-" ]; then
					echo "User: \"$user\" file: \"$file\" has permissions: \"$fileperm\""
				fi 
			fi
		done
	fi
done`

if [ "$cmd" = "" ]; 
then 
auditres="\033[32mPASS\033[m"
fi 

echo "${auditNo} \t${auditName} \t\t\t[${auditres}]"

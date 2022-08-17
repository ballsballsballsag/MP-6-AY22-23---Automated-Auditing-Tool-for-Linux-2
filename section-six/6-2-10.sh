#!/bin/sh

section=6
auditNo="6.2.10"
auditName="Ensure no users have .rhosts files"
auditres="\033[31mFAIL\033[m"

awk -F: '($1!~/(root|halt|sync|shutdown)/ && $7!~/^(\/usr)?\/sbin\/nologin(\/)?$/ && $7!~/(\/usr)?\/bin\/false(\/)?$/) {
print $1 " " $6 }' /etc/passwd | while read -r user dir; do
	if [ -d "$dir" ]; then
		file="$dir/.rhosts"
		if [ ! -h "$file" ] && [ -f "$file" ]; then
			echo "User: \"$user\" file: \"$file\" exists"
		fi
	fi
done

if [ "$cmd" = "" ]; 
then 
auditres="\033[32mPASS\033[m"
fi 

echo "${auditNo} \t${auditName} \t\t\t\t\t\t[${auditres}]"

#!/bin/sh

section=6
auditNo="6.2.8"
auditName="Ensure no users have .netrc files"

cmd= `awk -F: '($1!~/(halt|sync|shutdown)/ && $7!~/^(\/usr)?\/sbin\/nologin(\/)?$/&& $7!~/(\/usr)?\/bin\/false(\/)?$/) { print $1 " " $6 }' /etc/passwd | while
read -r user dir; do
	if [ -d "$dir" ]; then
		file="$dir/.netrc"
		if [ ! -h "$file" ] && [ -f "$file" ]; then
			if stat -L -c "%A" "$file" | cut -c4-10 | grep -Eq '[^-]+'; then
				echo "FAILED: User: \"$user\" file: \"$file\" exists with
permissions: \"$(stat -L -c "%a" "$file")\", remove file or excessive 
permissions"
			else 
				echo "WARNING: User: \"$user\" file: \"$file\" exists with
permissions: \"$(stat -L -c "%a" "$file")\", remove file unless required"
			fi
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

#!/bin/sh 

section=6
auditNo="6.2.4"
auditName="Ensure all groups in /etc/passwd exist in /etc/group"
auditres="\033[31mFAIL\033[m"

cmd= `awk -F: '($1!~/(halt|sync|shutdown|nfsnobody)/ && $7!~/^(\/usr)?\/sbin\/nologin(\/)?$/ && 
$7!~/(\/usr)?\/bin\/false(\/)?$/) { 
print $1 " " $6 }' /etc/passwd | while read -r user dir; do 
	if [ ! -d "$dir" ]; then 
		echo "User: \"$user\" home directory: \"$dir\" does not 
exist." 
	fi 
done`


if [ "$cmd" = "" ] 
then 
auditres="\033[32mPASS\033[m"
else
auditres="\033[31mFAIL\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t[${auditres}]"

#!/bin/sh

section=6
auditNo="6.2.13"
auditName="Ensure no duplicate UIDs exist"
auditres="\033[31mFAIL\033[m"

cmd= $(cut -f3 -d":" /etc/passwd | sort -n | uniq -c | while read x ; do 
	[ -z "$x" ] && break 
	set - $x 
	if [ $1 -gt 1 ]; then 
		users=$(awk -F: '($3 == n) { print $1 }' n=$2 /etc/passwd | xargs) 
		echo "Duplicate UID ($2): $users" 
	fi 
done)

if [ "$cmd" = "" ]; 
then 
auditres="\033[32mPASS\033[m"
fi 

echo "${auditNo} \t${auditName} \t\t\t\t\t\t\t[${auditres}]"

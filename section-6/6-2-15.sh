#!/bin/sh

section=6
auditNo="6.2.15"
auditName="Ensure no duplicate user names exist"

cmd= $(cut -d: -f1 /etc/passwd | sort | uniq -d | while read -r x; do 
	echo "Duplicate login name $x in /etc/passwd" 
done)

if [ "$cmd" = "" ]
then 
	auditres="\033[32mPass\033[m"
else
	auditres="\033[31mFail\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t[${auditres}]"

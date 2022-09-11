#!/bin/sh

section=6
auditNo="6.2.16"
auditName="Ensure no duplicate group names exist"
auditres="\033[31mFail\033[m"

cmd= $(cut -d: -f1 /etc/group | sort | uniq -d | while read -r x; do 
	echo "Duplicate group name $x in /etc/group" 
done)

if [ "$cmd" = "" ]
then 
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t[${auditres}]"

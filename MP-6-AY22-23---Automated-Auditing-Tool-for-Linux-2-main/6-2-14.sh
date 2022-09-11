#!/bin/sh

section=6
auditNo="6.2.14"
auditName="Ensure no duplicate GIDs exist"

cmd= $(cut -d: -f3 /etc/group | sort | uniq -d | while read x ; do 
	echo "Duplicate GID ($x) in /etc/group" 
done)

if [ "$cmd" = "" ]
then 
	auditres="\033[32mPass\033[m"
else
	auditres="\033[31mFail\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t\t[${auditres}]"

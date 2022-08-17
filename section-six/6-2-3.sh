#!/bin/sh

section=6
auditNo="6.2.3"
auditName="Ensure all groups in /etc/passwd exist in /etc/group"
auditres="\033[31mFAIL\033[m"

cmd=$(for i in $(cut -s -d: -f4 /etc/passwd | sort -u ); do
	grep -q -P "^.*?:[^:]*:$i:" /etc/group
	if [ $? -ne 0 ]; then 
	  echo "Group $i is referenced by /etc/passwd but does not exist in 
	  /etc/group" 
	   fi 
     done)
     
if [ $cmd="" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t[${auditres}]"

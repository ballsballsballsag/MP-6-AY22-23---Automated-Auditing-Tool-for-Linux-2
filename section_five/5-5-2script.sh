#!/bin/bash
section=5
auditno="5.5.2"
auditname="Ensure system accounts are secured"

cmdres=$(sudo awk -F: '$1!~/(root|sync|shutdown|halt|^\+)/ && $3<'"$(awk '/^\s*UID_MIN/{print $2}' /etc/login.defs)"' && $7!~/((\/usr)?\/sbin\/nologin)/ && $7!~/(\/bin)?\/false/ {print}' /etc/passwd 2> /dev/null)

if [[ "$cmdres" != "" ]]
then
        auditres="\033[31mFail\033[m"
else
	cmdres=$(awk -F: '($1!~/(root|^\+)/ && $3<'"$(awk '/^\s*UID_MIN/{print $2}' /etc/login.defs)"') {print $1}' /etc/passwd 2> /dev/null| xargs -I '{}' passwd -S '{}' 2> /dev/null| awk '($2!~/LK?/) {print $1}')
	if [[ "$cmdres" != "" ]]
	then
		auditres="\033[31mFail\033[m"
	else
		auditres="\033[32mPass\033[m"
	fi
fi

echo -e "${auditno} ${auditname} \t\t\t[${auditres}]"

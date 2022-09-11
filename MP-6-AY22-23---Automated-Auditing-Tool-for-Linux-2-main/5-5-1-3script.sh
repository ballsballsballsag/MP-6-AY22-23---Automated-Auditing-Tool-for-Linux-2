#!/bin/bash
section=5
auditno="5.5.1.3"
auditname="Ensure password expiration warning days is 7 or more"

cmdres=$(grep PASS_WARN_AGE /etc/login.defs)

if [[ "$cmdres" = *"7"* ]]
then
        auditres="\033[31mFail\033[m"
else
	cmdres=$(sudo awk -F: '(/^[^:]+:[^!*]/ && $6<7){print $1 " " $6}' /etc/shadow 2> /dev/null)
	if [[ "$cmdres" != "" ]]
	then
		auditres="\033[31mFail\033[m"
	else
		auditres="\033[32mPass\033[m"
	fi
fi

echo -e "${auditno} ${auditname} \t[${auditres}]"

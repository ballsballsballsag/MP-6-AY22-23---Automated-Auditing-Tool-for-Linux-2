#!/bin/bash
section=5
auditno="5.5.1.2"
auditname="Ensure password expiration is 365 days or less"

cmdres=$(grep PASS_MAX_DAYS /etc/login.defs)

if [[ "$cmdres" = *"0"* ]]
then
        auditres="\033[31mFail\033[m"
else
	cmdres=$(sudo awk -F : '(/^[^:]+:[^!*]/ && $4 < 1){print $1 " " $4}' /etc/shadow)
	if [[ "$cmdres" != "" ]]
	then
		auditres="\033[31mFail\033[m"
	else
		auditres="\033[32mPass\033[m"
	fi
fi

echo -e "${auditno} ${auditname} \t\t[${auditres}]"

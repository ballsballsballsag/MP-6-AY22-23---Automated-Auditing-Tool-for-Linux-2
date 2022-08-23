#!/bin/bash
section=5
auditno="5.5.1.4"
auditname="Ensure inactive password lock is 30 days or less"

cmdres=$(useradd -D | grep INACTIVE)

if [[ "$cmdres" = *"0"* ]]
then
        auditres="\033[31mFail\033[m"
else
	cmdres=$(awk -F: '(/^[^:]+:[^!*]/ && ($7~/(\s*|-1)/ || $7>30)){print $1 " " $7}' /etc/shadow 2> /dev/null)
	if [[ "$cmdres" != "" ]]
	then
		auditres="\033[31mFail\033[m"
	else
		auditres="\033[32mPass\033[m"
	fi
fi

echo -e "${auditno} ${auditname} \t[${auditres}]"

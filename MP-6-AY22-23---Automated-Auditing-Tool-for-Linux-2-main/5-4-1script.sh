#!/bin/sh
section=5
auditno="5.4.1"
auditname="Ensure password creation requirements are configured"

cmdres=$(grep '^\s*minlen\s*' /etc/security/pwquality.conf)
if [ "$cmdres" = *"minlen ="* ]
then
	cmdres=$(grep '^\s*minlen\s*' /etc/security/pwquality.conf)
	if [ "$cmdres" != *"minclass ="* ]
	then
        	auditres="\033[31mFail\033[m"
	else
		auditres="\033[32mPass\033[m"
	fi
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t[${auditres}]"

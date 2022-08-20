#!/bin/sh
section=1
auditno="1.1.4"
auditname="Ensure nosuid option set on /tmp partition"

cmd1=$(findmnt -n /tmp | grep -v nosuid)


if [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"

else
	auditres="\033[31mFail\033[m"

fi
echo "${auditno} \t\t${auditname} \t\t\t\t[${auditres}]"

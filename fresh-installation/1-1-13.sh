#!/bin/sh
section=1
auditno="1.1.13"
auditname="Ensure /var/tmp partition includes the nosuid option"

cmd1=$(findmnt -n /var/tmp | grep -v nosuid)


if [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"


else
	 auditres="\033[31mFail\033[m"

fi
echo "${auditno} \t\t${auditname} \t\t\t[${auditres}]"

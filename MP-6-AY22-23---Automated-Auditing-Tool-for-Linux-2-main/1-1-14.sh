#!/bin/sh
section=1
auditno="1.1.14"
auditname="Ensure /var/tmp partition includes the noexec option"

cmd1=$(findmnt -n /var/tmp | grep -v noexec)


if [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"


else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t[${auditres}]"

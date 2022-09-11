#!/bin/sh
section=1
auditno="1.1.18"
auditname="Ensure /home partition includes the nodev option"

cmd1=$(findmnt -n /home | grep -v nodev)


if [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"

else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t[${auditres}]"

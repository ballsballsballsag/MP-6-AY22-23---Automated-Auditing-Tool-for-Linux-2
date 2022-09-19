#!/bin/sh
section=6
auditNo="6.2.1"
auditName="Ensure accounts in /etc/passwd use shadowed passwords"

cmd=$(awk -F: '($2 != "x" ) { print $1 " is not set to shadowed passwords "}' /etc/passwd | grep 2> \dev\null)

if  [ "$cmd" = "" ] 
then
	auditres="\033[32mPass\033[m"
else
	auditres="\033[31mFail\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t[${auditres}]"

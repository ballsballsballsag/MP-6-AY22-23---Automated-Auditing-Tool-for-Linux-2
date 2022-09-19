#!/bin/sh
section=6
auditNo="6.2.2"
auditName="Ensure password fields are not empty"

cmd=$(sudo awk -F: '($2 == "" ) { print $1 " does not have a password "}' /etc/shadow | grep 2> \dev\null)
auditres="\033[31mFail\033[m"
if  [ "$cmd" = "" ] 
then
	auditres="\033[32mPass\033[m"
else 
	auditres="\033[31mFail\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t[${auditres}]"

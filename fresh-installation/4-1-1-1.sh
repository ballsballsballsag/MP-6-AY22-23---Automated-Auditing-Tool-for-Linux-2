#!/bin/sh

section=4
auditNo="4.1.1.1"
auditName="Ensure auditd is installed"

cmd=$(dpkg-query -l | grep auditd 2> \dev\null)
if  [ ! -z "$cmd" ]
then
	auditres="\033[31mFail\033[m"

else
	auditres="\033[32mPass\033[m"

fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t\t\t\t[${auditres}]"

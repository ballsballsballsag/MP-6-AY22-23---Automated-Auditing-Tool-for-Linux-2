#!/bin/sh

section=4
auditNo="4.1.1.2"
auditName="Ensure auditd service is enabled"

cmd=$(systemctl is-enabled auditd | grep 2> \dev\null)
auditres="\033[31mFail\033[m"
correct="enabled" 
if  [ "$cmd" = "$correct" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t\t\t[${auditres}]"

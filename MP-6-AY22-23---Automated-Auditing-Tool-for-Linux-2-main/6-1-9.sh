#!/bin/sh

section=6
auditNo="6.1.9"
auditName="Ensure permissions on /etc/gshadow- are configured"

cmd=$(stat /etc/gshadow | grep "(0640/-rw-r-----)" | grep 2> \dev\null)
auditres="\033[32mPass\033[m"
if  [ "$cmd" = "" ] 
then
auditres="\033[31mFail\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

#!/bin/sh

section=6
auditNo="6.1.4"
auditName="Ensure permissions on /etc/group are configured"

cmd=$(stat /etc/group | grep "(0644/-rw-r--r--)")
auditres="\033[32mPass\033[m"
if  [ "$cmd" = "" ] 
then
auditres="\033[31mFail\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

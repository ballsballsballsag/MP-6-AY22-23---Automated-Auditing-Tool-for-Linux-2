#!/bin/sh

section=4
auditNo="4.2.3"
auditName="Ensure permissions on all logfiles are configured"

cmd=$(find /var/log -type f -ls | grep 2> \dev\null)
auditres="\033[31mFail\033[m"
if  [ "$cmd" = "" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

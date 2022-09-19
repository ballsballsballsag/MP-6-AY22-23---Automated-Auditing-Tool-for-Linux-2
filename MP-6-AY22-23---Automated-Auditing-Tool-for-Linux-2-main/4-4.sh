#!/bin/sh

section=4
auditNo="4.4"
auditName="Ensure logrotate assigns appropriate permissions"

cmd=$(grep -Es "^\s*create\s+\S+" /etc/logrotate.conf /etc/logrotate.d/* | grep -E -v "\s(0)?[0-6][04]0\s" | grep 2> \dev\null)
auditres="\033[31mFail\033[m"
if  [ "$cmd" = null ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

#!/bin/sh

section=4
auditNo="4.2.3"
auditName="Ensure permissions on all logfiles are configured"

cmd=$(find /var/log -type f -ls)
auditres="\033[31mFAIL\033[m"
if  [ "$cmd" == "" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

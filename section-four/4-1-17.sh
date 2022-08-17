#!/bin/sh

section=4
auditNo="4.1.17"
auditName="Ensure the audit configuration is immutable"

cmd1=$(grep modules /etc/audit/rules.d/*.rules)
auditres="\033[31mFAIL\033[m"
correct1="-e 2"
if  [ "$cmd1" = "$correct1" ] 
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

#!/bin/sh

section=4
auditNo="4.1.2.1"
auditName="Ensure audit log storage size is configured"

cmd=$(grep max_log_file /etc/audit/auditd.conf)
auditres="\033[31mFAIL\033[m"
correct="max_log_file = <MB>" 
if  [ "$cmd" = "$correct" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t\t[${auditres}]"

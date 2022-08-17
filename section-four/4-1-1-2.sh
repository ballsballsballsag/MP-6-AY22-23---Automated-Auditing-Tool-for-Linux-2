#!/bin/sh

section=4
auditNo="4.1.1.2"
auditName="Ensure auditd service is enabled"

cmd=$(systemctl is-enabled auditd)
auditres="\033[31mFAIL\033[m"
correct="enabled" 
if  [ "$cmd" = "$correct" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t\t\t[${auditres}]"

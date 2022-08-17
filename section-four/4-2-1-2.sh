#!/bin/sh

section=4
auditNo="4.2.1.2"
auditName="Ensure rsyslog service is enabled"

cmd=$(systemctl is-enabled rsyslog)
auditres="\033[31mFAIL\033[m"
correct="enabled" 
if  [ "$cmd" = "$correct" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

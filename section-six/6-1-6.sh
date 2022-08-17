#!/bin/sh

section=6
auditNo="6.1.6"
auditName="Ensure permissions on /etc/shadow are configured"

cmd=$(stat /etc/shadow | grep "(0640/-rw-r-----)")
auditres="\033[32mPASS\033[m"
if  [ "$cmd" = "" ] 
then
auditres="\033[31mFAIL\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

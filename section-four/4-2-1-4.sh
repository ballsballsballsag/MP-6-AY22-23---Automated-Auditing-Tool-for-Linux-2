#!/bin/sh

section=4
auditNo="4.2.1.4"
auditName="Ensure rsyslog default file permissions configured"

cmd=$(grep ^\s*\$FileCreateMode /etc/rsyslog.conf /etc/rsyslog.d/*.conf | grep -v "FileCreateMode 0640")
auditres="\033[31mFAIL\033[m"
if  [ -z "$cmd" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

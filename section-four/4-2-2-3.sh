#!/bin/sh

section=4
auditNo="4.2.2.3"
auditName="Ensure journald is configured to write logfiles to persistent disk"

cmd=$(grep -e Compress /etc/systemd/journald.conf | grep -v "Storage=persistent")
auditres="\033[31mFAIL\033[m"
if  [ -z "$cmd" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

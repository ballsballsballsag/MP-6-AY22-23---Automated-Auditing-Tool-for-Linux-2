#!/bin/sh

section=4
auditNo="4.1.1.4"
auditName="Ensure audit_backlog_limit is sufficient       "

cmd=$(grep "^\s*linux" /boot/grub/grub.cfg | grep -v "audit_backlog_limit=")
cmd1=$(grep "audit_backlog_limit=" /boot/grub/grub.cfg)
auditres="\033[31mFAIL\033[m"
correct="/boot/grub/grub.cfg" 
if  [ -z "$cmd" ] && [ "$cmd1" = "$correct" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t[${auditres}]"

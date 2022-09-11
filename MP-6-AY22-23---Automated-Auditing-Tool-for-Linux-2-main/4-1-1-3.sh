#!/bin/sh

section=4
auditNo="4.1.1.3"
auditName="Ensure auditing for processes that start prior to auditd is enabled"

cmd=$(grep "^\s*linux" /boot/grub/grub.cfg | grep -v "audit=1")
auditres="\033[31mFail\033[m"
if  [ -z "$cmd" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t[${auditres}]"

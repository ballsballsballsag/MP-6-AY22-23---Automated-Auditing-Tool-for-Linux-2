#!/bin/sh

section=4
auditNo="4.1.15"
auditName="Ensure system administrator command executions (sudo) are collected"

cmd1=$(grep actions /etc/audit/rules.d/*.rules 2> \dev\null)
cmd2=$(auditctl -l 2> \dev\null | grep actions)
auditres="\033[31mFail\033[m"
correct1="/etc/audit/rules.d/cis.rules:-a exit,always -F arch=b32 -C euid!=uid -F euid=0 -Fauid>=1000 -F auid!=4294967295 -S execve -k actions"
correct2="-a always,exit -F arch=b32 -S execve -C uid!=euid -F euid=0 -F auid>=1000 -F auid!=-1 -F key=actions"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

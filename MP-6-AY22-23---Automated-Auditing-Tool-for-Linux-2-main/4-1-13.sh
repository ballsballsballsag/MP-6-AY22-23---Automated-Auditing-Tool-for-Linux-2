#!/bin/sh

section=4
auditNo="4.1.13"
auditName="Ensure file deletion events by users are collected"

cmd1=$(grep delete /etc/audit/rules.d/*.rules 2> \dev\null)
cmd2=$(auditctl -l | grep delete 2> \dev\null)
auditres="\033[31mFail\033[m"
correct1="-a always,exit -F arch=b32 -S unlink -S unlinkat -S rename -S renameat -F auid>=1000 -F auid!=4294967295 -k delete"
correct2="-a always,exit -F arch=b32 -S unlink,rename,unlinkat,renameat -F auid>=1000 -F auid!=-1 -F key=delete"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

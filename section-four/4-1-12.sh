#!/bin/sh

section=4
auditNo="4.1.12"
auditName="Ensure successful file system mounts are collected"

cmd1=$(grep mounts /etc/audit/rules.d/*.rules)
cmd2=$(auditctl -l | grep mounts)
auditres="\033[31mFAIL\033[m"
correct1="-a always,exit -F arch=b32 -S mount -F auid>=1000 -F auid!=4294967295 -k mounts"
correct2="a always,exit -F arch=b32 -S mount -F auid>=1000 -F auid!=-1 -F key=mounts"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

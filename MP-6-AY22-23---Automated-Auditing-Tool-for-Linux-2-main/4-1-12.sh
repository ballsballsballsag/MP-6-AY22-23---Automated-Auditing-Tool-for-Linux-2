#!/bin/sh

section=4
auditNo="4.1.12"
auditName="Ensure successful file system mounts are collected"

cmd1=$(grep mounts /etc/audit/rules.d/*.rules 2> \dev\null)
cmd2=$(auditctl -l 2> \dev\null | grep mounts)
auditres="\033[31mFail\033[m"
correct1="-a always,exit -F arch=b32 -S mount -F auid>=1000 -F auid!=4294967295 -k mounts"
correct2="a always,exit -F arch=b32 -S mount -F auid>=1000 -F auid!=-1 -F key=mounts"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

#!/bin/sh

section=4
auditNo="4.1.3"
auditName="Ensure events that modify date and time information are collected"

cmd1=$(grep time-change /etc/audit/rules.d/*.rules)
cmd2=$(auditctl -l | grep time-change)
auditres="\033[31mFAIL\033[m"
correct1="-a always,exit -F arch=b32 -S adjtimex -S settimeofday -S stime -k time-change -a always,exit -F arch=b32 -S clock_settime -k time-change -w /etc/localtime -p wa -k time-change"
correct2="-a always,exit -F arch=b32 -S stime,settimeofday,adjtimex -F key=time-change -a always,exit -F arch=b32 -S clock_settime -F key=time-change -w /etc/localtime -p wa -k time-change"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t\t${auditName} \t\t\t\t[${auditres}]"

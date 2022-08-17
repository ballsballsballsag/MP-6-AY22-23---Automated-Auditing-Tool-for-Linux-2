#!/bin/sh

section=4
auditNo="4.1.5"
auditName="Ensure events that modify the system's network environment are collected"

cmd1=$(grep system-locale /etc/audit/rules.d/*.rules)
cmd2=$(auditctl -l | grep system-locale)
auditres="\033[31mFAIL\033[m"
correct1="-a always,exit -F arch=b32 -S sethostname -S setdomainname -k system-locale -w /etc/issue -p wa -k system-locale -w /etc/issue.net -p wa -k system-locale -w /etc/hosts -p wa -k system-locale -w /etc/network -p wa -k system-locale"
correct2="-a always,exit -F arch=b32 -S sethostname,setdomainname -F key=system-locale -w /etc/issue -p wa -k system-locale -w /etc/issue.net -p wa -k system-locale -w /etc/hosts -p wa -k system-locale -w /etc/network -p wa -k system-locale"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

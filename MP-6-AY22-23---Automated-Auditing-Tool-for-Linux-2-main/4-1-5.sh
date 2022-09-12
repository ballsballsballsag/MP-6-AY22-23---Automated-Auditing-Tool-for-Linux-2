#!/bin/sh

section=4
auditNo="4.1.5"
auditName="Ensure events that modify the system's network environment are collected"

cmd1=$(grep system-locale /etc/audit/rules.d/*.rules 2> \dev\null)
cmd2=$(auditctl -l 2> \dev\null | grep system-locale 2> \dev\null)
auditres="\033[31mFail\033[m"
correct1="-a always,exit -F arch=b32 -S sethostname -S setdomainname -k system-locale -w /etc/issue -p wa -k system-locale -w /etc/issue.net -p wa -k system-locale -w /etc/hosts -p wa -k system-locale -w /etc/network -p wa -k system-locale"
correct2="-a always,exit -F arch=b32 -S sethostname,setdomainname -F key=system-locale -w /etc/issue -p wa -k system-locale -w /etc/issue.net -p wa -k system-locale -w /etc/hosts -p wa -k system-locale -w /etc/network -p wa -k system-locale"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

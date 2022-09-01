#!/bin/sh

section=4
auditNo="4.1.6"
auditName="Ensure events that modify the system's Mandatory Access Controls are collected"

cmd1=$(grep MAC-policy /etc/audit/rules.d/*.rules)
cmd2=$(auditctl -l | grep MAC-policy)
auditres="\033[31mFail\033[m"
correct1="-w /etc/apparmor/ -p wa -k MAC-policy -w /etc/apparmor.d/ -p wa -k MAC-policy"
correct2="-w /etc/apparmor/ -p wa -k MAC-policy -w /etc/apparmor.d/ -p wa -k MAC-policy"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

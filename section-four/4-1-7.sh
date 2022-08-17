#!/bin/sh

section=4
auditNo="4.1.7"
auditName="Ensure login and logout events are collected"

cmd1=$(grep logins /etc/audit/rules.d/*.rules)
cmd2=$(auditctl -l | grep logins)
auditres="\033[31mFAIL\033[m"
correct1="-w /var/log/faillog -p wa -k logins -w /var/log/lastlog -p wa -k logins -w /var/log/tallylog -p wa -k logins"
correct2="-w /var/log/faillog -p wa -k logins -w /var/log/lastlog -p wa -k logins -w /var/log/tallylog -p wa -k logins"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

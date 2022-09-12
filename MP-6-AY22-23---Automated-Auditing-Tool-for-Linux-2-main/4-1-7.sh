#!/bin/sh

section=4
auditNo="4.1.7"
auditName="Ensure login and logout events are collected"

cmd1=$(grep logins /etc/audit/rules.d/*.rules 2> \dev\null)
cmd2=$(auditctl -l 2> \dev\null | grep logins)
auditres="\033[31mFail\033[m"
correct1="-w /var/log/faillog -p wa -k logins -w /var/log/lastlog -p wa -k logins -w /var/log/tallylog -p wa -k logins"
correct2="-w /var/log/faillog -p wa -k logins -w /var/log/lastlog -p wa -k logins -w /var/log/tallylog -p wa -k logins"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t\t${auditName} \t\t\t\t\t\t\t[${auditres}]"

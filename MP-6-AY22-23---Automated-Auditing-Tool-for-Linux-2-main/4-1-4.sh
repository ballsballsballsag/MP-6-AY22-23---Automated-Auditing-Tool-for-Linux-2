#!/bin/sh

section=4
auditNo="4.1.4"
auditName="Ensure events that modify user/group information are collected"

cmd1=$(grep identity /etc/audit/rules.d/*.rules 2> \dev\null)
cmd2=$(auditctl -l 2> \dev\null | grep identity 2> \dev\null)
auditres="\033[31mFail\033[m"
correct1="-w /etc/group -p wa -k identity -w /etc/passwd -p wa -k identity -w /etc/gshadow -p wa -k identity -w /etc/shadow -p wa -k identity -w /etc/security/opasswd -p wa -k identity"
correct2="-w /etc/group -p wa -k identity -w /etc/passwd -p wa -k identity -w /etc/gshadow -p wa -k identity -w /etc/shadow -p wa -k identity -w /etc/security/opasswd -p wa -k identity"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t\t${auditName} \t\t\t\t\t[${auditres}]"

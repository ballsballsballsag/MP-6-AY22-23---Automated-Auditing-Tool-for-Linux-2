#!/bin/sh

section=4
auditNo="4.1.4"
auditName="Ensure events that modify user/group information are collected"

cmd1=$(grep identity /etc/audit/rules.d/*.rules)
cmd2=$(auditctl -l | grep identity)
auditres="\033[31mFAIL\033[m"
correct1="-w /etc/group -p wa -k identity -w /etc/passwd -p wa -k identity -w /etc/gshadow -p wa -k identity -w /etc/shadow -p wa -k identity -w /etc/security/opasswd -p wa -k identity"
correct2="-w /etc/group -p wa -k identity -w /etc/passwd -p wa -k identity -w /etc/gshadow -p wa -k identity -w /etc/shadow -p wa -k identity -w /etc/security/opasswd -p wa -k identity"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

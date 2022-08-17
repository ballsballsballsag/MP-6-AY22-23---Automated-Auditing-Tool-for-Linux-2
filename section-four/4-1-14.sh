#!/bin/sh

section=4
auditNo="4.1.14"
auditName="Ensure changes to system administration scope (sudoers) is collected"

cmd1=$(grep scope /etc/audit/rules.d/*.rules)
cmd2=$(auditctl -l | grep scope)
auditres="\033[31mFAIL\033[m"
correct1="-w /etc/sudoers -p wa -k scope -w /etc/sudoers.d/ -p wa -k scope"
correct2="-w /etc/sudoers -p wa -k scope -w /etc/sudoers.d/ -p wa -k scope"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

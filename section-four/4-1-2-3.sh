#!/bin/sh

section=4
auditNo="4.1.2.3"
auditName="Ensure system is disabled when audit logs are full"

cmd1=$(grep space_left_action /etc/audit/auditd.conf)
cmd2=$(grep action_mail_acct /etc/audit/auditd.conf)
cm3=$(grep admin_space_left_action /etc/audit/auditd.conf)
auditres="\033[31mFAIL\033[m"
correct1="space_left_action = email"
correct2="action_mail_acct = root"
correct3="admin_space_left_action = halt"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = "$correct2" ] && [ "$cmd3" = "$correct3" ]
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t[${auditres}]"

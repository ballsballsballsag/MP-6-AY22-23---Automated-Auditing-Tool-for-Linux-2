#!/bin/sh

section=4
auditNo="4.1.2.2"
auditName="Ensure audit logs are not automatically deleted"

cmd=$(grep max_log_file_action /etc/audit/auditd.conf)
auditres="\033[31mFail\033[m"
correct="max_log_file_action = keep_logs" 
if  [ "$cmd" = "$correct" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t[${auditres}]"

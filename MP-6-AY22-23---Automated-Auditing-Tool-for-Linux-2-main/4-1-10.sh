#!/bin/sh

section=4
auditNo="4.1.10"
auditName="Ensure unsuccessful unauthorized file access attempts are collected"

cmd1=$(grep access /etc/audit/rules.d/*.rules 2> \dev\null)
cmd2=$(auditctl -l 2> \dev\null | grep -E '(session|logins)')
auditres="\033[31mFail\033[m"
correct1="-a always,exit -F arch=b32 -S chmod -S fchmod -S fchmodat -F auid>=1000 -F auid!=4294967295 -k perm_mod -a always,exit -F arch=b32 -S chown -S fchown -S fchownat -S lchown -F auid>=1000 -F auid!=4294967295 -k perm_mod -a always,exit -F arch=b32 -S setxattr -S lsetxattr -S fsetxattr -S removexattr -S lremovexattr -S fremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod"
correct2="-a always,exit -F arch=b32 -S chmod,fchmod,fchmodat -F auid>=1000 -F auid!=-1 -F key=perm_mod -a always,exit -F arch=b32 -S lchown,fchown,chown,fchownat -F auid>=1000 -F auid!=-1 -F key=perm_mod -a always,exit -F arch=b32 -S setxattr,lsetxattr,fsetxattr,removexattr,lremovexattr,fremovexattr -F auid>=1000 -F auid!=-1 -F key=perm_mod"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

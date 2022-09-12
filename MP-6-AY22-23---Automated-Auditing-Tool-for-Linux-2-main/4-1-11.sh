#!/bin/sh

section=4
auditNo="4.1.11"
auditName="Ensure use of privileged commands is collected"

cmd1=$(find <partition> -xdev \( -perm -4000 -o -perm -2000 \) -type f 2> \dev\null | awk '{print \ "-a always,exit -F path=" $1 " -F perm=x -F auid>=1000 -F auid!=4294967295 \ -k privileged" }' 2> \dev\null)
auditres="\033[31mFail\033[m"
correct1="-a always,exit -F arch=b32 -S chmod -S fchmod -S fchmodat -F auid>=1000 -F auid!=4294967295 -k perm_mod -a always,exit -F arch=b32 -S chown -S fchown -S fchownat -S lchown -F auid>=1000 -F auid!=4294967295 -k perm_mod -a always,exit -F arch=b32 -S setxattr -S lsetxattr -S fsetxattr -S removexattr -S lremovexattr -S fremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod"
if  [ "$cmd1" = "$correct1" ] 
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

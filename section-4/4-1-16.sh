#!/bin/sh

section=4
auditNo="4.1.16"
auditName="Ensure kernel module loading and unloading is collected"

cmd1=$(grep modules /etc/audit/rules.d/*.rules)
cmd2=$(auditctl -l | grep modules)
auditres="\033[31mFail\033[m"
correct1="-w /sbin/insmod -p x -k modules -w /sbin/rmmod -p x -k modules -w /sbin/modprobe -p x -k modules -a always,exit -F arch=b32 -S init_module -S delete_module -k modules"
correct2="-w /sbin/insmod -p x -k modules -w /sbin/rmmod -p x -k modules -w /sbin/modprobe -p x -k modules -a always,exit -F arch=b32 -S init_module,delete_module -F key=modules"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t\t${auditName} \t[${auditres}]"

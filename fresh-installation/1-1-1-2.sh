#!/bin/sh
section=1
auditno="1.1.1.2"
auditname="Ensure mounting of freevxfs filesystem is diabled"

cmd=$(modprobe -n -v freevxfs | grep -E '(freevxfs|install)')
cmd1=$(lsmod | grep freevxfs)
correct="install /bin/true "


if [ "$cmd" = "$correct" ] && [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"

else
	auditres="\033[31mFail\033[m"


fi
echo  "${auditno} \t${auditname} \t\t\t[${auditres}]"

#!/bin/sh
section=1
auditno="1.1.1.5"
auditname="Ensure mounting of hfsplus filesystem is diabled"

cmd=$(modprobe -n -v hfsplus | grep -E '(hfsplus|install)')
cmd1=$(lsmod | grep hfsplus)
correct="install /bin/true "


if [ "$cmd" = "$correct" ] && [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"

else
	auditres="\033[31mFail\033[m"

fi
echo "${auditno} \t${auditname} \t\t\t[${auditres}]"

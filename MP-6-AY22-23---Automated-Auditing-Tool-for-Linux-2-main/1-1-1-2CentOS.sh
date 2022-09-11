#!/bin/sh
section=1
auditno="1.1.1.2"
auditname="Ensure mounting of squashfs filesystem is diabled"

cmd=$(modprobe -n -v squashfs | grep -E '(squashfs|install)')
cmd1=$(lsmod | grep squashfs)
correct="install /bin/true "


if [ "$cmd" = "$correct" ] && [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"

else
	auditres="\033[31mFail\033[m"

fi
echo -e "${auditno} \t${auditname} \t\t\t[${auditres}]"

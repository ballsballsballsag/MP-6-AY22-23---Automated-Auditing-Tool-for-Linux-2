#!/bin/sh
section=1
auditno="1.1.1.3"
auditname="Ensure mounting of jffs2 filesystem is diabled"

cmd=$(modprobe -n -v jffs2 | grep -E '(jffs2|install)')
cmd1=$(lsmod | grep jffs2)
correct="install /bin/true "


if [ "$cmd" = "$correct" ] && [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"


else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t${auditname} \t\t\t\t[${auditres}]"

#!/bin/sh
section=1
auditno="1.1.1.7"
auditname="Ensure mounting of udf filesystem is diabled"

cmd=$(modprobe -n -v udf | grep -E '(udf|install)')
cmd1=$(lsmod | grep udf)
correct="install /bin/true "


if [ "$cmd" = "$correct" ] && [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"

else
	auditres="\033[31mFail\033[m"

fi
echo "${auditno} \t${auditname} \t\t\t\t[${auditres}]"

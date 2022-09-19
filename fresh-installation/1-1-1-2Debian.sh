#!/bin/sh
section=1
auditno="1.1.1.2"
auditname="Ensure mounting of jff2s filesystem is diabled"

cmd=$(/usr/sbin/modprobe -n -v jff2s 2> /dev/null | grep -E '(jff2s|install)')
cmd1=$(lsmod | grep jff2s 2> /dev/null)
correct="install /bin/true "


if [ "$cmd" = "$correct" ] && [ -z "$cmd1" ]
then
        auditres="\033[32mPass\033[m"

else
        auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t${auditname} \t\t\t\t[${auditres}]"

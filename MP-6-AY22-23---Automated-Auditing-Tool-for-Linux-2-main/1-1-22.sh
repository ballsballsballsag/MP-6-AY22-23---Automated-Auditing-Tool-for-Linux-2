#!/bin/sh
section=1
auditno="1.1.22"
auditname="Ensure sticky bit is set on all world-writable directories"

#cmd=`modprobe -n -v hfs | grep -E '(hfs|install)'`
cmd=$(find / -xdev -type d \( -perm -0002 -a ! -perm -1000 \))
#correct="install /bin/true "


if [ -z "$cmd" ]
then
	auditres="\033[32mPass\033[m"


else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t[${auditres}]"

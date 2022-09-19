#!/bin/sh
section=5
auditno="5.5.3"
auditname="Ensure default group for the root account is GID 0"

cmdres=$(grep "^root:" /etc/passwd | cut -f4 -d:)

if [ "$cmdres" != "0" ]
then
	auditres="\033[31mFail\033[m"
else
	auditres="\033[32mPass\033[m"
fi

echo "${auditno} \t${auditname} \t[${auditres}]"

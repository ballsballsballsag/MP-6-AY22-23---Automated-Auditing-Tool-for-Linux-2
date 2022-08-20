#!/bin/sh
section=1
auditno="1.7.1"
auditname="Ensure local login warning banner is configured properly"

cmd=$(grep -Eis "(\\\v|\\\r|\\\m|\\\s|$(grep '^ID=' /etc/os-release | cut -d= -f2 | sed -e 's/"//g'))" /etc/motd)
#cmd1=$(grep -E '^\s*chmod\s+[0-7][0-7][0-7]\s+\$\{grub_cfg\}\.new' -A 1 -B1 /usr/sbin/grub-mkconfig | grep password)
#| grep chmod`
#| cut -b 9-11`

correct=400


#| grep password`



if [ -z "$cmd" ]
then
	auditres="\033[32mPass\033[m"

else
	auditres="\033[31mFail\033[m"
	
fi
echo "${auditno} \t\t${auditname} \t\t[${auditres}]"


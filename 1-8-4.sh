#!/bin/sh
section=1
auditno="1.8.4"
auditname="Ensure remote login warning banner is configured properly"

cmd=$(grep -Eis '^\s*Enable\s*=\s*true' /etc/gdm3/custom.conf)
#cmd1=$(grep -E '^\s*chmod\s+[0-7][0-7][0-7]\s+\$\{grub_cfg\}\.new' -A 1 -B1 /usr/sbin/grub-mkconfig | grep password)
#| grep chmod`
#| cut -b 9-11`




#| grep password`



if [ -z "$cmd" ]
then
	auditres="\033[32mPass\033[m"


else
	auditres="\033[31mFail\033[m"

	
fi
echo "${auditno} \t\t${auditname} \t\t[${auditres}]"


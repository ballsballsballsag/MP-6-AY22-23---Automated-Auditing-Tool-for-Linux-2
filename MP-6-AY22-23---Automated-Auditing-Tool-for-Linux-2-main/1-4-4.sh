#!/bin/sh
section=1
auditno="1.4.4"
auditname="Ensure authentication required for single user mode"

cmd=$(grep -Eq '^root:\$[0-9]' /etc/shadow || echo "root is locked")
cmd1=$(grep "^password" /boot/grub/grub.cfg)



if [ -z "$cmd" ]
then
	auditres="\033[32mPass\033[m"


else
	auditres="\033[31mFail\033[m"

	
fi
echo "${auditno} \t\t${auditname} \t\t\t[${auditres}]"


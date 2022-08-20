#!/bin/sh
section=1
auditno="1.4.2"
auditname="Ensure bootloader password is set"

cmd=$(grep "^set superusers" /boot/grub/grub.cfg)
cmd1=$(grep "^password" /boot/grub/grub.cfg)



if [ -z "$cmd" ] && [ -z "$cmd1" ]
then
	auditres="\033[31mFail\033[m"


else
	auditres="\033[32mPass\033[m"
	
fi
echo "${auditno} \t\t${auditname} \t\t\t\t\t[${auditres}]"


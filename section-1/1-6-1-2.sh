#!/bin/sh
section=1
auditno="1.6.1.2"
auditname="Ensure AppArmor is enabled in bootloader configurations"

cmd=$(grep "^\s*linux" /boot/grub/grub.cfg | grep -v "apparmor=1")
cmd1=$(grep "^\s*linux" /boot/grub/grub.cfg | grep -v "security=apparmor")



if [ -z "$cmd" ] && [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"


else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t${auditname} \t\t[${auditres}]"

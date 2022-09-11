#!/bin/sh
section=1
auditno="1.1.24"
auditname="Disable USB storage"

cmd=$(modprobe -n -v usb-storage)
cmd1=$(lsmod | grep usb-storage)
correct="install /bin/true "


if [ "$cmd" = "$correct" ] && [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"

else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t\t\t\t\t[${auditres}]"

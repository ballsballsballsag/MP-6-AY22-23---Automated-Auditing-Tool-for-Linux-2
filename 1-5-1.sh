#!/bin/sh
section=1
auditno="1.5.1"
auditname="Ensure XD/NX support is enabled"



cmd1=$(journalctl | grep 'protection: active')
cmd2=$([[ -n $(grep noexec[0-9]*=off /proc/cmdline) || -z $(grep -E -i ' (pae|nx) ' /proc/cpuinfo) || -n $(grep '\sNX\s.*\sprotection:\s' /var/log/dmesg | grep -v active) ]] && echo "NX Protection is not active")




if [ ! -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"

elif [ -z "$cmd2" ]
then
	auditres="\033[32mPass\033[m"

else
        auditres="\033[31mFail\033[m"



fi
echo "${auditno} \t\t${auditname} \t\t\t[${auditres}]"

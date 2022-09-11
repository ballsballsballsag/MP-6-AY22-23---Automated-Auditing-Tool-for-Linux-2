#!/bin/sh
section=1
auditno="1.5.2"
auditname="Ensure address space layout randomization (ASLR) is enabled"

cmd=$(sysctl kernel.randomize_va_space)
cmd1=$(grep -Es "^\s*kernel\.randomize_va_space\s*=\s*([0-1]|[3-9]|[1-9][0-9]+)" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /usr/local/lib/sysctl.d/*.conf /run/sysctl.d/*.conf)
correct="kernel.randomize_va_space = 2"


if [ "$cmd" = "$correct" ] && [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"


else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t[${auditres}]"

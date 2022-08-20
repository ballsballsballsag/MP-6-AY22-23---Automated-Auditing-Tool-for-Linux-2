#!/bin/sh
section=1
auditno="1.6.1.1"
auditname="Ensure apparmor is installed"

#cmd1=$(systemctl is-enabled autofs)
#correct1="disabled"
cmd2=$(dpkg-query -l | grep apparmor)
#cmd3=`findmnt -n /tmp | cut -b 8-15`
#correct3="/dev/sda"




#if [ "$cmd1" = "$correct1" ]
#then
#	auditres="Pass"


if [ ! -z "$cmd2" ]
then
	auditres="\033[32mPass\033[m"
else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t${auditname} \t\t\t\t\t\t[${auditres}]"

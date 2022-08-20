#!/bin/sh
section=1
auditno="1.8.3"
auditname="Ensure disable-user-list is enabled"

cmd=$(cat /etc/gdm3/greeter.dconf-defaults | grep disable-user-list | cut -b 20-23)
correct="true"


if [ "$cmd" = "$correct" ]
then
	auditres="\033[32mPass\033[m"

else
	 auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t\t\t[${auditres}]"

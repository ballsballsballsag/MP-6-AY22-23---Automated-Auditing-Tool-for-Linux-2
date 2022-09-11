#!/bin/sh
section=1
auditno="1.8.2"
auditname="Ensure GDM login banner is configured"

cmd=$(cat /etc/gdm3/greeter.dconf-defaults | grep banner-message-enable | cut -b 24-28)
cmd1=$(cat /etc/gdm3/greeter.dconf-defaults | grep banner-message-text | cut -b 22-23)
cmd2=$(cat /etc/gdm3/greeter.dconf-defaults | grep disable-user-list | cut -b 20-23)
correct="true"
wrong="''"

if [ "$cmd" = "$correct" ] && [ "$cmd1" != "$wrong" ] && [ "$cmd2" = "$correct" ]
then
	auditres="\033[32mPass\033[m"


else
	 auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t\t\t[${auditres}]"

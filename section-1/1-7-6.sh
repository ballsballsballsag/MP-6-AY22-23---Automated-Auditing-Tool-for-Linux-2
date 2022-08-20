#!/bin/sh
section=1
auditno="1.7.6	"
auditname="Ensure permissions on /etc/issue.net are configured"

cmd=$(stat -L /etc/issue.net | grep Uid)
correct="Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)"
#correct1="stat: cannot stat '/etc/motd': No such file or directory"



if [ "$cmd" = "$correct" ] 
#|| [ "$cmd" = "$correct1" ]
then
	auditres="\033[32mPass\033[m"


else
	auditres="\033[31mFail\033[m"

	
fi
echo "${auditno} \t${auditname} \t\t\t[${auditres}]"


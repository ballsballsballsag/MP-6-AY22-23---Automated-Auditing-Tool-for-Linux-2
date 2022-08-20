#!/bin/sh
section=1
auditno="1.7.5"
auditname="Ensure permissions on /etc/issue are configured"

cmd=$(stat -L /etc/issue | grep Uid)
correct="Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)"




if [ "$cmd" = "$correct" ] 
#|| [ "$cmd" = "$correct1" ]
then
	auditres="\033[32mPass\033[m"

else
	auditres="\033[31mFail\033[m"

fi
echo "${auditno} \t\t${auditname} \t\t\t[${auditres}]"


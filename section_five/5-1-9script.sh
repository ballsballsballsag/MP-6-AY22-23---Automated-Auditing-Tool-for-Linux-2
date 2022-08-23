#!/bin/sh
section=5
auditno="5.1.9"
auditname="Ensure at is restricted to authorized users"

cmdres=$(stat /etc/at.deny 2> /dev/null| grep "stat:")

if [ "$cmdres" != *"stat: cannot stat"* ]
then
	cmdres=$(stat /etc/at.allow 2> /dev/null| grep "Access: ")
	if [ "$cmdres" != *"Access: (0640/-rw-r-----)  Uid: (    0/    root)   Gid: (    0/   root)"* ]
	then
        	auditres="\033[31mFail\033[m"
	else
		auditres="\033[32mPass\033[m"
	fi
else
        auditres="\033[32mPass\033[m"
fi

echo "${auditno} \t${auditname} \t\t[${auditres}]"

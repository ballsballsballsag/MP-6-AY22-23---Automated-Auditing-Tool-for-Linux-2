#!/bin/sh
section=5
auditno="5.1.2"
auditname="Ensure permissions on /etc/crontab are configured"

cmdres=$(stat /etc/crontab | grep "Access: (")

if [ "$cmdres" != *"Access: (0600/-rw-------)  Uid: (    0/    root)   Gid: (    0/    root)"* ]
then
	auditres="\033[31mFail\033[m"
else
	auditres="\033[32mPass\033[m"
fi

echo "${auditno} \t${auditname} \t[${auditres}]"

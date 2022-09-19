#!/bin/sh
section=5
auditno="5.1.7"
auditname="Ensure permissions on /etc/cron.d are configured"

cmdres=$(stat /etc/cron.d | grep "Access: (")

if [ "$cmdres" != *"Access: (0700/drwx------)  Uid: (    0/    root)   Gid: (    0/    root)"* ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi

echo "${auditno} \t${auditname} \t[${auditres}]"

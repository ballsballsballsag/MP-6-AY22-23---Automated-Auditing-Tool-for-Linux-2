#!/bin/sh
section=5
auditno="5.3.2"
auditname="Ensure permissions on SSH private host key files are configured"

cmdres=$(find /etc/ssh -xdev -type f -name 'ssh_host_*_key' -exec stat {} \;)

if [ "$cmdres" != *"Access: (0600/-rw-------)  Uid: (    0/    root)   Gid: (    0/    root)"* ]
then
        if [ "$cmdres" = "" ]
        then
                auditres="\033[32mPass\033[m"
        else
		auditres="\033[31mFail\033[m"
	fi
else
		auditres="\033[32mPass\033[m"
fi

echo "${auditno} \t${auditname} [${auditres}]"

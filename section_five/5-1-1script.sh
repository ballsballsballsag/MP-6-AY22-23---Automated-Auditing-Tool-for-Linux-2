#!/bin/sh
section=5
auditno="5.1.1"
auditname="Ensure cron daemon is enabled and running"

cmdres=$(systemctl is-enabled cron)

if [ "$cmdres" != "enabled" ]
then
       	auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi
echo "${auditno} \t${auditname} \t\t[${auditres}]"


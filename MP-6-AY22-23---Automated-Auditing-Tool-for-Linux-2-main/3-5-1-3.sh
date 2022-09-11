#! /bin/sh
section=3
auditno="3.5.1.3"
auditname="Ensure ufw service is enabled"

cmd=$(systemctl is-enabled ufw)
cmd1=$(ufw status | grep Status)
correct="enabled"
correct1="Status: active"
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi
echo "${auditno} ${auditname} \t\t   [${auditres}]"

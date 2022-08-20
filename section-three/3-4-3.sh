#! /bin/sh
section=3
auditno="3.4.3"
auditname="Ensure RDS is disabled"

cmd=$(modprobe -n -v rds)
cmd1=$(lsmod | grep rds)
correct="install /bin/true"
correct1=""
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t\t\t\t   [${auditres}]"

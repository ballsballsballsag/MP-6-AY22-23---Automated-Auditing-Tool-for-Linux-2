#! /bin/sh
section=2
auditno="2.3"
auditname="Ensure nonessential services are removed or masked"

cmd=$(lsof -i -P -n | grep -v "(ESTABLISHED)")
correct=""

if [ "$cmd" = "$correct" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t\t   [${auditres}]"

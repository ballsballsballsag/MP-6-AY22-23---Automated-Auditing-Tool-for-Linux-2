#! /bin/sh
section=3
auditno="3.1.2"
auditname="Ensure wireless interfaces are disabled"

cmd=$(sh 3-1-2-script.sh)
correct="Wireless is not enabled"

if [ "$cmd" = "$correct" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t   [${auditres}]"

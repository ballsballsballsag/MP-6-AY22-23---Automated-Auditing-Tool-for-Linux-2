#! /bin/sh
section=3
auditno="3.5.3.3.3"
auditname="Ensure ip6tables default deny firewall policy"

cmd=$(ip6tables -L)
correct=""
if [ "$cmd" = "$correct" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"

fi

echo "${auditno} ${auditname} \t\t   [${auditres}]"

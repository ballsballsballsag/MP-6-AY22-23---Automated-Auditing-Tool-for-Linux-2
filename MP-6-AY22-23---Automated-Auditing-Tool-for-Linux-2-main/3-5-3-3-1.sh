#! /bin/sh
section=3
auditno="3.5.3.3.1"
auditname="Ensure ip6tables loopback traffic is configured"

cmd=$(ip6tables -L INPUT -v -n)
cmd1=$(ip6tables -L OUTPUT -v -n)
correct=""
correct1=""
if [ "$cmd" != "$correct" ] && [ "$cmd1" != "$correct1" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"

fi

echo "${auditno} ${auditname} \t\t   [${auditres}]"

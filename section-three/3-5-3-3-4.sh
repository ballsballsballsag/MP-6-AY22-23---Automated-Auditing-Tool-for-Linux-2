#! /bin/sh
section=3
auditno="3.5.3.3.4"
auditname="Ensure ip6tables firewall rules exist for all open ports"

cmd=$(ss -6tuln)
cmd1=$(ip6tables -L INPUT -v -n)
correct=""
correct1=""
if [ "$cmd" != "$correct" ] && [ "$cmd1" != "$correct1" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"

fi

echo "${auditno} ${auditname}  \t   [${auditres}]"
                                                     
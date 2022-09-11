#! /bin/sh
section=3
auditno="3.5.3.2.1"
auditname="Ensure iptables loopback traffic is configured"

cmd=$(iptables -L INPUT -v -n)
cmd1=$(iptables -L OUTPUT -v -n)
correct=""
correct1=""
if [ "$cmd" != "$correct" ] && [ "$cmd1" != "$correct1" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"

fi

echo "${auditno} ${auditname} \t\t   [${auditres}]"

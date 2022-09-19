#! /bin/sh
section=3
auditno="3.5.3.2.4"
auditname="Ensure iptables firewall rules exist for all open ports"

cmd=$(ss -4tuln)
cmd1=$(iptables -L INPUT -v -n)
correct=""
correct1=""
if [ "$cmd" != "$correct" ] && [ "$cmd1" != "$correct1" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"

fi


echo "${auditno} ${auditname}\t   [${auditres}]"

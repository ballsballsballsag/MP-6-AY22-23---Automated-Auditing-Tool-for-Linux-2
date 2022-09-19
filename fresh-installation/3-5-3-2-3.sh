#! /bin/sh
section=3
auditno="3.5.3.2.3"
auditname="Ensure iptables default deny firewall policy"

cmd=$(iptables -L)
correct="Chain INPUT (policy DROP)
Chain FORWARD (policy DROP)
Chain OUTPUT (policy DROP)"
if [ "$cmd" = "$correct" ]
then
       auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"

fi
echo "${auditno} $auditname} \t\t   [${auditres}]"


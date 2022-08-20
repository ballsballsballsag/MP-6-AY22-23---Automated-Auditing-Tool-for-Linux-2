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
        auditres="Pass"
else
        auditres="Fail"
fi
echo "$cmd"
echo "${auditno} \t${auditname} \t\t[${auditres}]"

#! /bin/sh
section=3
auditno="3.5.1.2"
auditname="Ensure iptables-persistent is not installed with ufw"

cmd=$(dpkg-query -l | grep iptables-persistent)

if [ ! -z "$cmd" ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi
echo "${auditno} ${auditname} \t\t   [${auditres}]"


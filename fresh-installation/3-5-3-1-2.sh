#! /bin/sh
section=3
auditno="3.5.3.1.2"
auditname="Ensure nftables is not installed with iptables"

cmd=$(dpkg-query -l | grep nftables 2> \dev\null)

if [ ! -z "$cmd" ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi
echo "${auditno} ${auditname} \t\t   [${auditres}]"

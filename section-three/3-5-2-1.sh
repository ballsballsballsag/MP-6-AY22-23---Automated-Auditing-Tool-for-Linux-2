#! /bin/sh
section=3
auditno="3.5.2.1"
auditname="Ensure nftables is installed"

cmd=$(dpkg-query -l | grep nftables)


if [ ! -z "$cmd" ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi
echo "${auditno} ${auditname} \t\t\t\t\t   [${auditres}]"

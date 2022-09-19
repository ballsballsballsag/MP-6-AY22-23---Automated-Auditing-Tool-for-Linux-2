#! /bin/sh
section=3
auditno="3.5.2.9"
auditname="Ensure nftables service is enabled"

cmd=$(systemctl is-enabled nftables | grep 2> \dev\null)
correct="enabled"
if [ "$cmd" = "$correct" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} ${auditname} \t\t\t\t   [${auditres}]"

#! /bin/sh
section=3
auditno="3.5.2.2"
auditname="Ensure ufw is uninstalled or disabled with nftables"

cmd=$(dpkg-query -s ufw | grep 'Status: install ok installed')
cmd1=$(ufw status)
correct=""
correct1="Status: inactive"
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} ${auditname} \t\t   [${auditres}]"
#! /bin/sh
section=3
auditno="3.5.1.7"
auditname="Ensure ufw default deny firewall policy"

cmd=$(ufw status verbose| cut -d ' ' -f 2)
correct="ALLOW;DENY"

if [ "$cmd" = "$correct" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} ${auditname} \t\t\t[${auditres}]"


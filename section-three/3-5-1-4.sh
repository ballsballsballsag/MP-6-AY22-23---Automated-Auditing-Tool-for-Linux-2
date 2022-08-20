#! /bin/sh
section=3
auditno="3.5.1.4"
auditname="Ensure ufw loopback traffic is configured"

cmd=$(ufw status verbose)
correct="Status: inactive"
if [ "$cmd" = "$correct" ]

then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} ${auditname} \t\t   [${auditres}]"

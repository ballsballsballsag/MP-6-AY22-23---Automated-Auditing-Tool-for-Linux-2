#! /bin/sh
section=3
auditno="3.5.1.1"
auditname="Ensure ufw is installed"

cmd=$(dpkg -s ufw | grep 'Status: install')
correct="Status: install ok installed"

if [ "$cmd" = "$correct" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} ${auditname} \t\t\t\t\t   [${auditres}]"
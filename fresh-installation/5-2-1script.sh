#!/bin/sh
section=5
auditno="5.2.1"
auditname="Ensure sudo is installed"

cmdres=$(dpkg -s sudo | grep "Status")

if [ "$cmdres" != "Status: install ok installed" ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t\t[${auditres}]"

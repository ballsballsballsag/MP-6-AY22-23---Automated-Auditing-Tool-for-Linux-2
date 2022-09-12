#!/bin/sh
section=1
auditno="1.3.1"
auditname="Ensure AIDE is installed"


#cmd1=$(dpkg-query -l | grep aide)
#cmd2=$(dpkg-query -l | grep aide-common)

cmd=$(dpkg -s aide 2> /dev/null | grep -E '(Status:|not installed)' 2> /dev/null)
cmd1=$(dpkg -s aide-common 2> /dev/null | grep -E '(Status:|not installed)' 2> /dev/null)





if [ ! -z "$cmd" ] && [ ! -z "$cmd1" ]
then
        auditres="\033[32mPass\033[m"


else
        auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t\t\t\t[${auditres}]"

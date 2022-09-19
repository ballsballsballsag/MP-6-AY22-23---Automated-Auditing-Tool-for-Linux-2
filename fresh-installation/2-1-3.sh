#! /bin/sh
section=2
auditno="2.1.3"
auditname="Ensure Avahi Server is not installed"

cmd=$(dpkg -s avahi-daemon | grep -E '(Status:|not installed)' 2> \dev\null)
correct=" "

if [ "$cmd" = "$correct" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t\t   [${auditres}]"

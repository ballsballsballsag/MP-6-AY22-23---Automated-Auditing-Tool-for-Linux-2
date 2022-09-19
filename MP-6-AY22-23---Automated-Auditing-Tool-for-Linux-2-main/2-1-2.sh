#! /bin/sh
section=2
auditno="2.1.2"
auditname="Ensure X Window System is not installed"

cmd=$(dpkg -l xserver-xorg* 2> \dev\null)
correct=""

if [ "$cmd" = "$correct" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t   [${auditres}]"

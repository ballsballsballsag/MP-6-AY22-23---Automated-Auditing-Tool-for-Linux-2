#!/bin/sh
section=5
auditno="5.2.3"
auditname="Ensure sudo log file exists"

cmdres=$(sudo grep -Ei '^\s*Defaults\s+logfile=\S+' /etc/sudoers /etc/sudoers.d/*)

if [ "$cmdres" != *'Defaults  logfile="'* ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t\t[${auditres}]"

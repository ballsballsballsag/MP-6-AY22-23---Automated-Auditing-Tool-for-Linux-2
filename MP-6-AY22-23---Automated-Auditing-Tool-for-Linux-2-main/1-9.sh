#!/bin/sh
section=1
auditno="1.9"
auditname="Ensure updates, patches, and additional security software are installed"
correct=0


cmd=$(apt-get -s  upgrade | grep "not upgraded" | tr '\n' ' ' | sed -e 's/[^0-9]/ /g' -e 's/^ *//g' -e 's/ *$//g' | tr -s ' ' | sed 's/ /\n/g' | tail -1)
if [ "$cmd" = "$correct" ]
then
	auditres="\033[32mPass\033[m"
else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} [${auditres}]"

#!/bin/sh
section=1
auditno="1.9"
auditname="Ensure updates, patches, and additional security software are installed"


cmd=$(apt -s upgrade | grep "not fully installed or removed.")

if [ -z "$cmd" ]
then
	auditres="\033[32mPass\033[m"
else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} [${auditres}]"

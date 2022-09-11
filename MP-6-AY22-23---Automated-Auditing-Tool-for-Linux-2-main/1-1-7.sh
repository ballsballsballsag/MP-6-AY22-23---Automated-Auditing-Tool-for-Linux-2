#!/bin/sh
section=1
auditno="1.1.7"
auditname="Ensure nodev option set on /dev/shm partition"

cmd1=$(findmnt -n /dev/shm | grep -v nodev)


if [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"



else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t\t[${auditres}]"

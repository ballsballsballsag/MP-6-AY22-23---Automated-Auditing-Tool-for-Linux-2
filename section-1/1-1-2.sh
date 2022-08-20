#!/bin/sh
section=1
auditno="1.1.2"
auditname="Ensure /tmp is configured"

cmd1=$(findmnt -n /tmp | cut -b 1-4)
correct1="/tmp"
cmd2=$(findmnt -n /tmp | cut -b 8-12)
correct2="tmpfs"
cmd3=$(findmnt -n /tmp | cut -b 8-15)
correct3="/dev/sda"




if [ "$cmd2" = "$correct2" ]
then
	auditres="\033[32mPass\033[m"


elif [ "$cmd3" = "$correct3" ]
then
	auditres="\033[32mPass\033[m"
else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t\t\t\t[${auditres}]"

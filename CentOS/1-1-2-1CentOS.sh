#!/bin/sh
section=1
auditno="1.1.2.1"
auditname="Ensure /tmp is a seperate partition"

cmd=$(findmnt --kernel /tmp | cut -b 8-12 | tail -1)
cmd1=$(findmnt --kernel /tmp | cut -b 8-15 | tail -1)
cmd2=$(systemctl is-enabled tmp.mount)
correct="tmpfs"
correct1="/dev/sda"
correct2="static"




if [ "$cmd" = "$correct" ] | [ "$cmd1" = "$correct1" ] && [ "$cmd2" = "$correct" ]
then
	auditres="\033[32mPass\033[m"
else
	auditres="\033[31mFail\033[m"


fi
echo -e "${auditno} \t${auditname} \t\t\t\t[${auditres}]"

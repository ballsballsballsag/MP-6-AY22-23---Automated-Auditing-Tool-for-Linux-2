#!/bin/sh
section=1
auditno="1.1.20"
auditname="Ensure nosuid option set on removable media partitions"


cmd1=$(mount | grep floppy)
cmd2=$(mount | grep cdrom)
cmd3=$(mount | grep floppy | grep nosuid)
cmd4=$(mount | grep cdrom | grep nosuid)



if [ -z "$cmd1" ] || [ -z "$cmd2" ]
then 
	auditres="\033[32mPass\033[m"

elif [ ! -z "$cmd3" ] || [ ! -z "$cmd4" ]
then
	auditres="\033[32mPass\033[m"


else
        auditres="\033[31mFail\033[m"



fi
echo "${auditno} \t\t${auditname} \t\t\t[${auditres}]"

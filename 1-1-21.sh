#!/bin/sh
section=1
auditno="1.1.21"
auditname="Ensure noexec option set on removable media partitions"


cmd1=$(mount | grep floppy)
cmd2=$(mount | grep cdrom)
cmd3=$(mount | grep floppy | grep noexec)
cmd4=$(mount | grep cdrom | grep noexec)



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

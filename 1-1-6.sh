#!/bin/sh
section=1
auditno="1.1.6"
auditname="Ensure /dev/shm is configured"

cmd=$(findmnt -n /dev/shm | cut -b 1-8)
correct="/dev/shm"
#cmd2=`findmnt -n /tmp | cut -b 8-12`
#correct2="tmpfs"
#cmd3=`findmnt -n /tmp | cut -b 8-15`
#correct3="/dev/sda"




if [ "$cmd" = "$correct" ]
then
	auditres="\033[32mPass\033[m"

else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t\t\t\t[${auditres}]"

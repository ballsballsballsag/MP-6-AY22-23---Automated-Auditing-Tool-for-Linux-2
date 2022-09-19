#!/bin/sh
section=1
auditno="1.1.17"
auditname="Ensure seperate partition exist for /home"

cmd=$(findmnt /home)
#cmd2=`findmnt -n /tmp | cut -b 8-12`
#correct2="tmpfs"
#cmd3=`findmnt -n /tmp | cut -b 8-15`
#correct3="/dev/sda"




if [ -z "$cmd" ]
then
	auditres="\033[31mFail\033[m"



#elif [ "$cmd3" = "$correct3" ]
#then
#	auditres="Pass"
else
	auditres="\033[32mPass\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t\t[${auditres}]"

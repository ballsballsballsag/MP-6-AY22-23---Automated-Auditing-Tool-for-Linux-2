#!/bin/sh
section=1
auditno="1.1.2.1"
auditname="Ensure nodev option is set on /tmp option"

cmd=$(findmnt --kernel /tmp | grep nodev)





if [ ! -z "$cmd" ] 
then
	auditres="\033[32mPass\033[m"
else
	auditres="\033[31mFail\033[m"


fi
echo -e "${auditno} \t${auditname} \t\t\t\t[${auditres}]"

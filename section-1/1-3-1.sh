#!/bin/sh
section=1
auditno="1.3.1"
auditname="Ensure AIDE is installed"


#cmd1=$(dpkg-query -l | grep aide)
#cmd2=$(dpkg-query -l | grep aide-common)

cmd=$(dpkg-query -l | grep aide | cut -d " " -f 3 > aide.txt)
first=$(cat aide.txt | head -n 1)
second=$(cat aide.txt | tail -n 1)
result1="aide"
result2="aide-common"




if [ "$first" = "$result1" ] && [ "$second" = "$result2" ]
then
	auditres="\033[32mPass\033[m"


else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t\t\t\t[${auditres}]"

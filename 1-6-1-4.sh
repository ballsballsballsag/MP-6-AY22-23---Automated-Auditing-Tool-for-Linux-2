#!/bin/sh
section=1
auditno="1.6.1.4"
auditname="Ensure all AppArmor Profiles are in enforcing"

cmd=$(apparmor_status | grep profiles > AppArmor_profile.txt)
cmd1=$(cat AppArmor_profile.txt | grep loaded | tr -dc '0-9')
cmd2=$(cat AppArmor_profile.txt | grep enforce | tr -dc '0-9')
cmd3=$(cat AppArmor_profile.txt | grep complain | tr -dc '0-9')
cmd4=$( expr $cmd1 - $cmd2 )
cmd5=$(apparmor_status | grep processes > AppArmor_processes.txt)
cmd6=$(cat AppArmor_processes.txt | grep unconfined | tr -dc '0-9')
cmd7=0
#| grep chmod`
#| cut -b 9-11`




#| grep password`



if [ "$cmd3" = "$cmd7" ] && [ "$cmd6" = "$cmd7" ]
then
	auditres="\033[32mPass\033[m"


else
	auditres="\033[31mFail\033[m"

	
fi
echo "${auditno} \t${auditname} \t\t\t\t[${auditres}]"


#!/bin/sh
section=1
auditno="1.4.1"
auditname="Ensure permissions on bootloader config are not overriden"

cmd=$(grep -E '^\s*chmod\s+[0-7][0-7][0-7]\s+\$\{grub_cfg\}\.new' -A 1 -B1 /usr/sbin/grub-mkconfig | grep chmod | cut -b 9-11)
cmd1=$(grep -E '^\s*chmod\s+[0-7][0-7][0-7]\s+\$\{grub_cfg\}\.new' -A 1 -B1 /usr/sbin/grub-mkconfig | grep password)
#| grep chmod`
#| cut -b 9-11`

correct=400


#| grep password`



if [ "$cmd" = "$correct" ] && [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"

else
	auditres="\033[31mFail\033[m"

	
fi
echo "${auditno} \t\t${auditname} \t\t[${auditres}]"


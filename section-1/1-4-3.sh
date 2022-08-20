#!/bin/sh
section=1
auditno="1.4.3"
auditname="Ensure permissions on bootloader config are configured"

cmd=$(stat /boot/grub/grub.cfg | grep Uid )
correct="Access: (0400/-r--------)  Uid: (    0/    root)   Gid: (    0/    root)"
correct1="Access: (0000/----------)  Uid: (    0/    root)   Gid: (    0/    root)"



if [ "$cmd" = "$correct" ] || [ "$cmd" = "$correct1" ]
then
	auditres="\033[32mPass\033[m"

else
	auditres="\033[31mFail\033[m"

	
fi
echo "${auditno} \t\t${auditname} \t\t\t[${auditres}]"


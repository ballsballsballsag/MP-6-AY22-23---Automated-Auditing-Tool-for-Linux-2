
#!/bin/sh
section=1
auditno="1.1.1.3"
auditname="Ensure mounting of hfs filesystem is diabled"

cmd=$(/usr/sbin/modprobe -n -v hfs | grep -E '(hfs|install)')
cmd1=$(lsmod | grep hfs)
correct="install /bin/true "


if [ "$cmd" = "$correct" ] && [ -z "$cmd1" ]
then
        auditres="\033[32mPass\033[m"

else
        auditres="\033[31mFail\033[m"

fi
echo "${auditno} \t${auditname} \t\t\t[${auditres}]"

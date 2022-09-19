#! /bin/sh
section=2
auditno="2.1.1.1"
auditname="Ensure time synchronization is in use"

cmd=$(systemctl is-enabled systemd-timesyncd 2> \dev\null)
cmd1=$(dpkg -s chrony 2> \dev\null)
cmd2=$(dpkg -s ntp 2> \dev\null)
correct="enabled"
correct1=""
correct2=""
if [ "$cmd" = "$correct" ] && [ "$cmd1" != "$correct1" ] && [ "$cmd2" != "$correct2" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} ${auditname} \t\t\t\t   [${auditres}]"

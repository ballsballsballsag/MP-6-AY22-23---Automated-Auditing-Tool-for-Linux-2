#! /bin/sh
section=2
auditno="2.1.1.2"
auditname="Ensure systemd-timesyncd is configured"

cmd=$(dpkg -s ntp | grep 2> \dev\null)
cmd1=$(dpkg -s chrony | grep 2> \dev\null)
cmd2=$(systemctl is-enabled systemd-timesyncd.service | grep 2> \dev\null)
cmd3=$(timedatectl status | grep 2> \dev\null)
correct=""
correct1=""
correct2="enabled"
correct3=""
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ] && [ "$cmd2" = "$correct2" ] && [ "$cmd3" != "$correct3" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} ${auditname} \t\t\t\t   [${auditres}]"


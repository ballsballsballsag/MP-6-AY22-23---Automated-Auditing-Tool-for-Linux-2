#! /bin/sh
section=2
auditno="2.1.1.4"
auditname="Ensure ntp is configured"

cmd=$(dpkg -s chrony | grep -E '(Status:|not installed)' |grep 2> \dev\null)
cmd1=$(systemctl is-enabled systemd-timesyncd)
cmd2=$(grep "^restrict" /etc/ntp.conf | grep 2> \dev\null )
cmd3=$(grep -E "^(server|pool)" /etc/ntp.conf | grep 2> \dev\null)
cmd4=$(grep "RUNASUSER=ntp" /etc/init.d/ntp | grep 2> \dev\null)
correct=""
correct1="masked"
correct2="restrict -4 default kod notrap nomodify nopeer noquery limited
restrict -6 default kod notrap nomodify nopeer noquery limited "
correct3=""
correct4="RUNASUSER=ntp"
if [ "$cmd" = "$correct" ] && [ "$cmd1" != "$correct1" ] && [ "$cmd2" != "$correct2" ] && [ "$cmd2" = "$correct2" ] && [ "$cmd3" != "$correct3" ] && [ "$cmd4" ="$correct4"]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} ${auditname} \t\t\t\t\t   [${auditres}]"
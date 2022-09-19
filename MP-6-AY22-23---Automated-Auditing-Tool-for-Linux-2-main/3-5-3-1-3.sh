#! /bin/sh
section=3
auditno="3.5.3.1.3"
auditname="Ensure ufw is installed or disabled with iptables"

cmd=$(dpkg-query -l | grep ufw 2> \dev\null)
cmd1=$(ufw status 2> \dev\null)
cmd2=$(systemctl is-enabled ufw 2> \dev\null)
correct1="Status: inactive"
correct2="masked"
if [ ! -z "$cmd" ] && [ "$cmd1" != "$correct1" ] && [ "$cmd2" != "$correct2" ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"

fi
echo "${auditno} ${auditname} \t\t   [${auditres}]"

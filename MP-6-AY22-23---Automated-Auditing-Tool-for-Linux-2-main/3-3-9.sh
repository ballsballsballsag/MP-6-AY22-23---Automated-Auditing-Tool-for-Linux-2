#! /bin/sh
section=3
auditno="3.3.9"
auditname="Ensure IPv6 router advertisements are not accepted"

cmd=$(sysctl net.ipv6.conf.all.accept_ra)
cmd1=$(sysctl net.ipv6.conf.default.accept_ra)
cmd2=$(grep "net\.ipv6\.conf\.all\.accept_ra" /etc/sysctl.conf /etc/sysctl.d/*)
cmd3=$(grep "net\.ipv6\.conf\.default\.accept_ra" /etc/sysctl.conf /etc/sysctl.d/*)
correct="net.ipv6.conf.all.accept_ra = 0"
correct1="net.ipv6.conf.default.accept_ra = 0"
correct2="net.ipv6.conf.all.accept_ra = 0"
correct3="net.ipv6.conf.default.accept_ra = 0"
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ] && [ "$cmd2" = "$correct2" ] && [ "$cmd3" = "$correct3" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t\t   [${auditres}]"
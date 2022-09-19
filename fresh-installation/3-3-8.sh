#! /bin/sh
section=3
auditno="3.3.8"
auditname="Ensure TCP SYN Cookies is enabled"

cmd=$(sysctl net.ipv4.tcp_syncookies)
cmd1=$(grep "net\.ipv4\.tcp_syncookies" /etc/sysctl.conf /etc/sysctl.d/* 2> \dev\null)
correct="net.ipv4.tcp_syncookies = 1"
correct1="net.ipv4.tcp_syncookies = 1"
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi
echo "${auditno} \t${auditname} \t\t\t\t   [${auditres}]"

#! /bin/sh
section=3
auditno="3.3.5"
auditname="Ensure broadcast ICMP requests are ignored"

cmd=$(sysctl net.ipv4.icmp_echo_ignore_broadcasts)
cmd1=$(grep "net\.ipv4\.icmp_echo_ignore_broadcasts" /etc/sysctl.conf /etc/sysctl.d/*)
correct="net.ipv4.icmp_echo_ignore_broadcasts = 1"
correct1="net.ipv4.icmp_echo_ignore_broadcasts = 1"
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t   [${auditres}]"

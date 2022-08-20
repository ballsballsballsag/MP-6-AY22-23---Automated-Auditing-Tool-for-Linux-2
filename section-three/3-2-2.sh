#! /bin/sh
section=3
auditno="3.2.2"
auditname="Ensure IP forwarding is disabled"

cmd=$(sysctl net.ipv4.ip_forward)
cmd1=$(grep -E -s "^\s*net\.ipv4\.ip_forward\s*=\s*1" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf)
cmd2=$(sysctl net.ipv6.conf.all.forwarding)
cmd3=$(grep -E -s "^\s*net\.ipv6\.conf\.all\.forwarding\s*=\s*1" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf)
correct="net.ipv4.ip_forward = 0"
correct1=""
correct2="net.ipv6.conf.all.forwarding = 0"
correct3=""
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t\t   [${auditres}]"

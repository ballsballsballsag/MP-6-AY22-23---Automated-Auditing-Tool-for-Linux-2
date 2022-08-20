#! /bin/sh
section=3
auditno="3.3.7"
auditname="Ensure Reverse Path Filtering is enabled"

cmd=$(sysctl net.ipv4.conf.all.rp_filter)
cmd1=$(sysctl net.ipv4.conf.default.rp_filter)
cmd2=$(grep "net\.ipv4\.conf\.all\.rp_filter" /etc/sysctl.conf /etc/sysctl.d/*)
cmd3=$(grep "net\.ipv4\.conf\.default\.rp_filter" /etc/sysctl.conf /etc/sysctl.d/*)
correct="net.ipv4.conf.all.rp_filter = 1"
correct1="net.ipv4.conf.default.rp_filter = 1"
correct2="net.ipv4.conf.all.rp_filter = 1"
correct3="net.ipv4.conf.default.rp_filter = 1"
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ] && [ "$cmd2" = "$correct2" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t   [${auditres}]"

#! /bin/sh
section=3
auditno="3.3.4"
auditname="Ensure suspicious packets are logged"

cmd=$(sysctl net.ipv4.conf.all.log_martians)
cmd1=$(sysctl net.ipv4.conf.default.log_martians)
cmd2=$(grep "net\.ipv4\.conf\.all\.log_martians" /etc/sysctl.conf /etc/sysctl.d/*)
cmd3=$(grep "net\.ipv4\.conf\.default\.log_martians" /etc/sysctl.conf /etc/sysctl.d/*)
correct="net.ipv4.conf.all.log_martians = 1"
correct1="net.ipv4.conf.default.log_martians = 1"
correct2="/etc/sysctl.conf:#net.ipv4.conf.all.log_martians = 1"
correct3="/etc/sysctl.d/99-sysctl.conf:#net.ipv4.conf.all.log_martians = 1"

if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ] && [ "$cmd2" = "$correct2" ] && [ "$cmd3" = "$correct3" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t\t   [${auditres}]"

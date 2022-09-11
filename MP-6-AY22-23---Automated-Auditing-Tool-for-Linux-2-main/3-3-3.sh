#! /bin/sh
section=3
auditno="3.3.3"
auditname="Ensure secure ICMP redirects are not accepted"

cmd=$(sysctl net.ipv4.conf.all.secure_redirects)
cmd1=$(sysctl net.ipv4.conf.default.secure_redirects)
cmd2=$(grep "net\.ipv4\.conf\.all\.secure_redirects" /etc/sysctl.conf /etc/sysctl.d/*)
cmd3=$(grep "net\.ipv4\.conf\.default\.secure_redirects" /etc/sysctl.conf /etc/sysctl.d/*)
correct="net.ipv4.conf.all.secure_redirects = 0"
correct1="net.ipv4.conf.default.secure_redirects = 0"
correct2="/etc/sysctl.conf:# net.ipv4.conf.all.secure_redirects = 0"
correct3="/etc/sysctl.d/99-sysctl.conf:# net.ipv4.conf.all.secure_redirects = 0"

if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ] && [ "$cmd2" = "$correct2" ] && [ "$cmd3" = "$correct3" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi
echo "${auditno} \t${auditname} \t\t\t   [${auditres}]"

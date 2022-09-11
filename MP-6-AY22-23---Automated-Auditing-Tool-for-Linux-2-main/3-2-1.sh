#! /bin/sh
section=3
auditno="3.2.1"
auditname="Ensure packet redirect sending is disabled"

cmd=$(sysctl net.ipv4.conf.all.send_redirects)
cmd1=$(sysctl net.ipv4.conf.default.send_redirects)
cmd2=$(grep -E "^\s*net\.ipv4\.conf\.all\.send_redirects" /etc/sysctl.conf /etc/sysctl.d/*)
cmd3=$(grep -E "^\s*net\.ipv4\.conf\.default\.send_redirects" /etc/sysctl.conf /etc/sysctl.d/*)
correct="net.ipv4.conf.all.send_redirects = 0"
correct1="net.ipv4.conf.default.send_redirects = 0"
correct2="/etc/sysctl.conf:net.ipv4.conf.all.send_redirects = 0
/etc/sysctl.d/99-sysctl.conf:net.ipv4.conf.all.send_redirects = 0"
correct3="/etc/sysctl.conf:net.ipv4.conf.default.send_redirects = 0
/etc/sysctl.d/99-sysctl.conf:net.ipv4.conf.default.send_redirects = 0"

if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ] && [ "$cmd2" = "$correct2" ] && [ "$cmd3" = "$correct3" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi
echo "${auditno} \t${auditname} \t\t\t   [${auditres}]"

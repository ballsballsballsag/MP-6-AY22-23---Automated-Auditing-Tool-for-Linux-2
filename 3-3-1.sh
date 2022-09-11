#! /bin/sh
section=3
auditno="3.3.1"
auditname="Ensure source routed packets are not accepted"

cmd=$(sysctl net.ipv4.conf.all.accept_source_route)
cmd1=$(sysctl net.ipv4.conf.default.accept_source_route)
cmd2=$(grep "net\.ipv4\.conf\.all\.accept_source_route" /etc/sysctl.conf /etc/sysctl.d/*)
cmd3=$(grep "net\.ipv4\.conf\.default\.accept_source_route" /etc/sysctl.conf /etc/sysctl.d/*)
cmd4=$(sysctl net.ipv6.conf.all.accept_source_route)
cmd5=$(sysctl net.ipv6.conf.default.accept_source_route)
cmd6=$(grep "net\.ipv6\.conf\.all\.accept_source_route" /etc/sysctl.conf /etc/sysctl.d/*)
cmd7=$(grep "net\.ipv6\.conf\.default\.accept_source_route" /etc/sysctl.conf /etc/sysctl.d/*)
correct="net.ipv4.conf.all.accept_source_route = 0"
correct1="net.ipv4.conf.default.accept_source_route = 0"
correct2="/etc/sysctl.conf:#net.ipv4.conf.all.accept_source_route = 0"
correct3="/etc/sysctl.d/99-sysctl.conf:#net.ipv4.conf.all.accept_source_route = 0"
correct4="net.ipv6.conf.all.accept_source_route = 0"
correct5="net.ipv6.conf.default.accept_source_route = 0"
correct6="/etc/sysctl.conf:#net.ipv6.conf.all.accept_source_route = 0"
correct7="/etc/sysctl.d/99-sysctl.conf:#net.ipv6.conf.all.accept_source_route = 0"
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ] && [ "$cmd2" = "$correct2" ] && [ "$cmd3" = "$correct3" ] && [ "$cmd4" = "$correct4" ] && [ "$cmd5" = "$correct5" ] && [ "$cmd6" = "$correct6" ] && [ "$cmd7" = "$correct7" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi
echo "${auditno} \t${auditname} \t\t\t   [${auditres}]"

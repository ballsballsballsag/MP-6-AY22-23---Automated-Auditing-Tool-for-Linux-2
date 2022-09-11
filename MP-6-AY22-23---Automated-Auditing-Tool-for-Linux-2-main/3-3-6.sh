#! /bin/sh
section=3
auditno="3.3.6"
auditname="Ensure bogus ICMP responses are ignored"

cmd=$(sysctl net.ipv4.icmp_ignore_bogus_error_responses)
cmd1=$(grep "net.ipv4.icmp_ignore_bogus_error_responses" /etc/sysctl.conf /etc/sysctl.d/*)
correct="net.ipv4.icmp_ignore_bogus_error_responses = 1"
correct1="net.ipv4.icmp_ignore_bogus_error_responses = 1"

if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t   [${auditres}]"

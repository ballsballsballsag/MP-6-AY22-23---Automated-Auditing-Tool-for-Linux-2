#! /bin/sh
section=3
auditno="3.5.2.6"
auditname="Ensure nftables loopback traffic is configured"

cmd=$(nft list ruleset | awk '/hook input/,/}/' | grep 'iif "lo" accept')
cmd1=$(nft list ruleset | awk '/hook input/,/}/' | grep 'ip saddr')
cmd2=$(nft list ruleset | awk '/hook input/,/}/' | grep 'ip6 saddr')
correct="iif "lo" accept"
correct1="ip saddr 127.0.0.0/8 counter packets 0 bytes 0 drop"
correct2="ip6 saddr ::1 counter packets 0 bytes 0 drop"
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} ${auditname} \t\t\t   [${auditres}]"

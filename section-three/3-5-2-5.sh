#! /bin/sh
section=3
auditno="3.5.2.5"
auditname="Ensure nftables base chain exists"

cmd=$(nft list ruleset | grep 'hook input')
cmd1=$(nft list ruleset | grep 'hook forward')
cmd2=$(nft list ruleset | grep 'hook output')
correct="type filter hook input priority 0;"
correct1="type filter hook forward priority 0;"
correct2="type filter hook output priority 0;"
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ] && [ "$cmd2" = "$correct2" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"

fi
echo "${auditno} \t${auditname} \t\t\t[${auditres}]"


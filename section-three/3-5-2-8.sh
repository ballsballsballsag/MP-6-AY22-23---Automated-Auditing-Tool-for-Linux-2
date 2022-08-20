#! /bin/sh
section=3
auditno="3.5.2.8"
auditname="Ensure nftables default deny firewall policy"

cmd=$(nft list ruleset | grep 'hook input')
cmd1=$(nft list ruleset | grep 'hook forward')
cmd2=$(nft list ruleset | grep 'hook output')
correct=""
correct1=""
correct2=""
if [ "$cmd" != "$correct" ] && [ "$cmd1" != "$correct1" ] && [ "$cmd2" != "$correct2" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi
echo "${auditno} ${auditname} \t\t\t   [${auditres}]"

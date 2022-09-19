#! /bin/sh
section=3
auditno="3.5.2.10"
auditname="Ensure nftables rules are permanent"

cmd=$([ -n "$(grep -E '^\s*include' /etc/nftables.conf)" ] && awk '/hook input/,/}/' $(awk '$1 ~ /^\s*include/ { gsub("\"","",$2);print $2 }' /etc/nftables.conf) 2> \dev\null)
cmd1=$([ -n "$(grep -E '^\s*include' /etc/nftables.conf)" ] && awk '/hook forward/,/}/' $(awk '$1 ~ /^\s*include/ { gsub("\"","",$2);print $2 }' /etc/nftables.conf) 2> \dev\null)
cmd2=$([ -n "$(grep -E '^\s*include' /etc/nftables.conf)" ] && awk '/hook output/,/}/' $(awk '$1 ~ /^\s*include/ { gsub("\"","",$2);print $2 }' /etc/nftables.conf) 2> \dev\null)
correct=""
correct1=""
correct2=""
if [ "$cmd" != "$correct" ] && ["$cmd1" != "$correct1" ] && [ "$cmd2" != "$correct2" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi
echo "${auditno} ${auditname} \t\t\t   [${auditres}]"

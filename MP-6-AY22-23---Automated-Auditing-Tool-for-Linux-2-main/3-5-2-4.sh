#! /bin/sh
section=3
auditno="3.5.2.4"
auditname="Ensure a nftables table exists"

cmd=$(nft list tables | grep 2> \dev\null 2> \dev\null)
correct=""
if [ "$cmd" != "$correct" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} ${auditname} \t\t\t\t\t   [${auditres}]"

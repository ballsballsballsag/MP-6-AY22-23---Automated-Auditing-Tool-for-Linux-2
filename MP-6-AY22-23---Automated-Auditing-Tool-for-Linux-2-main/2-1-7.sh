#! /bin/sh
section=2
auditno="2.1.7"
auditname="Ensure NFS is not installed"

cmd=$(dpkg-query -l | grep nfs-kernel-server | grep 2> \dev\null)

if [ ! -z "$cmd" ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi
echo "${auditno} \t${auditname} \t\t\t\t\t   [${auditres}]"

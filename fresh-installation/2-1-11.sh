#! /bin/sh
section=2
auditno="2.1.11"
auditname="Ensure IMAP and POP3 server are not installed"

cmd=$(dpkg-query -l | grep imapd 2> \dev\null)
cmd1=$(dpkg-query -l |grep pop3d 2> \dev\null)

if [ ! -z "$cmd" ] && [ ! -z "$cmd1" ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi
echo "${auditno} \t${auditname} \t\t\t   [${auditres}]"


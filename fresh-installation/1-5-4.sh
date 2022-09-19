#!/bin/sh
section=1
auditno="1.5.4"
auditname="Ensure core dumps are restricted"

cmd1=$(grep -Es '^(\*|\s).*hard.*core.*(\s+#.*)?$' /etc/security/limits.conf /etc/security/limits.d/* 2> /dev/null)
cmd2=$(sysctl fs.suid_dumpable 2> /dev/null)
cmd3=$(grep "fs.suid_dumpable" /etc/sysctl.conf /etc/sysctl.d/* 2>/dev/null)

correct="* hard core 0"


correct1="fs.suid_dumpable = 0"





if [ "$cmd1" = "$correct" ] && [ "cmd2" = "correct1" ] && [ "$cmd3" = "correct1" ] 
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t\t\t[${auditres}]"

#! /bin/sh
section=3
auditno="3.4.4"
auditname="Ensure TIPC is disabled"

cmd=$(modprobe -n -v tipc | grep -E '(tipc|install)')
cmd1=$(lsmod | grep tipc)
correct="install /bin/true"
correct1=""
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t\t\t   [${auditres}]"

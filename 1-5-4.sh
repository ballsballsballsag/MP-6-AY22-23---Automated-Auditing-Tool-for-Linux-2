#!/bin/sh
section=1
auditno="1.5.4"
auditname="Ensure core dumps are restricted"

cmd=$(grep -Es '^(\*|\s).*hard.*core.*(\s+#.*)?$' /etc/security/limits.conf /etc/security/limits.d/* | cut -b 27-39)
cmd1=$(sysctl fs.suid_dumpable)
cmd2=$(grep "fs.suid_dumpable" /etc/sysctl.conf /etc/sysctl.d/* > coredumps.txt)
cmd3=$(systemctl is-enabled coredump.service)
cmd4=$(cat /etc/systemd/coredump.conf | grep Storage)
cmd5=$(cat /etc/systemd/coredump.conf | grep ProcessSizeMax)
first=$(cat coredumps.txt | head -n 1 | cut -b 18-37)
second=$(cat coredumps.txt | tail -n 1 | cut -b 30-49)
correct="* hard core 0"
correct1="fs.suid_dumpable = 0"
correct2="Storage=none"
correct3="ProcessSizeMax=0"



if [ ! -z "cmd3" ] && [ "cmd4" = "correct2" ] && [ "$cmd5" = "correct3" ] && [ "$cmd" = "$correct" ] && [ "$first" = "$correct1" ] && [ "$second" = "$correct1" ]

# && [ "$cmd1" = "$correct1" ]
# && [ "$first" = "$correct1" ]&& [ "$second" = "$correct1" ]

then
	auditres="\033[32mPass\033[m"

else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t\t\t[${auditres}]"

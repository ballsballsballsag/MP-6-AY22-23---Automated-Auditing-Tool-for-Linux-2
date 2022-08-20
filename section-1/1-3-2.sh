#!/bin/sh
section=1
auditno="1.3.2"
auditname="Ensure filesystem integrity is regularly checked"


cmd=$(grep -Ers '^([^#]+\s+)?(\/usr\/s?bin\/|^\s*)aide(\.wrapper)?\s(--check|\$AIDEARGS)\b' /etc/cron.* /etc/crontab /var/spool/cron)
cmd1=$(systemctl is-enabled aidecheck.service)
cmd2=$(systemctl is-enabled aidecheck.timer)
cmd3=$(systemctl status aidecheck.timer)
correct="enabled"


if [ ! -z "$cmd" ]
then
	auditres="\033[32mPass\033[m"

elif [ "$cmd1" = "$correct" ] && [ "$cmd2" = "$correct" ]
# && [ "$second" = "$correct1" ]
then
	auditres="\033[32mPass\033[m"


else
	auditres="\033[31mFail\033[m"


fi
echo "${auditno} \t\t${auditname} \t\t\t[${auditres}]"

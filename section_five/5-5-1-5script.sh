#!/bin/bash
section=5
auditno="5.5.1.5"
auditname="Ensure all users last password change date is in the past"

cmdres=$(sudo awk -F : '/^[^:]+:[^!*]/{print $1}' /etc/shadow | while read -r usr; do [ "$(date --date="$(chage --list "$usr" | grep '^Last password change' | cut -d: -f2)" +%s)" -gt "$(date "+%s")" ] && echo "user: $usr password change date: $(chage --list "$usr" | grep '^Last password change' | cut -d: -f2)"; done)

if [[ "$cmdres" != "" ]]
then
        auditres="\033[31mFail\033[m"
else
	auditres="\033[32mPass\033[m"
fi

echo -e "${auditno} ${auditname} \t[${auditres}]"

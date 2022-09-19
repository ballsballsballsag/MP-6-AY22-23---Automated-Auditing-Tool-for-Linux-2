#!/bin/sh

section=4
auditNo="4.2.1.5"
auditName="Ensure rsyslog is configured to send logs to a remote log host"

cmd=$(grep -E '^\s*([^#]+\s+)?action\(([^#]+\s+)?\btarget=\"?[^#"]+\"?\b' /etc/rsyslog.conf /etc/rsyslog.d/*.conf | grep -v "target=192.168.")
auditres="\033[31mFail\033[m"
if  [ -z "$cmd" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

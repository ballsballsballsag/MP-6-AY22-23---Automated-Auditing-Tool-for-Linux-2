#!/bin/sh

section=4
auditNo="4.2.2.1"
auditName="Ensure journald is configured to send logs to rsyslog"

cmd=$(grep -e ForwardToSyslog /etc/systemd/journald.conf | grep -v "ForwardToSyslog=yes" )
auditres="\033[31mFail\033[m"
if  [ -z "$cmd" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

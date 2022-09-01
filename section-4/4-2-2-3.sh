#!/bin/sh

section=4
auditNo="4.2.2.3"
auditName="Ensure journald is configured to write logfiles to persistent disk"

cmd=$(grep -e Compress /etc/systemd/journald.conf | grep -v "Storage=persistent" | grep 2> \dev\null)
auditres="\033[31mFail\033[m"
if  [ -z "$cmd" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

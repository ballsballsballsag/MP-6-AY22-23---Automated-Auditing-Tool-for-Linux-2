#!/bin/sh
section=5
auditno="5.2.2"
auditname="Ensure sudo commands use pty"

cmdres=$(sudo grep -Ei '^\s*Defaults\s+([^#]+,\s*)?use_pty(,\s+\S+\s*)*(\s+#.*)?$' /etc/sudoers /etc/sudoers.d/*)

if [ "$cmdres" != *"Defaults use_pty"* ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t\t[${auditres}]"

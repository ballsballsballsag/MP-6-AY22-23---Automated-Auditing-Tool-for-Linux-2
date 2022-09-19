#!/bin/sh
section=5
auditno="5.4.3"
auditname="Ensure password reuse is limited"

cmdres=$(grep -E '^\s*password\s+required\s+pam_pwhistory\.so\s+([^#]+\s+)?remember=([5-9]|[1-9][0-9]+)\b' /etc/pam.d/common-password)

if [ "$cmdres" != *"password required pam_pwhistory.so remember="* ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t[${auditres}]"

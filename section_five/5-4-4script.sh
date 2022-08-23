#!/bin/sh
section=5
auditno="5.4.4"
auditname="Ensure password hashing algorithm is SHA-512"

cmdres=$(grep -E '^\s*password\s+(\[success=1\s+default=ignore\]|required)\s+pam_unix\.so\s+([^#]+\s+)?sha512\b' /etc/pam.d/common-password)

if [ "$cmdres" != *"sha512"* ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi

echo "${auditno} \t${auditname} \t\t[${auditres}]"

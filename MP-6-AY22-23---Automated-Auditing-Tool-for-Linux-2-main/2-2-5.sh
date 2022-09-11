#! /bin/sh
section=2
auditno="2.2.5"
auditname="Ensure LDAP client is not installed"

cmd=$(dpkg-query -l | grep ldap-utils)

if [ ! -z "$cmd" ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi
echo "${auditno} \t${auditname} \t\t\t\t   [${auditres}]"

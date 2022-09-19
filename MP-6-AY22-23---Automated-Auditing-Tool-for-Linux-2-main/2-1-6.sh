#! /bin/sh

section=2
auditno="2.1.6"
auditname="Ensure LDAP server is not installed"

cmd=$(dpkg-query -l | grep slapd 2> \dev\null)

if [ ! -z "$cmd" ]
then
        auditres="\033[31mFail\033[m"
else
        auditres="\033[32mPass\033[m"
fi

echo "${auditno} \t${auditname} \t\t\t\t   [${auditres}]"

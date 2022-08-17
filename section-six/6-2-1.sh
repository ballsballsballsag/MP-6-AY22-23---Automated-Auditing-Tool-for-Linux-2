#!/bin/sh

section=6
auditNo="6.2.1"
auditName="Ensure accounts in /etc/passwd use shadowed passwords"

cmd=$(awk -F: '($2 != "x" ) { print $1 " is not set to shadowed passwords "}' /etc/passwd)
auditres="\033[31mFAIL\033[m"
if  [ "$cmd" = "" ] 
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t[${auditres}]"

#!/bin/sh

section=6
auditNo="6.2.2"
auditName="Ensure password fields are not empty"

cmd=$(sudo awk -F: '($2 == "" ) { print $1 " does not have a password "}' /etc/shadow)
auditres="\033[31mFAIL\033[m"
if  [ "$cmd" = "" ] 
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t[${auditres}]"

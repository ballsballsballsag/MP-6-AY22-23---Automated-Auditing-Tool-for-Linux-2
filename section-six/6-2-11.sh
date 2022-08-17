#!/bin/sh 

section=6
auditNo="6.2.11"
auditName="Ensure root is the only UID 0 account"
auditres="\033[31mFAIL\033[m"

if [ $(awk -F: '($3 == 0) { print $1 }' /etc/passwd)  = "root" ]; 
then 
auditres="\033[32mPASS\033[m"
fi 

echo "${auditNo} \t${auditName} \t\t\t\t\t\t[${auditres}]"

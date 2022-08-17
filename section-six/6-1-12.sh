#!/bin/sh

section=6
auditNo="6.1.12"
auditName="Ensure no ungrouped files or directories exist"

cmd=$(sudo df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -nogroup)
auditres="\033[31mFAIL\033[m"
if  [ "$cmd" = null ] 
then
auditres="\033[32mPASS\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t[${auditres}]"

#!/bin/sh

section=6
auditNo="6.1.11"
auditName="Ensure no unowned files or directories exist"

cmd=$(sudo df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -nouser)
auditres="\033[32mPASS\033[m"
if  [ "$cmd" != null ] 
then
auditres="\033[31mFAIL\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

#!/bin/sh

section=6
auditNo="6.1.10"
auditName="Ensure no world writable files exist"

cmd= $(df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -type f -perm -0002 | 2> \dev\null)
auditres="\033[31mFail\033[m"
if  [ "$cmd" = null ] 
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t${auditName} \t\t[${auditres}]"

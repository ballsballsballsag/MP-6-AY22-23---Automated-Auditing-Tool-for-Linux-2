#!/bin/sh

section=6
auditNo="6.1.12"
auditName="Ensure no ungrouped files or directories exist"

cmd=$(df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -nogroup | grep 2> \dev\null)
auditres="\033[31mFail\033[m"
if  [ "$cmd" = null ] 
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t[${auditres}]"

#!/bin/sh

section=4
auditNo="4.1.1.1"
auditName="Ensure auditd is installed"

cmd=$(dpkg-query -l | grep auditd)
if  [ ! -z "$cmd" ]
then
	auditres="\033[32mPASS\033[m"

else
	auditres="\033[31mFAIL\033[m"

fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t\t\t\t[${auditres}]"

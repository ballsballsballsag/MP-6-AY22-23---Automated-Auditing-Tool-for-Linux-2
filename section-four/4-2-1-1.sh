#!/bin/sh

section=4
auditNo="4.2.1.1"
auditName="Ensure rsyslog is installed"

cmd=$(dpkg-query -l | grep rsyslog)
if  [ ! -z "$cmd" ]
then
	auditres="\033[32mPASS\033[m"

else
	auditres="\033[31mFAIL\033[m"

fi

echo "${auditNo} \t${auditName} \t\t\t[${auditres}]"

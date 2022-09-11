#!/bin/sh
section=1
auditno="1.1.1.1"
auditname="Ensure mounting of cramfs filesystem is diabled"
nospacing="Ensure_mounting_of_cramfs_filesystem_is_diabled"

cmd=$(modprobe -n -v cramfs | grep -E '(cramfs|install)')
cmd1=$(lsmod | grep cramfs)
correct="install /bin/true "
failure="Fail"

if [ "$cmd" = "$correct" ] && [ -z "$cmd1" ]
then
	auditres="\033[32mPass\033[m"
#	echo "AuditNumber,Auditname,Pass/Fail"  >>      graph.csv


else
	auditres="\033[31mFail\033[m"
#	echo "AuditNumber,Auditname,Pass/Fail"	>> 	graph.csv
#	echo "${auditno},${nospacing},${failure}" 	>>	graph.csv

fi
echo "${auditno} \t${auditname} \t\t\t[${auditres}]"

#!/bin/sh 

section=6
auditNo="6.2.12"
auditName="Ensure root PATH Integrity"
auditres="\033[31mFAIL\033[m"

cmd= $(RPCV="$(sudo -Hiu root env | grep '^PATH' | cut -d= -f2)" 
echo "$RPCV" | grep -q "::" && echo "root's path contains a empty directory (::)"
echo "$RPCV" | grep -q ":$" && echo "root's path contains a trailing (:)"
for x in $(echo "$RPCV" | tr ":" " "); do
	if [ -d "$x" ]; then
		ls -ldH "$x" | awk '$9 == "." {print "PATH contains current working directory (.)"}
		$3 != "root" {print $9, "is not owned by root"}
		substr($1,6,1) != "-" {print $9, "is group writable"} 
		substr($1,9,1) != "-" {print $9, "is world writable"}'
	else
		echo "$x is not a directory"
	fi 
done)

if [ "$cmd" = "" ]; 
then 
auditres="\033[32mPASS\033[m"
fi 

echo "${auditNo} \t${auditName} \t\t\t\t\t\t\t[${auditres}]"




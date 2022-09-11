#! /bin/sh
section=2
auditno="2.1.15"
auditname="Ensure mail transfer agent is configured for local-only mode"

cmd=$(ss -lntu | grep -E ':25\s' | grep -E -v '\s(127.0.0.1|::1):25\s')
correct=""
if [ "$cmd" = "$correct" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi
echo "${auditno} \t${auditname} \t   [${auditres}]"

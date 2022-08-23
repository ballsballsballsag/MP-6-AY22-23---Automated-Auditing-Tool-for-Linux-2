#!/bin/bash
output1="" output2="" cmdres=""
[ -f /etc/bash.bashrc ] && BRC="/etc/bash.bashrc"
for f in "$BRC" /etc/profile /etc/profile.d/*.sh ; do
	grep -Pq '^\s*([^#]+\s+)?TMOUT=(900|[1-8][0-9][0-9]|[1-9][0-9]|[1-9])\b' "$f" && grep -Pq '^\s*([^#]+;\s*)?readonly\s+TMOUT(\s+|\s*;|\s*$|=(900|[1-8][0-9][0-9]|[1-9][0-9]|[1-9]))\b' "$f" && grep -Pq '^\s*([^#]+;\s*)?export\s+TMOUT(\s+|\s*;|\s*$|=(900|[1-8][0-9][0-9]|[1-9][0-9]|[1-9]))\b' "$f" && output1="$f"
done
grep -Pq '^\s*([^#]+\s+)?TMOUT=(9[0-9][1-9]|9[1-9][0-9]|0+|[1-9]\d{3,})\b' /etc/profile /etc/profile.d/*.sh "$BRC" && output2=$(grep -Ps '^\s*([^#]+\s+)?TMOUT=(9[0-9][1-9]|9[1-9][0-9]|0+|[1-9]\d{3,})\b' /etc/profile /etc/profile.d/*.sh $BRC)
if [ -n "$output1" ] && [ -z "$output2" ]; then
	echo -e "\nPASSED\n\nTMOUT is configured in: \"$output1\"\n"
else
	[ -z "$output1" ] && cmdres="fail"
	[ -n "$output2" ] && cmdres="fail"
fi

section=5
auditno="5.5.5"
auditname="Ensure default user shell timeout is900 seconds or less"

if [ "$cmdres" = "fail" ]
then
	auditres="\033[31mFail\033[m"
else
	auditres="\033[32mPass\033[m"
fi

echo "${auditno} \t${auditname} [${auditres}]"

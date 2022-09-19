#!/bin/sh
section=5
auditno="5.4.2"
auditname="Ensure lockout for failed password attempts is configured"

cmdres=$(grep "pam_tally2" /etc/pam.d/common-auth)
if [ "$cmdres" = "pam_tally2" ]
then
	cmdres=$(grep -E "pam_(tally2|deny)\.so" /etc/pam.d/common-account)
	if [ "$cmdres" != *"pam_tally2.so"* ]
	then
        	auditres="\033[31mFail\033[m"
	else
		auditres="\033[32mPass\033[m"
	fi
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} \t${auditname} \t[${auditres}]"

#!/bin/bash
passing=""
grep -Eiq '^\s*UMASK\s+(0[0-7][2-7]7|[0-7][2-7]7)\b' /etc/login.defs && grep -Eqi '^\s*USERGROUPS_ENAB\s*"?no"?\b' /etc/login.defs && grep -Eq '^\s*session\s+(optional|requisite|required)\s+pam_umask\.so\b' /etc/pam.d/common-session && passing=true
grep -REiq '^\s*UMASK\s+\s*(0[0-7][2-7]7|[0-7][2-7]7|u=(r?|w?|x?)(r?|w?|x?)(r?|w?|x?),g=(r?x?|x?r?),o=)\b' /etc/profile* /etc/bash.bashrc* && passing=true
[ "$passing" = true ] && echo "Default user umask is set"


if [ "$passing" = "" ]
then
	passing=fail
fi

section=5
auditno="5.5.4"
auditname="Ensure default user umask is 027 or more restrictive"

cmdres=$passing

if [ "$cmdres" != "pass" ]
then
	auditres="\033[31mFail\033[m"
else
	cmdres=$(grep -RPi '(^|^[^#]*)\s*umask\s+([0-7][0-7][01][0-7]\b|[0-7][0-7][0-7][0-6]\b|[0-7][01][0-7]\b|[0-7][0-7][0-6]\b|(u=[rwx]{0,3},)?(g=[rwx]{0,3},)?o=[rwx]+\b|(u=[rwx]{1,3},)?g=[^rx]{1,3}(,o=[rwx]{0,3})?\b)' /etc/login.defs /etc/profile* /etc/bash.bashrc*)
	if [ "$cmdres" != "" ]
	then
		auditres="\033[31mFail\033[m"
	else
	auditres="\033[32mPass\033[m"
	fi
fi

echo "${auditno} \t${auditname} \t[${auditres}]"

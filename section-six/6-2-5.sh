#!/bin/sh

section=6
auditNo="6.2.5"
auditName="Ensure users own their home directories"
auditres="\033[31mFAIL\033[m"

cmd= $(cat /etc/passwd | awk -F: '{ print $1 " " $3 " " $6 }' | while read user uid dir; do
  if [ $uid -ge 1000 -a -d "$dir" -a $user != "nfsnobody" ]; then
  owner=$(stat -L -c "%U" "$dir") 
    if [ "$owner" != "$user" ]; then
    echo "The home directory ($dir) of user $user is owned by $owner." 
    fi 
  fi 
done)

if [ "$cmd" = "" ] 
then 
auditres="\033[32mPASS\033[m"
else
auditres="\033[31mFAIL\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t[${auditres}]"

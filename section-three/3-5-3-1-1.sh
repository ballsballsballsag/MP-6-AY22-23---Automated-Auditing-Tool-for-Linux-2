#! /bin/sh
section=3
auditno="3.5.3.1.1"
auditname="Ensure iptabes packages are installed"

cmd=$(apt list iptables iptables-persistent | grep installed | grep 2> \dev\null)
correct="iptables-persistent/<version> [installed,automatic]
iptables/<version> [installed,automatic]"
if [ "$cmd" = "$correct" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} ${auditname} \t\t\t   [${auditres}]"

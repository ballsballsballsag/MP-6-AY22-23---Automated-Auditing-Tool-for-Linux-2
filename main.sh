#!/bin/sh
OS=$(cat /etc/os-release | grep PRETTY_NAME | cut -b 14-19)
first="Ubuntu"
second="CentOS"
third="Debian"
fourth="Fedora"

if [ "$OS" = "$first" ]


then

# Section One 
sno1=1
s1="Initial setup"
ss1="1.1 Filesystem configuration" 
ss2="1.3 Ensure AIDE is installed"
ss3="1.4 Secure Boot Settings"
ss4="1.5 Additional Process Hardening"
ss5="1.6 Mandatory Access Control"
ss6="1.7 Command Line Warning Banners"
ss7="1.8 GNOME Display Manager"

# Section Two
sno2=2
s2="Services"
ss8="2.1 Special Purpose Services"
ss9="2.2 Service Clients"

# Section Three
sno3=3
s3="Network Configuration"
ss10="3.1 Disable unused network protocols and devices"
ss11="3.2 Network Parameters (Host Only)"
ss12="3.3 Network Parameters (Host and Router)"
ss13="3.4 Uncommon Network Protocols"
ss14="3.5 Firewall Configuration"

# Section Four
sno4=4
s4="Logging and Auditing"
ss15="4.1 Configure System Accounting (auditd)"
ss16="4.1.2 Configure Data Retention"
ss17="4.2.1 Configure rsyslog"
ss18="4.2.2 Configure journald"

# Section Five
sno5=5
s5="Access, Authentication and Authorization"
ss19="5.1 Configure time-based job schedulers"
ss20="5.2 Configure sudo"
ss21="5.3 Configure SSH Server"
ss22="5.4 Configure PAM"
ss23="5.5.1 Set Shadow Password Suite Parameters"

# Section Six
sno6=6
s6="System Maintenance"
ss24="6.1 System File Permissions"
ss25="6.2 User and Group settings"

# Section One main.sh
echo -e "\n"
echo -e "========== Benchmark:Ubuntu ==========\n"
echo -e "========== Section ${sno1}: ${s1} ==========\n"
echo -e "$ss1\n"
sh 1-1-1-1.sh
ret=$(sh 1-1-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
	pcount=$((pcount+1))
else
	fcount=$((fcount+1))
fi
sh 1-1-1-2.sh
ret=$(sh 1-1-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-1-3.sh
ret=$(sh 1-1-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-1-4.sh
ret=$(sh 1-1-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-1-5.sh
ret=$(sh 1-1-1-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-1-6.sh
ret=$(sh 1-1-1-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-1-7.sh
ret=$(sh 1-1-1-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-2.sh
ret=$(sh 1-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-3.sh
ret=$(sh 1-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-4.sh
ret=$(sh 1-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-5.sh
ret=$(sh 1-1-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-6.sh
ret=$(sh 1-1-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-7.sh
ret=$(sh 1-1-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-8.sh
ret=$(sh 1-1-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-9.sh
ret=$(sh 1-1-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-10.sh
ret=$(sh 1-1-10.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-11.sh
ret=$(sh 1-1-11.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-12.sh
ret=$(sh 1-1-12.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-13.sh
ret=$(sh 1-1-13.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-14.sh
ret=$(sh 1-1-14.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-15.sh
ret=$(sh 1-1-15.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-16.sh
ret=$(sh 1-1-16.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-17.sh
ret=$(sh 1-1-17.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-18.sh
ret=$(sh 1-1-18.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-19.sh
ret=$(sh 1-1-19.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-20.sh 
ret=$(sh 1-1-20.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-21.sh
ret=$(sh 1-1-21.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi



sh 1-1-22.sh
ret=$(sh 1-1-22.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-23.sh
ret=$(sh 1-1-23.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-1-24.sh
ret=$(sh 1-1-24.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


echo -e " \n"
echo -e "$ss2"
sh 1-3-1.sh
ret=$(sh 1-3-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-3-2.sh
ret=$(sh 1-3-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


echo -e " \n"
echo -e "$ss3"
sh 1-4-1.sh
ret=$(sh 1-4-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-4-2.sh
ret=$(sh 1-4-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-4-3.sh
ret=$(sh 1-4-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-4-4.sh
ret=$(sh 1-4-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


echo -e " \n"
echo "$ss4"

sh 1-5-1.sh
ret=$(sh 1-5-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-5-2.sh
ret=$(sh 1-5-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-5-3.sh
ret=$(sh 1-5-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


sh 1-5-4.sh
ret=$(sh 1-5-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


echo -e " \n"
echo "$ss5"
sh 1-6-1-1.sh
ret=$(sh 1-6-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-6-1-2.sh
ret=$(sh 1-6-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-6-1-3.sh
ret=$(sh 1-6-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-6-1-4.sh
ret=$(sh 1-6-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


echo -e " \n"
echo "$ss6"
sh 1-7-1.sh
ret=$(sh 1-7-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-7-2.sh
ret=$(sh 1-7-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-7-3.sh
ret=$(sh 1-7-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-7-4.sh
ret=$(sh 1-7-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-7-5.sh
ret=$(sh 1-7-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-7-6.sh
ret=$(sh 1-7-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

echo -e " \n"
echo "$ss7"
sh 1-8-2.sh
ret=$(sh 1-8-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-8-3.sh
ret=$(sh 1-8-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-8-4.sh
ret=$(sh 1-8-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-9.sh 
ret=$(sh 1-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

# Section Two main.sh

echo "========== Section ${sno2} : ${s2} =============="
echo "$ss8"
sh 2-1-1-1.sh
ret=$(sh 2-1-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-1-2.sh
ret=$(sh 2-1-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-3.sh
ret=$(sh 2-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-4.sh
ret=$(sh 2-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-5.sh
ret=$(sh 2-1-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-6.sh
ret=$(sh 2-1-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-7.sh
ret=$(sh 2-1-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-8.sh
ret=$(sh 2-1-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-9.sh
ret=$(sh 2-1-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-10.sh
ret=$(sh 2-1-10.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-11.sh
ret=$(sh 2-1-11.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-12.sh
ret=$(sh 2-1-12.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

h 2-1-13.sh
ret=$(sh 2-1-13.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-14.sh
ret=$(sh 2-1-14.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "PasS" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-15.sh
ret=$(sh 2-1-15.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-16.sh
ret=$(sh 2-1-16.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-17.sh
ret=$(sh 2-1-17.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

echo ""
echo "$ss9"
sh 2-2-1.sh
ret=$(sh 2-2-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-2-2.sh
ret=$(sh 2-2-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-2-3.sh
ret=$(sh 2-2-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-2-4.sh
ret=$(sh 2-2-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-2-5.sh
ret=$(sh 2-2-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-2-6.sh
ret=$(sh 2-2-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

echo -e "\n========== Section ${sno3}: ${s3} =========="
echo -e "$ss10"

sh 3-1-2.sh
ret=$(sh 3-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

echo -e "\n$ss11"
sh 3-2-1.sh
ret=$(sh 3-2-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-2-2.sh
ret=$(sh 3-2-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

echo -e "\n$ss12"
sh 3-3-1.sh
ret=$(sh 3-3-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-3-2.sh
ret=$(sh 3-3-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-3-3.sh
ret=$(sh 3-3-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-3-4.sh
ret=$(sh 3-3-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-3-5.sh
ret=$(sh 3-3-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-3-6.sh
ret=$(sh 3-3-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-3-7.sh
ret=$(sh 3-3-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-3-8.sh
ret=$(sh 3-3-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-3-9.sh
ret=$(sh 3-3-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

echo -e "\n$ss13"
sh 3-4-1.sh
ret=$(sh 3-4-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-4-2.sh
ret=$(sh 3-4-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-4-3.sh
ret=$(sh 3-4-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-4-4.sh
ret=$(sh 3-4-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

echo -e "\n$ss14"
sh 3-5-1-1.sh
ret=$(sh 3-5-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-1-2.sh
ret=$(sh 3-5-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-1-3.sh
ret=$(sh 3-5-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-1-4.sh
ret=$(sh 3-5-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-1-7.sh
ret=$(sh 3-5-1-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-2-1.sh
ret=$(sh 3-5-2-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-2-2.sh
ret=$(sh 3-5-2-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-2-4.sh
ret=$(sh 3-5-2-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-2-5.sh
ret=$(sh 3-5-2-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-2-6.sh
ret=$(sh 3-5-2-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-2-8.sh
ret=$(sh 3-5-2-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-2-9.sh
ret=$(sh 3-5-2-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-2-10.sh
ret=$(sh 3-5-2-10.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-3-1-1.sh
ret=$(sh 3-5-3-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-3-1-2.sh
ret=$(sh 3-5-3-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-3-1-3.sh
ret=$(sh 3-5-3-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-3-2-1.sh
ret=$(sh 3-5-3-2-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-3-2-3.sh
ret=$(sh 3-5-3-2-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-3-2-4.sh
ret=$(sh 3-5-3-2-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-3-3-1.sh
ret=$(sh 3-5-3-3-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-3-3-3.sh
ret=$(sh 3-5-3-3-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 3-5-3-3-4.sh
ret=$(sh 3-5-3-3-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

echo -e "\n========== Section ${sno4}: ${s4} =========="
echo -e "$ss15"

sh 4-1-1-1.sh
ret=$(sh 4-1-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-1-2.sh
ret=$(sh 4-1-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-1-3.sh
ret=$(sh 4-1-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-1-4.sh
ret=$(sh 4-1-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-2-1.sh
ret=$(sh 4-1-2-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-2-2.sh
ret=$(sh 4-1-2-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-2-3.sh
ret=$(sh 4-1-2-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-4.sh
ret=$(sh 4-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-5.sh
ret=$(sh 4-1-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-6.sh
ret=$(sh 4-1-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-7.sh
ret=$(sh 4-1-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-8.sh
ret=$(sh 4-1-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-9.sh
ret=$(sh 4-1-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-10.sh
ret=$(sh 4-1-10.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-11.sh
ret=$(sh 4-1-11.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-12.sh
ret=$(sh 4-1-12.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-13.sh
ret=$(sh 4-1-13.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-14.sh
ret=$(sh 4-1-14.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-15.sh
ret=$(sh 4-1-15.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-16.sh
ret=$(sh 4-1-16.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-1-17.sh
ret=$(sh 4-1-17.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

echo -e "\n$ss16"
sh 4-2-1-1.sh
ret=$(sh 4-2-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-2-1-2.sh
ret=$(sh 4-2-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

# sh 4-2-1-3.sh
# ret=$(sh 4-2-1-3.sh)
# ret=${ret::-4}
# ret=${ret: -4}
# if [ "$ret" == "Pass" ]
# then
#        pcount=$((pcount+1))
# else
 #        fcount=$((fcount+1))
# fi

sh 4-2-1-4.sh
ret=$(sh 4-2-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-2-1-5.sh
ret=$(sh 4-2-1-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

# sh 4-2-1-6.sh
# ret=$(sh 4-2-1-6.sh)
# ret=${ret::-4}
# ret=${ret: -4}
# if [ "$ret" == "Pass" ]
# then
#       pcount=$((pcount+1))
# else
#        fcount=$((fcount+1))
# fi

sh 4-2-2-1.sh
ret=$(sh 4-2-2-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-2-2-2.sh
ret=$(sh 4-2-2-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-2-2-3.sh
ret=$(sh 4-2-2-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 4-2-3.sh
ret=$(sh 4-2-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

# sh 4-3.sh
# ret=$(sh 4-3.sh)
# ret=${ret::-4}
# ret=${ret: -4}
# if [ "$ret" == "Pass" ]
# then
#        pcount=$((pcount+1))
# else
#        fcount=$((fcount+1))
# fi

sh 4-4.sh
ret=$(sh 4-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

echo -e "\n========== Section ${sno6}: ${s6} =========="
echo -e "$ss24"

sh 6-1-2.sh
ret=$(sh 6-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-1-3.sh
ret=$(sh 6-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-1-4.sh
ret=$(sh 6-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-1-5.sh
ret=$(sh 6-1-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-1-6.sh
ret=$(sh 6-1-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-1-7.sh
ret=$(sh 6-1-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-1-8.sh
ret=$(sh 6-1-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-1-9.sh
ret=$(sh 6-1-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-1-10.sh
ret=$(sh 6-1-10.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-1-11.sh
ret=$(sh 6-1-11.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-1-12.sh
ret=$(sh 6-1-12.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

# sh 6-1-13.sh
# ret=$(sh 6-1-13.sh)
# ret=${ret::-4}
# ret=${ret: -4}
# if [ "$ret" == "Pass" ]
# then
#        pcount=$((pcount+1))
# else
#       fcount=$((fcount+1))
# fi

# sh 6-1-14.sh
# ret=$(sh 6-1-14.sh)
# ret=${ret::-4}
# ret=${ret: -4}
# if [ "$ret" == "Pass" ]
# then
#        pcount=$((pcount+1))
# else
#        fcount=$((fcount+1))
# fi

# sh 6-1-15.sh
# ret=$(sh 6-1-15.sh)
# ret=${ret::-4}
# ret=${ret: -4}
# if [ "$ret" == "Pass" ]
# then
#        pcount=$((pcount+1))
# else
#        fcount=$((fcount+1))
# fi

# sh 6-1-16.sh
# ret=$(sh 6-1-16.sh)
# ret=${ret::-4}
# ret=${ret: -4}
# if [ "$ret" == "Pass" ]
# then
#        pcount=$((pcount+1))
# else
#        fcount=$((fcount+1))
# fi

# sh 6-1-17.sh
# ret=$(sh 6-1-17.sh)
# ret=${ret::-4}
# ret=${ret: -4}
# if [ "$ret" == "Pass" ]
# then
#        pcount=$((pcount+1))
# else
#        fcount=$((fcount+1))
# fi

echo -e " \n"
echo "Pass: ${pcount}"
echo "Fail: ${fcount}"
echo "1\t Section_1 \t ${fcount}" >> graphdata1.dat
echo "2\t Section_2 \t ${fcount}" >> graphdata1.dat
echo "3\t Section_3 \t ${fcount}" >> graphdata1.dat
echo "4\t Section_4 \t ${fcount}" >> graphdata1.dat
echo "5\t Section_5 \t ${fcount}" >> graphdata1.dat





elif [ "$OS" = "$second" ]
then
s="Initial setup"
ss1="1.1 Filesystem configuration"


echo -e "========== Benchmark:CentOS ==============\n"
echo -e "========== Section ${sno1}:${s1} ==========\n"
echo -e "$ss1\n"
sh 1-1-1-1.sh
ret=$(sh 1-1-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi
sh 1-1-1-2.sh
ret=$(sh 1-1-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi
echo "Pass: ${pcount}"
echo "Fail: ${fcount}"

elif [ "$OS" = "$third" ]
then
s="Initial setup"
ss1="1.1 Filesystem configuration"


echo -e "========== Benchmark:Debian ==============\n"
echo -e "========== Section ${sno1}:${s1} ==========\n"
echo -e "$ss1\n"

sh 1-1-1-1.sh
ret=$(sh 1-1-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi
sh 1-1-1-2.sh
ret=$(sh 1-1-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi
echo "Pass: ${pcount}"
echo "Fail: ${fcount}"

else
s="Initial setup"
ss1="1.1 Filesystem configuration"


echo -e "========== Benchmark:Fedora ==============\n"
echo -e "========== Section ${sno1}:${s1} ==========\n"
echo -e "$ss1\n"

sh 1-1-1-1.sh
ret=$(sh 1-1-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi
sh 1-1-1-2.sh
ret=$(sh 1-1-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


echo "Pass: ${pcount}"
echo "Fail: ${fcount}"

fi
echo "Fail: ${fcount}"

fi

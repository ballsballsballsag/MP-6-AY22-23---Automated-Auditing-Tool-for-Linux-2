#!/bin/sh
OS=$(cat /etc/os-release | grep PRETTY_NAME | cut -b 14-19)
first="Ubuntu"
second="CentOS"
third="Debian"
fourth="Fedora"
info=$(lsb_release -a)
timing=$(timedatectl | head -4)
removal=$(rm /script/report_lvl1.txt)

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
ss22a="5.5 User Accounts and Environment"
ss23="5.5.1 Set Shadow Password Suite Parameters"

# Section Six
sno6=6
s6="System Maintenance"
ss24="6.1 System File Permissions"
ss25="6.2 User and Group settings"


echo -e "\n"
echo -e "This is the OS Name as well as the version $info \n"
echo -e "Time when benchmarking was done $timing \n"
echo -e "Time when benchmarking was done $timing \n" >> /script/report_lvl1.txt
echo -e "========== Benchmark:Ubuntu ==========\n"
echo -e "========== Benchmark:Ubuntu ==========\n" >> /script/report_lvl1.txt
echo -e "========== Section ${sno1}: ${s1} ==========\n" 
echo -e "========== Section ${sno1}: ${s1} ==========\n" >> /script/report_lvl1.txt
echo -e "$ss1\n" 


sh 1-1-1-1.sh 
sh 1-1-1-1.sh	>> /script/report_lvl1.txt
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
sh 1-1-1-2.sh >> /script/report_lvl1.txt
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
sh 1-1-1-3.sh >> /script/report_lvl1.txt
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
sh 1-1-1-4.sh >> /script/report_lvl1.txt
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
sh 1-1-1-5.sh >> /script/report_lvl1.txt
ret=$(sh 1-1-1-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-1-7.sh
sh 1-1-1-7.sh >> /script/report_lvl1.txt
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
sh 1-1-2.sh >> /script/report_lvl1.txt
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
sh 1-1-3.sh >> /script/report_lvl1.txt
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
sh 1-1-4.sh >> /script/report_lvl1.txt
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
sh 1-1-5.sh >> /script/report_lvl1.txt
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
sh 1-1-6.sh >> /script/report_lvl1.txt
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
sh 1-1-7.sh >> /script/report_lvl1.txt
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
sh 1-1-8.sh >> /script/report_lvl1.txt
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
sh 1-1-9.sh >> /script/report_lvl1.txt
ret=$(sh 1-1-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


#sh 1-1-10.sh
#sh 1-1-10.sh >> /script/report_lvl1.txt
#ret=$(sh 1-1-10.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 1-1-11.sh
#sh 1-1-11.sh >> /script/report_lvl1.txt
#ret=$(sh 1-1-11.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi


sh 1-1-12.sh
sh 1-1-12.sh >> /script/report_lvl1.txt
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
sh 1-1-13.sh >> /script/report_lvl1.txt
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
sh 1-1-14.sh >> /script/report_lvl1.txt
ret=$(sh 1-1-14.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


#sh 1-1-15.sh
#sh 1-1-15.sh >> /script/report_lvl1.txt
#ret=$(sh 1-1-15.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi


#sh 1-1-16.sh
#sh 1-1-16.sh >> /script/report_lvl1.txt
#ret=$(sh 1-1-16.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi


#sh 1-1-17.sh
#sh 1-1-17.sh >> /script/report_lvl1.txt
#ret=$(sh 1-1-17.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

sh 1-1-18.sh
sh 1-1-18.sh >> /script/report_lvl1.txt
ret=$(sh 1-1-18.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-22.sh
sh 1-1-22.sh >> /script/report_lvl1.txt
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
sh 1-1-23.sh >> /script/report_lvl1.txt
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
sh 1-1-24.sh >> /script/report_lvl1.txt
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
sh 1-3-1.sh >> /script/report_lvl1.txt
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
sh 1-3-2.sh >> /script/report_lvl1.txt
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
sh 1-4-1.sh >> /script/report_lvl1.txt
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
sh 1-4-2.sh >> /script/report_lvl1.txt
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
sh 1-4-3.sh >> /script/report_lvl1.txt
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
sh 1-4-4.sh >> /script/report_lvl1.txt
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

sh 1-5-2.sh
sh 1-5-2.sh >> /script/report_lvl1.txt
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
sh 1-5-3.sh >> /script/report_lvl1.txt
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
sh 1-5-4.sh >> /script/report_lvl1.txt
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
sh 1-6-1-1.sh >> /script/report_lvl1.txt
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
sh 1-6-1-2.sh >> /script/report_lvl1.txt
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
sh 1-6-1-3.sh >> /script/report_lvl1.txt
ret=$(sh 1-6-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

#sh 1-6-1-4.sh
#sh 1-6-1-4.sh >> /script/report_lvl1.txt
#ret=$(sh 1-6-1-4.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi


echo -e " \n"
echo "$ss6"
sh 1-7-1.sh
sh 1-7-1.sh >> /script/report_lvl1.txt
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
sh 1-7-2.sh >> /script/report_lvl1.txt
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
sh 1-7-3.sh >> /script/report_lvl1.txt
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
sh 1-7-4.sh >> /script/report_lvl1.txt
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
sh 1-7-5.sh >> /script/report_lvl1.txt
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
sh 1-7-6.sh >> /script/report_lvl1.txt
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
sh 1-8-2.sh >> /script/report_lvl1.txt
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
sh 1-8-3.sh >> /script/report_lvl1.txt
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
sh 1-8-4.sh >> /script/report_lvl1.txt
ret=$(sh 1-8-4.sh)
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
sh 2-1-1-1.sh   >> /script/report_lvl1.txt
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
sh 2-1-1-2.sh   >> /script/report_lvl1.txt
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
sh 2-1-3.sh   >> /script/report_lvl1.txt
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
sh 2-1-4.sh   >> /script/report_lvl1.txt
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
sh 2-1-5.sh   >> /script/report_lvl1.txt
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
sh 2-1-6.sh   >> /script/report_lvl1.txt
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
sh 2-1-7.sh   >> /script/report_lvl1.txt
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
sh 2-1-8.sh   >> /script/report_lvl1.txt
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
sh 2-1-9.sh   >> /script/report_lvl1.txt
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
sh 2-1-10.sh   >> /script/report_lvl1.txt
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
sh 2-1-11.sh   >> /script/report_lvl1.txt
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
sh 2-1-12.sh   >> /script/report_lvl1.txt
ret=$(sh 2-1-12.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 2-1-13.sh
sh 2-1-13.sh   >> /script/report_lvl1.txt
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
sh 2-1-14.sh   >> /script/report_lvl1.txt
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
sh 2-1-15.sh   >> /script/report_lvl1.txt
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
sh 2-1-16.sh   >> /script/report_lvl1.txt
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
sh 2-1-17.sh   >> /script/report_lvl1.txt
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
sh 2-2-1.sh   >> /script/report_lvl1.txt
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
sh 2-2-2.sh   >> /script/report_lvl1.txt
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
sh 2-2-3.sh   >> /script/report_lvl1.txt
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
sh 2-2-4.sh   >> /script/report_lvl1.txt
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
sh 2-2-5.sh   >> /script/report_lvl1.txt
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
sh 2-2-6.sh   >> /script/report_lvl1.txt
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
sh 3-1-2.sh   >> /script/report_lvl1.txt
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
sh 3-2-1.sh   >> /script/report_lvl1.txt
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
sh 3-2-2.sh   >> /script/report_lvl1.txt
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
sh 3-3-1.sh   >> /script/report_lvl1.txt
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
sh 3-3-2.sh   >> /script/report_lvl1.txt
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
sh 3-3-3.sh   >> /script/report_lvl1.txt
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
sh 3-3-4.sh   >> /script/report_lvl1.txt
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
sh 3-3-5.sh   >> /script/report_lvl1.txt
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
sh 3-3-6.sh   >> /script/report_lvl1.txt
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
sh 3-3-7.sh   >> /script/report_lvl1.txt
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
sh 3-3-8.sh   >> /script/report_lvl1.txt
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
sh 3-3-9.sh   >> /script/report_lvl1.txt
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
#sh 3-4-1.sh
#sh 3-4-1.sh   >> /script/report_lvl1.txt
#ret=$(sh 3-4-1.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 3-4-2.sh
#sh 3-4-2.sh   >> /script/report_lvl1.txt
#ret=$(sh 3-4-2.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 3-4-3.sh
#sh 3-4-3.sh   >> /script/report_lvl1.txt
#ret=$(sh 3-4-3.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 3-4-4.sh
#sh 3-4-4.sh   >> /script/report_lvl1.txt
#ret=$(sh 3-4-4.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

echo -e "\n$ss14"
sh 3-5-1-1.sh
sh 3-5-1-1.sh   >> /script/report_lvl1.txt
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
sh 3-5-1-2.sh   >> /script/report_lvl1.txt
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
sh 3-5-1-3.sh   >> /script/report_lvl1.txt
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
sh 3-5-1-4.sh   >> /script/report_lvl1.txt
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
sh 3-5-1-7.sh   >> /script/report_lvl1.txt
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
sh 3-5-2-1.sh   >> /script/report_lvl1.txt
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
sh 3-5-2-2.sh   >> /script/report_lvl1.txt
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
sh 3-5-2-4.sh   >> /script/report_lvl1.txt
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
sh 3-5-2-5.sh   >> /script/report_lvl1.txt
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
sh 3-5-2-6.sh   >> /script/report_lvl1.txt
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
sh 3-5-2-8.sh   >> /script/report_lvl1.txt
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
sh 3-5-2-9.sh   >> /script/report_lvl1.txt
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
sh 3-5-2-10.sh   >> /script/report_lvl1.txt
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
sh 3-5-3-1-1.sh   >> /script/report_lvl1.txt
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
sh 3-5-3-1-2.sh   >> /script/report_lvl1.txt
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
sh 3-5-3-1-3.sh   >> /script/report_lvl1.txt
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
sh 3-5-3-2-1.sh   >> /script/report_lvl1.txt
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
sh 3-5-3-2-3.sh   >> /script/report_lvl1.txt
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
sh 3-5-3-2-4.sh   >> /script/report_lvl1.txt
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
sh 3-5-3-3-1.sh   >> /script/report_lvl1.txt
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
sh 3-5-3-3-3.sh   >> /script/report_lvl1.txt
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
sh 3-5-3-3-4.sh   >> /script/report_lvl1.txt
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

#sh 4-1-1-1.sh
#sh 4-1-1-1.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-1-1.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#       pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-1-2.sh
#sh 4-1-1-2.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-1-2.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-1-3.sh
#sh 4-1-1-3.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-1-3.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-1-4.sh
#sh 4-1-1-4.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-1-4.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi


#sh 4-1-2-3.sh
#sh 4-1-2-3.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-2-3.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

sh 4-1-4.sh
sh 4-1-4.sh   >> /script/report_lvl1.txt
ret=$(sh 4-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

#sh 4-1-5.sh
#sh 4-1-5.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-5.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-6.sh
#sh 4-1-6.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-6.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-7.sh
#sh 4-1-7.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-7.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-8.sh
#sh 4-1-8.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-8.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-9.sh
#sh 4-1-9.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-9.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-10.sh
#sh 4-1-10.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-10.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-11.sh
#sh 4-1-11.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-11.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-12.sh
#sh 4-1-12.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-12.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-13.sh
#sh 4-1-13.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-13.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-14.sh
#sh 4-1-14.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-14.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-15.sh
#sh 4-1-15.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-15.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

#sh 4-1-16.sh
#sh 4-1-16.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-16.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi
#
#sh 4-1-17.sh
#sh 4-1-17.sh   >> /script/report_lvl1.txt
#ret=$(sh 4-1-17.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi

echo -e "\n$ss16"
sh 4-2-1-1.sh
sh 4-2-1-1.sh   >> /script/report_lvl1.txt
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
sh 4-2-1-2.sh   >> /script/report_lvl1.txt
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
#sh 4-2-1-3.sh   >> /script/report_lvl1.txt
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
sh 4-2-1-4.sh   >> /script/report_lvl1.txt
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
sh 4-2-1-5.sh   >> /script/report_lvl1.txt
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
# sh 4-2-1-6.sh   >> /script/report_lvl1.txt
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
sh 4-2-2-1.sh   >> /script/report_lvl1.txt
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
sh 4-2-2-2.sh   >> /script/report_lvl1.txt
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
sh 4-2-2-3.sh   >> /script/report_lvl1.txt
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
sh 4-2-3.sh   >> /script/report_lvl1.txt
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
# sh 4-3.sh   >> /script/report_lvl1.txt
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
sh 4-4.sh   >> /script/report_lvl1.txt
ret=$(sh 4-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

if test -f "section5.csv"; then
    rm section5.csv
fi
exportcontent=""
exportcontent='"Audit No.", "Audit Title", "Status"'
echo $exportcontent >> section5.csv

echo -e "\n========== Section ${sno5}: ${s5} =========="
echo -e "$ss19"


sh 5-1-1script.sh
sh 5-1-1script.sh >> /script/report_lvl1.txt
ret=$(sh 5-1-1script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
	pcount=$((pcount+1))
	exportcontent='"S5.1.1", "Ensure cron daemon is enabled and running", "Pass"'
	echo $exportcontent >> section5.csv
else
	fcount=$((fcount+1))
	exportcontent='"S5.1.1", "Ensure cron daemon is enabled and running", "Fail"'
        echo $exportcontent >> section5.csv
fi

sh 5-1-2script.sh
sh 5-1-2script.sh >> /script/report_lvl1.txt
ret=$(sh 5-1-2script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.1.2", "Ensure permissions on /etc/crontab are configured", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.1.2", "Ensure permissions on /etc/crontab are configured", "Fail"'
        echo $exportcontent >> section5.csv
fi
sh 5-1-3script.sh
sh 5-1-3script.sh >> /script/report_lvl1.txt
ret=$(sh 5-1-3script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S5.1.3", "Ensure permissions on /etc/cron.hourly are configured", "Pass"'
	echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
	exportcontent='"S5.1.3", "Ensure permissions on /etc/cron.hourly are configured", "Fail"'
	echo $exportcontent >> section5.csv
fi
sh 5-1-4script.sh
sh 5-1-4script.sh >> /script/report_lvl1.txt
ret=$(sh 5-1-4script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S5.1.4", "Ensure permissions on /etc/cron.daily are configured", "Pass"'
	echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
	exportcontent='"S5.1.4", "Ensure permissions on /etc/cron.daily are configured", "Fail"'
	echo $exportcontent >> section5.csv
fi
sh 5-1-5script.sh
sh 5-1-5script.sh >> /script/report_lvl1.txt
ret=$(sh 5-1-5script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S5.1.5", "Ensure permissions on /etc/cron.weekly are configured", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
	exportcontent='"S5.1.5", "Ensure permissions on /etc/cron.weekly are configured", "Fail"'
        echo $exportcontent >> section5.csv
fi
sh 5-1-6script.sh
sh 5-1-6script.sh >> /script/report_lvl1.txt
ret=$(sh 5-1-6script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S5.1.6", "Ensure permissions on /etc/cron.monthly are configured", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
	exportcontent='"S5.1.6", "Ensure permissions on /etc/cron.monthly are configured", "Fail"'
        echo $exportcontent >> section5.csv
fi
sh 5-1-7script.sh
sh 5-1-7script.sh >> /script/report_lvl1.txt
ret=$(sh 5-1-7script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S5.1.7", "Ensure permissions on /etc/cron.d are configured", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
	exportcontent='"S5.1.7", "Ensure permissions on /etc/cron.d are configured", "Fail"'
        echo $exportcontent >> section5.csv
fi
sh 5-1-8script.sh
sh 5-1-8script.sh >> /script/report_lvl1.txt
ret=$(sh 5-1-8script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.1.8", "Ensure cron is restricted to authorized users", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.1.8", "Ensure cron is restricted to authorized users", "Fail"'
        echo $exportcontent >> section5.csv
fi
sh 5-1-9script.sh
sh 5-1-9script.sh >> /script/report_lvl1.txt
ret=$(sh 5-1-9script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.1.9", "Ensure at is restricted to authorized users", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.1.9", "Ensure at is restricted to authorized users", "Fail"'
        echo $exportcontent >> section5.csv
fi

echo -e "\n$ss20"

sh 5-2-1script.sh
sh 5-2-1script.sh >> /script/report_lvl1.txt
ret=$(sh 5-2-1script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S5.2.1", "Ensure sudo is installed", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
	exportcontent='"S5.2.1", "Ensure sudo is installed", "Fail"'
        echo $exportcontent >> section5.csv
fi
sh 5-2-2script.sh
sh 5-2-2script.sh >> /script/report_lvl1.txt
ret=$(sh 5-2-2script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.2.2", "Ensure sudo commands use pty", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.2.2", "Ensure sudo commands use pty", "Fail"'
        echo $exportcontent >> section5.csv
fi
sh 5-2-3script.sh
sh 5-2-3script.sh >> /script/report_lvl1.txt
ret=$(sh 5-2-3script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.2.3", "Ensure sudo log file exists", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.2.3", "Ensure sudo log file exists", "Fail"'
        echo $exportcontent >> section5.csv
fi
sshinstalled=$(apt version openssh-server 2> /dev/null)
if [ "$sshinstalled" == *"openssh-server"* ]
then
	echo $ss3
	sh 5-3-1script.sh
	sh 5-3-1script.sh >> /script/report_lvl1.txt
	ret=$(sh 5-3-1script.sh)
	ret=${ret::-4}
	ret=${ret: -4}
	if [ "$ret" == "Pass" ]
	then
	        pcount=$((pcount+1))
	        exportcontent='"S5.3.1", "Ensure permissions on /etc/ssh/sshd_config are configured", "Pass"'
	        echo $exportcontent >> section5.csv
	else
	        fcount=$((fcount+1))
	        exportcontent='"S5.3.1", "Ensure permissions on /etc/ssh/sshd_config are configured", "Fail"'
	        echo $exportcontent >> section5.csv
	fi
else
	exportcontent='"S5.3", "Configure SSH Server", "Not Installed"'
	echo $exportcontent >> section5.csv
	echo -e "${ss3} \t\t\t\t\t[\033[33mNot Installed\033[m]"
fi

echo -e "\n$ss21"

sh 5-4-1script.sh
sh 5-4-1script.sh >> /script/report_lvl1.txt
ret=$(sh 5-4-1script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.4.1", "Ensure password creation requirements are configured", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.4.1", "Ensure password creation requirements are configured", "Fail"'
        echo $exportcontent >> section5.csv
fi
sh 5-4-2script.sh
sh 5-4-1script.sh >> /script/report_lvl1.txt
ret=$(sh 5-4-2script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.4.2", "Ensure lockout for failed password attempts is configured", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.4.2", "Ensure lockout for failed password attempts is configured", "Fail"'
        echo $exportcontent >> section5.csv
fi
sh 5-4-3script.sh
sh 5-4-3script.sh >> /script/report_lvl1.txt
ret=$(sh 5-4-3script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.4.3", "Ensure password reuse is limited", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.4.3", "Ensure password reuse is limited", "Fail"'
        echo $exportcontent >> section5.csv
fi
sh 5-4-4script.sh
sh 5-4-4script.sh >> /script/report_lvl1.txt
ret=$(sh 5-4-4script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.4.4", "Ensure password hashing algorithm is SHA-512", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.4.4", "Ensure password hashing algorithm is SHA-512", "Fail"'
        echo $exportcontent >> section5.csv
fi

echo -e "\n$ss22"
echo -e "\n$ss22a"

bash 5-5-1-1script.sh
bash 5-5-1-1script.sh >> /script/report_lvl1.txt
ret=$(bash 5-5-1-1script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.1.1", "Ensure minimum days between password changes is configured", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.1.1", "Ensure minimum days between password changes is configured", "Fail"'
        echo $exportcontent >> section5.csv
fi
bash 5-5-1-2script.sh
bash 5-5-1-2script.sh >> /script/report_lvl1.txt
ret=$(bash 5-5-1-2script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.1.2", "Ensure password expiration is 365 days or less", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.1.2", "Ensure password expiration is 365 days or less", "Fail"'
        echo $exportcontent >> section5.csv
fi
bash 5-5-1-3script.sh
bash 5-5-1-3script.sh >> /script/report_lvl1.txt
ret=$(bash 5-5-1-3script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.1.3", "Ensure password expiration warning days is 7 or more", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.1.3", "Ensure password expiration warning days is 7 or more", "Fail"'
        echo $exportcontent >> section5.csv
fi
bash 5-5-1-4script.sh
bash 5-5-1-4script.sh >> /script/report_lvl1.txt
ret=$(bash 5-5-1-4script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.1.4", "Ensure inactive password lock is 30 days or less", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.1.4", "Ensure inactive password lock is 30 days or less", "Fail"'
        echo $exportcontent >> section5.csv
fi
bash 5-5-1-5script.sh
bash 5-5-1-5script.sh >> /script/report_lvl1.txt
ret=$(bash 5-5-1-5script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.1.5", "Ensure all users last password change date is in the past", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.1.5", "Ensure all users last password change date is in the past", "Fail"'
        echo $exportcontent >> section5.csv
fi
bash 5-5-2script.sh
bash 5-5-2script.sh >> /script/report_lvl1.txt
ret=$(bash 5-5-2script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.2", "Ensure system accounts are secured", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.2", "Ensure system accounts are secured", "Fail"'
        echo $exportcontent >> section5.csv
fi
sh 5-5-3script.sh
bash 5-5-3script.sh >> /script/report_lvl1.txt
ret=$(sh 5-5-3script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.3", "Ensure default group for the root account is GID 0", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.3", "Ensure default group for the root account is GID 0", "Fail"'
        echo $exportcontent >> section5.csv
fi
sh 5-5-4script.sh
bash 5-5-4script.sh >> /script/report_lvl1.txt
ret=$(sh 5-5-4script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.4", "Ensure default user umask is 027 or more restrictive", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.4", "Ensure default user umask is 027 or more restrictive", "Fail"'
        echo $exportcontent >> section5.csv
fi
sh 5-5-5script.sh
bash 5-5-5script.sh >> /script/report_lvl1.txt
ret=$(sh 5-5-5script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.5", "Ensure default user shell timeout is900 seconds or less", "Pass"'
        echo $exportcontent >> section5.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.5", "Ensure default user shell timeout is900 seconds or less", "Fail"'
        echo $exportcontent >> section5.csv
fi

bash htmlpt1.sh
echo -e "\t['Status', 'Count']," >> res5.html
echo -e "\t['Pass', ${pcount}]," >> res5.html
echo -e "\t['Fail', ${fcount}]" >> res5.html
bash htmlpt2.sh

echo -e "\n========== Section ${sno6}: ${s6} =========="
echo -e "$ss24"

sh 6-1-2.sh
sh 6-1-2.sh   >> /script/report_lvl1.txt
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
sh 6-1-3.sh   >> /script/report_lvl1.txt
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
sh 6-1-4.sh   >> /script/report_lvl1.txt
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
sh 6-1-5.sh   >> /script/report_lvl1.txt
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
sh 6-1-6.sh   >> /script/report_lvl1.txt
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
sh 6-1-7.sh   >> /script/report_lvl1.txt
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
sh 6-1-8.sh   >> /script/report_lvl1.txt
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
sh 6-1-9.sh   >> /script/report_lvl1.txt
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
sh 6-1-10.sh   >> /script/report_lvl1.txt
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
sh 6-1-11.sh   >> /script/report_lvl1.txt
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
sh 6-1-12.sh   >> /script/report_lvl1.txt
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
# sh 6-1-13.sh   >> /script/report_lvl1.txt
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
# sh 6-1-14.sh   >> /script/report_lvl1.txt
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
# sh 6-1-15.sh   >> /script/report_lvl1.txt
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
# sh 6-1-16.sh   >> /script/report_lvl1.txt
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
# sh 6-1-17.sh   >> /script/report_lvl1.txt
# ret=$(sh 6-1-17.sh)
# ret=${ret::-4}
# ret=${ret: -4}
# if [ "$ret" == "Pass" ]
# then
#        pcount=$((pcount+1))
# else
#        fcount=$((fcount+1))
# fi

echo -e "\n$ss25"

sh 6-2-1.sh
sh 6-2-1.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-2.sh
sh 6-2-2.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-3.sh
sh 6-2-3.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-4.sh
sh 6-2-4.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-5.sh
sh 6-2-5.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-6.sh
sh 6-2-6.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-7.sh
sh 6-2-7.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-8.sh
sh 6-2-8.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-9.sh
sh 6-2-9.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-10.sh
sh 6-2-10.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-10.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-11.sh
sh 6-2-11.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-11.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-12.sh
sh 6-2-12.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-12.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-13.sh
sh 6-2-13.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-13.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-14.sh
sh 6-2-14.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-14.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-15.sh
sh 6-2-15.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-15.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-16.sh
sh 6-2-16.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-16.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 6-2-17.sh
sh 6-2-17.sh   >> /script/report_lvl1.txt
ret=$(sh 6-2-17.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi








echo -e " \n"
echo "Pass: ${pcount}"
echo "Fail: ${fcount}"





elif [ "$OS" = "$second" ]
then
s="Initial setup"
ss1="1.1 Filesystem configuration"


echo -e "\n"
echo -e "This is the OS Name as well as the version $info \n"
echo -e "Time when benchmarking was done $timing \n" >> /script/report_lvl1.txt
echo -e "========== Benchmark:CentOS ==============\n" >> /script/report_lvl1.txt
echo -e "========== Section ${sno}:${s} ==========\n" >> /script/report_lvl1.txt
echo -e "$ss1\n"

sh 1-1-1-1CentOS.sh
sh 1-1-1-1CentOS.sh   >> /script/report_lvl1.txt
ret=$(sh 1-1-1-1CentOS.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi
sh 1-1-1-2CentOS.sh
sh 1-1-1-2CentOS.sh   >> /script/report_lvl1.txt
ret=$(sh 1-1-1-2CentOS.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-1-3CentOS.sh
sh 1-1-1-3CentOS.sh   >> /script/report_lvl1.txt
ret=$(sh 1-1-1-3CentOS.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-2-1CentOS.sh
sh 1-1-2-1CentOS.sh   >> /script/report_lvl1.txt
ret=$(sh 1-1-2-1CentOS.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-2-2CentOS.sh
sh 1-1-2-2CentOS.sh   >> /script/report_lvl1.txt
ret=$(sh 1-1-2-2CentOS.sh)
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


echo -e "\n"
echo -e "This is the OS Name as well as the version $info \n"
echo -e "========== Benchmark:Debian ==============\n"
echo -e "========== Section ${sno}:${s} ==========\n"
echo -e "$ss1\n"

sh 1-1-1-1Debian.sh
sh 1-1-1-1Debian.sh  >> /script/report_lvl1.txt
ret=$(sh 1-1-1-1Debian.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-1-2Debian.sh
sh 1-1-1-2Debian.sh  >> /script/report_lvl1.txt
ret=$(sh 1-1-1-2Debian.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-1-3Debian.sh
sh 1-1-1-3Debian.sh  >> /script/report_lvl1.txt
ret=$(sh 1-1-1-3Debian.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi
sh 1-1-1-4Debian.sh
sh 1-1-1-4Debian.sh  >> /script/report_lvl1.txt
ret=$(sh 1-1-1-4Debian.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi
sh 1-1-1-5Debian.sh
sh 1-1-1-5Debian.sh  >> /script/report_lvl1.txt
ret=$(sh 1-1-1-5Debian.sh)
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

echo -e "\n"
echo -e "This is the OS Name as well as the version $info \n"
echo -e "========== Benchmark:Fedora ==============\n"
echo -e "========== Section ${sno}:${s} ==========\n"
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

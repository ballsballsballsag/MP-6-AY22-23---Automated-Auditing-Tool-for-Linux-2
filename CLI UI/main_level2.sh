#!/bin/sh
OS=$(cat /etc/os-release | grep PRETTY_NAME | cut -b 14-19)
first="Ubuntu"
second="CentOS"
third="Debian"
fourth="Fedora"
info=$(lsb_release -a)
timing=$(timedatectl | head -4)
removal=$(rm /script/report_lvl2.txt)

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
echo -e "Time when benchmarking was done $timing \n" >> /script/report.txt
echo -e "========== Benchmark:Ubuntu ==========\n"
echo -e "========== Benchmark:Ubuntu ==========\n" >> /script/report.txt
echo -e "========== Section ${sno1}: ${s1} ==========\n" 
echo -e "========== Section ${sno1}: ${s1} ==========\n" >> /script/report.txt
echo -e "$ss1\n" 
echo -e "$ss1\n " >> /script/report_lvl2.txt
sh 1-1-10.sh
sh 1-1-10.sh >> /script/report_lvl2.txt
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
sh 1-1-11.sh >> /script/report_lvl2.txt
ret=$(sh 1-1-11.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

sh 1-1-15.sh
sh 1-1-15.sh >> /script/report_lvl2.txt
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
sh 1-1-16.sh >> /script/report_lvl2.txt
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
sh 1-1-17.sh >> /script/report_lvl2.txt
ret=$(sh 1-1-17.sh)
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
echo -e " \n" >> /script/report_lvl2.txt
echo "$ss5" >> /script/report_lvl2.txt

sh 1-6-1-4.sh
sh 1-6-1-4.sh >> /script/report_lvl2.txt
ret=$(sh 1-6-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

echo -e "\n========== Section ${sno3}: ${s3} =========="
echo -e "\n$ss13"
echo -e "\n========== Section ${sno3}: ${s3} ==========" >> /script/report_lvl2.txt
echo -e "\n$ss13" >> /script/report_lvl2.txt
sh 3-4-1.sh
sh 3-4-1.sh   >> /script/report_lvl2.txt
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
sh 3-4-2.sh   >> /script/report_lvl2.txt
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
sh 3-4-3.sh   >> /script/report_lvl2.txt
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
sh 3-4-4.sh   >> /script/report_lvl2.txt
ret=$(sh 3-4-4.sh)
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
echo -e "\n========== Section ${sno4}: ${s4} =========="  >> /script/report_lvl2.txt
echo -e "$ss15">> /script/report_lvl2.txt

sh 4-1-1-1.sh
sh 4-1-1-1.sh   >> /script/report_lvl2.txt
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
sh 4-1-1-2.sh   >> /script/report_lvl2.txt
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
sh 4-1-1-3.sh   >> /script/report_lvl2.txt
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
sh 4-1-1-4.sh   >> /script/report_lvl2.txt
ret=$(sh 4-1-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi


echo -e "$ss16"
echo -e "$ss16"  >> /script/report_lvl2.txt
#needs 4-1-2-1.sh
#needs 4-1-2-2.sh
sh 4-1-2-3.sh
sh 4-1-2-3.sh   >> /script/report_lvl2.txt
ret=$(sh 4-1-2-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
else
        fcount=$((fcount+1))
fi

# needs sh 4-1-3.sh
sh 4-1-4.sh
sh 4-1-4.sh   >> /script/report_lvl2.txt
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
sh 4-1-5.sh   >> /script/report_lvl2.txt
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
sh 4-1-6.sh   >> /script/report_lvl2.txt
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
sh 4-1-7.sh   >> /script/report_lvl2.txt
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
sh 4-1-8.sh   >> /script/report_lvl2.txt
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
sh 4-1-9.sh   >> /script/report_lvl2.txt
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
sh 4-1-10.sh   >> /script/report_lvl2.txt
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
sh 4-1-11.sh   >> /script/report_lvl2.txt
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
sh 4-1-12.sh   >> /script/report_lvl2.txt
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
sh 4-1-13.sh   >> /script/report_lvl2.txt
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
sh 4-1-14.sh   >> /script/report_lvl2.txt
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
sh 4-1-15.sh   >> /script/report_lvl2.txt
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
sh 4-1-16.sh   >> /script/report_lvl2.txt
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
sh 4-1-17.sh   >> /script/report_lvl2.txt
ret=$(sh 4-1-17.sh)
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
#echo -e "$ss21"
#needs sh 5-3-6.sh
#needs sh 5-3-20.sh
fi

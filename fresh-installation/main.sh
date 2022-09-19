#!/bin/sh
OS=$(cat /etc/os-release | grep PRETTY_NAME | cut -b 14-19)
first="Ubuntu"
second="CentOS"
third="Debian"
fourth="Fedora"
info=$(lsb_release -a)
timing=$(timedatectl | head -4)
removal=$(rm /script/report.txt 2> /dev/null)
creation=$(touch /script/report.txt)
authorized=$(sudo chmod 400 /script/report.txt)
pcount=0
fcount=0
pcountc=0
fcountc=0

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
ss20a="5.3 Configure SSH Server"
ss21="5.4 Configure PAM"
ss22a="5.5 User Accounts and Environment"
ss23="5.5.1 Set Shadow Password Suite Parameters"

# Section Six
sno6=6
s6="System Maintenance"
ss24="6.1 System File Permissions"
ss25="6.2 User and Group settings"


echo -e "\n"
echo -e "This is the OS Name as well as the version $info \n"
echo -e "Time when benchmarking was done $timing \n" >> /script/report.txt
echo -e "========== Benchmark:Ubuntu ==========\n" >> /script/report.txt
echo -e "========== Section ${sno}: ${s} ==========\n" >> /script/report.txt
echo -e "$ss1\n" >> /script/report.txt

if test -f "results.csv"; then
    rm results.csv
fi
exportcontent=""
exportcontent='"Audit No.", "Audit Title", "Status"'
echo $exportcontent >> results.csv

sh 1-1-1-1.sh 
sh 1-1-1-1.sh	>> /script/report.txt
ret=$(sh 1-1-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
	pcount=$((pcount+1))
	exportcontent='"S1.1.1.1", "Ensure mounting of cramfs filesystems is disabled ", "Pass"'
	echo $exportcontent >> results.csv
else
	fcount=$((fcount+1))
	exportcontent='"S1.1.1.1", "Ensure mounting of cramfs filesystems is disabled ", "Fail"'
    	echo $exportcontent >> results.csv
fi
sh 1-1-1-2.sh 
sh 1-1-1-2.sh >> /script/report.txt
ret=$(sh 1-1-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S1.1.1.2", "Ensure mounting of freevxfs filesystems is disabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.1.2", "Ensure mounting of freevxfs filesystems is disabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-1-1-3.sh 
sh 1-1-1-3.sh >> /script/report.txt
ret=$(sh 1-1-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.1.3", "Ensure mounting of jffs2 filesystems is disabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.1.3", "Ensure mounting of jffs2 filesystems is disabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-1-1-4.sh 
sh 1-1-1-4.sh >> /script/report.txt
ret=$(sh 1-1-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.1.4", "Ensure mounting of hfs filesystems is disabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.1.4", "Ensure mounting of hfs filesystems is disabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-1-1-5.sh 
sh 1-1-1-5.sh >> /script/report.txt
ret=$(sh 1-1-1-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.1.5", "Ensure mounting of hfsplus filesystems is disabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.1.5", "Ensure mounting of hfsplus filesystems is disabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-1-1-7.sh
sh 1-1-1-7.sh >> /script/report.txt
ret=$(sh 1-1-1-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.1.7", "Ensure mounting of udf filesystems is disabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.1.7", "Ensure mounting of udf filesystems is disabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-1-2.sh
sh 1-1-2.sh >> /script/report.txt
ret=$(sh 1-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.2", "Ensure /tmp is configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.2", "Ensure /tmp is configured", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-3.sh
sh 1-1-3.sh >> /script/report.txt
ret=$(sh 1-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.3", "Ensure nodev option set on /tmp partition", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.3", "Ensure nodev option set on /tmp partition", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-4.sh
sh 1-1-4.sh >> /script/report.txt
ret=$(sh 1-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.4", "Ensure nosuid option set on /tmp partition", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.4", "Ensure nosuid option set on /tmp partition", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-5.sh
sh 1-1-5.sh >> /script/report.txt
ret=$(sh 1-1-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.5", "Ensure noexec option set on /tmp partition", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.5", "Ensure noexec option set on /tmp partition", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-6.sh
sh 1-1-6.sh >> /script/report.txt
ret=$(sh 1-1-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.6", "Ensure /dev/shm is configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.6", "Ensure /dev/shm is configured", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-7.sh
sh 1-1-7.sh >> /script/report.txt
ret=$(sh 1-1-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.7", "Ensure nodev option set on /dev/shm partition", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.7", "Ensure nodev option set on /dev/shm partition", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-8.sh
sh 1-1-8.sh >> /script/report.txt
ret=$(sh 1-1-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.8", "Ensure nosuid option set on /dev/shm partition", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.8", "Ensure nosuid option set on /dev/shm partition", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-9.sh
sh 1-1-9.sh >> /script/report.txt
ret=$(sh 1-1-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.9", "Ensure noexec option set on /dev/shm partition", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.9", "Ensure noexec option set on /dev/shm partition", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-10.sh
sh 1-1-10.sh >> /script/report.txt
ret=$(sh 1-1-10.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.10", "Ensure separate partition exists for /var", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.10", "Ensure separate partition exists for /var", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-1-11.sh
sh 1-1-11.sh >> /script/report.txt
ret=$(sh 1-1-11.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.11", "Ensure separate partition exists for /var/tmp", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.11", "Ensure separate partition exists for /var/tmp", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-12.sh
sh 1-1-12.sh >> /script/report.txt
ret=$(sh 1-1-12.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.12", "Ensure /var/tmp partition includes the nodev option", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.12", "Ensure /var/tmp partition includes the nodev option", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-13.sh
sh 1-1-13.sh >> /script/report.txt
ret=$(sh 1-1-13.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.13", "Ensure /var/tmp partition includes the nosuid option", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.13", "Ensure /var/tmp partition includes the nosuid option", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-14.sh
sh 1-1-14.sh >> /script/report.txt
ret=$(sh 1-1-14.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.14", "Ensure /var/tmp partition includes the noexec option", "Pass"'
        echo $exportcontent >> results.csv

else
        fcount=$((fcount+1))
	exportcontent='"S1.1.14", "Ensure /var/tmp partition includes the noexec option", "Fail"'
        echo $exportcontent >> results.csv

fi


sh 1-1-15.sh
sh 1-1-15.sh >> /script/report.txt
ret=$(sh 1-1-15.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.15", "Ensure separate partition exists for /var/log", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.15", "Ensure separate partition exists for /var/log", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-16.sh
sh 1-1-16.sh >> /script/report.txt
ret=$(sh 1-1-16.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.16", "Ensure separate partition exists for /var/log/audit", "Pass"'
        echo $exportcontent >> results.csv

else
        fcount=$((fcount+1))
	exportcontent='"S1.1.16", "Ensure separate partition exists for /var/log/audit", "Fail"'
        echo $exportcontent >> results.csv

fi


sh 1-1-17.sh
sh 1-1-17.sh >> /script/report.txt
ret=$(sh 1-1-17.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.17", "Ensure separate partition exists for /home", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.17", "Ensure separate partition exists for /home", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-1-18.sh
sh 1-1-18.sh >> /script/report.txt
ret=$(sh 1-1-18.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.18", "Ensure /home partition includes the nodev option", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.18", "Ensure /home partition includes the nodev option", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-1-22.sh
sh 1-1-22.sh >> /script/report.txt
ret=$(sh 1-1-22.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.22", "Ensure sticky bit is set on all world-writable directories", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.22", "Ensure sticky bit is set on all world-writable directories", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-23.sh
sh 1-1-23.sh >> /script/report.txt
ret=$(sh 1-1-23.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.23", "Disable Automounting", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.23", "Disable Automounting", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-1-24.sh
sh 1-1-24.sh >> /script/report.txt
ret=$(sh 1-1-24.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.1.24", "Disable USB Storage", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.1.24", "Disable USB Storage", "Fail"'
        echo $exportcontent >> results.csv
fi


echo -e " \n"
echo -e "$ss2"
sh 1-3-1.sh
sh 1-3-1.sh >> /script/report.txt
ret=$(sh 1-3-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.3.1", "Ensure AIDE is installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.3.1", "Ensure AIDE is installed", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-3-2.sh
sh 1-3-2.sh >> /script/report.txt
ret=$(sh 1-3-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.3.2", "Ensure filesystem integrity is regularly checked", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.3.2", "Ensure filesystem integrity is regularly checked", "Fail"'
        echo $exportcontent >> results.csv
fi


echo -e " \n"
echo -e "$ss3"
sh 1-4-1.sh
sh 1-4-1.sh >> /script/report.txt
ret=$(sh 1-4-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.4.1", "Ensure permissions on bootloader config are not overridden", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.4.1", "Ensure permissions on bootloader config are not overridden", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-4-2.sh
sh 1-4-2.sh >> /script/report.txt
ret=$(sh 1-4-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.4.2", "Ensure bootloader password is set", "Pass"'
        echo $exportcontent >> results.csv

else
        fcount=$((fcount+1))
	exportcontent='"S1.4.2", "Ensure bootloader password is set", "Fail"'
        echo $exportcontent >> results.csv

fi


sh 1-4-3.sh
sh 1-4-3.sh >> /script/report.txt
ret=$(sh 1-4-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.4.3", "Ensure permissions on bootloader config are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.4.3", "Ensure permissions on bootloader config are configured", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-4-4.sh
sh 1-4-4.sh >> /script/report.txt
ret=$(sh 1-4-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.4.4", "Ensure authentication required for single user mode", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.4.4", "Ensure authentication required for single user mode", "Fail"'
        echo $exportcontent >> results.csv
fi


echo -e " \n"
echo "$ss4"

sh 1-5-2.sh
sh 1-5-2.sh >> /script/report.txt
ret=$(sh 1-5-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.5.2", "Ensure address space layout randomization (ASLR) is enabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.5.2", "Ensure address space layout randomization (ASLR) is enabled", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-5-3.sh
sh 1-5-3.sh >> /script/report.txt
ret=$(sh 1-5-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.5.3", "Ensure prelink is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.5.3", "Ensure prelink is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 1-5-4.sh
sh 1-5-4.sh >> /script/report.txt
ret=$(sh 1-5-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.5.4", "Ensure core dumps are restricted", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.5.4", "Ensure core dumps are restricted", "Fail"'
        echo $exportcontent >> results.csv
fi


echo -e " \n"
echo "$ss5"
sh 1-6-1-1.sh
sh 1-6-1-1.sh >> /script/report.txt
ret=$(sh 1-6-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.6.1.1", "Ensure AppArmor is installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.6.1.1", "Ensure AppArmor is installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-6-1-2.sh
sh 1-6-1-2.sh >> /script/report.txt
ret=$(sh 1-6-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.6.1.2", "Ensure AppArmor is enabled in the bootloader configuration", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.6.1.2", "Ensure AppArmor is enabled in the bootloader configuration", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-6-1-3.sh
sh 1-6-1-3.sh >> /script/report.txt
ret=$(sh 1-6-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.6.1.3", "Ensure all AppArmor Profiles are in enforce or complain mode", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.6.1.3", "Ensure all AppArmor Profiles are in enforce or complain mode", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-6-1-4.sh
sh 1-6-1-4.sh >> /script/report.txt
ret=$(sh 1-6-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.6.1.4", "Ensure all AppArmor Profiles are enforcing", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.6.1.4", "Ensure all AppArmor Profiles are enforcing", "Fail"'
        echo $exportcontent >> results.csv
fi


echo -e " \n"
echo "$ss6"
sh 1-7-1.sh
sh 1-7-1.sh >> /script/report.txt
ret=$(sh 1-7-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.7.1", "Ensure message of the day is configured properly", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.7.1", "Ensure message of the day is configured properly", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-7-2.sh
sh 1-7-2.sh >> /script/report.txt
ret=$(sh 1-7-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.7.2", "Ensure local login warning banner is configured properly", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.7.2", "Ensure local login warning banner is configured properly", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-7-3.sh
sh 1-7-3.sh >> /script/report.txt
ret=$(sh 1-7-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.7.3", "Ensure remote login warning banner is configured properly", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.7.3", "Ensure remote login warning banner is configured properly", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-7-4.sh
sh 1-7-4.sh >> /script/report.txt
ret=$(sh 1-7-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.7.4", "Ensure permissions on /etc/motd are configured", "Pass"'
        echo $exportcontent >> results.csv

else
	fcount=$((fcount+1))
	exportcontent='"S1.7.4", "Ensure permissions on /etc/motd are configured", "Fail"'
        echo $exportcontent >> results.csv

fi

sh 1-7-5.sh
sh 1-7-5.sh >> /script/report.txt
ret=$(sh 1-7-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.7.5", "Ensure permissions on /etc/issue are configured", "Pass"'
        echo $exportcontent >> results.csv

else
        fcount=$((fcount+1))
	exportcontent='"S1.7.5", "Ensure permissions on /etc/issue are configured", "Fail"'
        echo $exportcontent >> results.csv

fi

sh 1-7-6.sh
sh 1-7-6.sh >> /script/report.txt
ret=$(sh 1-7-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.7.6", "Ensure permissions on /etc/issue.net are configured", "Pass"'
        echo $exportcontent >> results.csv

else
        fcount=$((fcount+1))
	exportcontent='"S1.7.6", "Ensure permissions on /etc/issue.net are configured", "Fail"'
        echo $exportcontent >> results.csv

fi

echo -e " \n"
echo "$ss7"

sh 1-8-2.sh
sh 1-8-2.sh >> /script/report.txt
ret=$(sh 1-8-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.8.2", "Ensure GDM login banner is configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.8.2", "Ensure GDM login banner is configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-8-3.sh
sh 1-8-3.sh >> /script/report.txt
ret=$(sh 1-8-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.8.3", "Ensure disable-user-list is enabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.8.3", "Ensure disable-user-list is enabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 1-8-4.sh
sh 1-8-4.sh >> /script/report.txt
ret=$(sh 1-8-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S1.8.4", "Ensure XDCMP is not enabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S1.8.4", "Ensure XDCMP is not enabled", "Fail"'
        echo $exportcontent >> results.csv
fi
pcountc=$pcount
fcountc=$fcount
bash htmlpt1.sh
echo "['Audit', 'Status']," >> res.html
echo "['Pass', ${pcountc}]," >> res.html
echo "['Fail', ${fcountc}]])" >> res.html
# Section Two main.sh

echo "========== Section ${sno2} : ${s2} =============="
echo "$ss8"
sh 2-1-1-1.sh
sh 2-1-1-1.sh   >> /script/report.txt
ret=$(sh 2-1-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.1.1", "Ensure time synchronization is in use", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.1.1.1", "Ensure time synchronization is in use", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-1-2.sh
sh 2-1-1-2.sh   >> /script/report.txt
ret=$(sh 2-1-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.1.2", "Ensure systemd-timesyncd is configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.1.1.2", "Ensure systemd-timesyncd is configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-3.sh
sh 2-1-3.sh   >> /script/report.txt
ret=$(sh 2-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.3", "Ensure Avahi Server is not installed", "Pass"'
        echo $exportcontent >> results.csv

else
	fcount=$((fcount+1))
	exportcontent='"S2.1.3", "Ensure Avahi Server is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-4.sh
sh 2-1-4.sh   >> /script/report.txt
ret=$(sh 2-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.4", "Ensure CUPS is not installed", "Pass"'
        echo $exportcontent >> results.csv

else
	fcount=$((fcount+1))
	exportcontent='"S2.1.4", "Ensure CUPS is not installed", "Fail"'
        echo $exportcontent >> results.csv

fi

sh 2-1-5.sh
sh 2-1-5.sh   >> /script/report.txt
ret=$(sh 2-1-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.5", "Ensure DHCP Server is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.1.5", "Ensure DHCP Server is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-6.sh
sh 2-1-6.sh   >> /script/report.txt
ret=$(sh 2-1-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.6", "Ensure LDAP Server is not installed", "Pass"'
        echo $exportcontent >> results.csv

else
	exportcontent='"S2.1.6", "Ensure LDAP Server is not installed", "Fail"'
        echo $exportcontent >> results.csv
	fcount=$((fcount+1))
fi

sh 2-1-7.sh
sh 2-1-7.sh   >> /script/report.txt
ret=$(sh 2-1-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
	exportcontent='"S2.1.7", "Ensure NFS is not installed", "Pass"'
        echo $exportcontent >> results.csv
        pcount=$((pcount+1))
else
	exportcontent='"S2.1.7", "Ensure NFS is not installed", "Fail"'
        echo $exportcontent >> results.csv
        fcount=$((fcount+1))
fi

sh 2-1-8.sh
sh 2-1-8.sh   >> /script/report.txt
ret=$(sh 2-1-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.8", "Ensure DNS Server is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.1.8", "Ensure DNS Server is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-9.sh
sh 2-1-9.sh   >> /script/report.txt
ret=$(sh 2-1-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.9", "Ensure FTP Server is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.1.9", "Ensure FTP Server is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-10.sh
sh 2-1-10.sh   >> /script/report.txt
ret=$(sh 2-1-10.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.10", "Ensure HTTP Server is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.1.10", "Ensure HTTP Server is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-11.sh
sh 2-1-11.sh   >> /script/report.txt
ret=$(sh 2-1-11.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.11", "Ensure IMAP and POP3 Server is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.1.11", "Ensure IMAP and POP3 Server is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-12.sh
sh 2-1-12.sh   >> /script/report.txt
ret=$(sh 2-1-12.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.12", "Ensure Samba is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.1.12", "Ensure Samba is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-13.sh
sh 2-1-13.sh   >> /script/report.txt
ret=$(sh 2-1-13.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.13", "Ensure HTTP Proxy Server is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.1.13", "Ensure HTTP Proxy Server is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-14.sh
sh 2-1-14.sh   >> /script/report.txt
ret=$(sh 2-1-14.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "PasS" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.14", "Ensure SNMP Server is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.1.14", "Ensure SNMP Server is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-15.sh
sh 2-1-15.sh   >> /script/report.txt
ret=$(sh 2-1-15.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.15", "Ensure mail transfer agent is configured for local-only mode", "Pass"'
        echo $exportcontent >> results.csv

else
	fcount=$((fcount+1))
	exportcontent='"S2.1.15", "Ensure mail transfer agent is configured for local-only mode", "Fail"'
        echo $exportcontent >> results.csv

fi

sh 2-1-16.sh
sh 2-1-16.sh   >> /script/report.txt
ret=$(sh 2-1-16.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.16", "Ensure rsync service is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.1.16", "Ensure rsync service is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-17.sh
sh 2-1-17.sh   >> /script/report.txt
ret=$(sh 2-1-17.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.1.17", "Ensure NIS Server is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.1.17", "Ensure NIS Server is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

echo ""
echo "$ss9"
sh 2-2-1.sh
sh 2-2-1.sh   >> /script/report.txt
ret=$(sh 2-2-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.2.1", "Ensure NIS Client is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.2.1", "Ensure NIS Client is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-2-2.sh
sh 2-2-2.sh   >> /script/report.txt
ret=$(sh 2-2-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.2.2", "Ensure rsh client is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.2.2", "Ensure rsh client is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-2-3.sh
sh 2-2-3.sh   >> /script/report.txt
ret=$(sh 2-2-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.2.3", "Ensure talk client is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.2.3", "Ensure talk client is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-2-4.sh
sh 2-2-4.sh   >> /script/report.txt
ret=$(sh 2-2-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.2.4", "Ensure telnet client is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.2.4", "Ensure telnet client is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-2-5.sh
sh 2-2-5.sh   >> /script/report.txt
ret=$(sh 2-2-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.2.5", "Ensure LDAP client is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.2.5", "Ensure LDAP client is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-2-6.sh
sh 2-2-6.sh   >> /script/report.txt
ret=$(sh 2-2-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S2.2.6", "Ensure RPC is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S2.2.6", "Ensure RPC is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

pcounta=$((pcount-pcountc))
pcountc=$pcount
fcounta=$((fcount-fcountc))
fcountc=$fcount
echo "var data2 = google.visualization.arrayToDataTable([" >> res.html
echo "['Audit', 'Status']," >> res.html
echo "['Pass', ${pcounta}]," >> res.html
echo "['Fail', ${fcounta}]])" >> res.html

echo -e "\n========== Section ${sno3}: ${s3} =========="
echo -e "$ss10"

sh 3-1-2.sh
sh 3-1-2.sh   >> /script/report.txt
ret=$(sh 3-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.1.2", "Ensure wireless interfaces are disabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.1.2", "Ensure wireless interfaces are disabled", "Fail"'
        echo $exportcontent >> results.csv
fi

echo -e "\n$ss11"
sh 3-2-1.sh
sh 3-2-1.sh   >> /script/report.txt
ret=$(sh 3-2-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.2.1", "Ensure packet redirect sending is disabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.2.1", "Ensure packet redirect sending is disabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-2-2.sh
sh 3-2-2.sh   >> /script/report.txt
ret=$(sh 3-2-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.2.2", "Ensure IP forwarding is disabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.2.2", "Ensure IP forwarding is disabled", "Fail"'
        echo $exportcontent >> results.csv
fi

echo -e "\n$ss12"
sh 3-3-1.sh
sh 3-3-1.sh   >> /script/report.txt
ret=$(sh 3-3-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.3.1", "Ensure source routed packets are not accepted", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.3.1", "Ensure source routed packets are not accepted", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-3-2.sh
sh 3-3-2.sh   >> /script/report.txt
ret=$(sh 3-3-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.3.2", "Ensure ICMP redirects are not accepted", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.3.2", "Ensure ICMP redirects are not accepted", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-3-3.sh
sh 3-3-3.sh   >> /script/report.txt
ret=$(sh 3-3-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.3.3", "Ensure secure ICMP redirects are not accepted", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.3.3", "Ensure secure ICMP redirects are not accepted", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-3-4.sh
sh 3-3-4.sh   >> /script/report.txt
ret=$(sh 3-3-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.3.4", "Ensure suspicious packets are logged", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.3.4", "Ensure suspicious packets are logged", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-3-5.sh
sh 3-3-5.sh   >> /script/report.txt
ret=$(sh 3-3-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.3.5", "Ensure broadcast ICMP requests are ignored", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.3.5", "Ensure broadcast ICMP requests are ignored", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-3-6.sh
sh 3-3-6.sh   >> /script/report.txt
ret=$(sh 3-3-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.3.6", "Ensure bogus ICMP responses are ignored", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.3.6", "Ensure bogus ICMP responses are ignored", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-3-7.sh
sh 3-3-7.sh   >> /script/report.txt
ret=$(sh 3-3-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.3.7", "Ensure Reverse Path Filtering is enabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.3.7", "Ensure Reverse Path Filtering is enabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-3-8.sh
sh 3-3-8.sh   >> /script/report.txt
ret=$(sh 3-3-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.3.8", "Ensure TCP SYN Cookies is enabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.3.8", "Ensure TCP SYN Cookies is enabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-3-9.sh
sh 3-3-9.sh   >> /script/report.txt
ret=$(sh 3-3-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.3.9", "Ensure IPv6 router advertisements are not accepted", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.3.9", "Ensure IPv6 router advertisements are not accepted", "Fail"'
        echo $exportcontent >> results.csv
fi

echo -e "\n$ss13"
sh 3-4-1.sh
sh 3-4-1.sh   >> /script/report.txt
ret=$(sh 3-4-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.4.1", "Ensure DCCP is disabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.4.1", "Ensure DCCP is disabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-4-2.sh
sh 3-4-2.sh   >> /script/report.txt
ret=$(sh 3-4-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.4.2", "Ensure SCTP is disabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.4.2", "Ensure SCTP is disabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-4-3.sh
sh 3-4-3.sh   >> /script/report.txt
ret=$(sh 3-4-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.4.3", "Ensure RDS is disabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.4.3", "Ensure RDS is disabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-4-4.sh
sh 3-4-4.sh   >> /script/report.txt
ret=$(sh 3-4-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.4.4", "Ensure TIPC is disabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.4.4", "Ensure TIPC is disabled", "Fail"'
        echo $exportcontent >> results.csv
fi

echo -e "\n$ss14"
sh 3-5-1-1.sh
sh 3-5-1-1.sh   >> /script/report.txt
ret=$(sh 3-5-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.1.1", "Ensure ufw is installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.1.1", "Ensure ufw is installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-1-2.sh
sh 3-5-1-2.sh   >> /script/report.txt
ret=$(sh 3-5-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.1.2", "Ensure iptables-persistent is not installed with ufw", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.1.2", "Ensure iptables-persistent is not installed with ufw", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-1-3.sh
sh 3-5-1-3.sh   >> /script/report.txt
ret=$(sh 3-5-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.1.3", "Ensure ufw service is enabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.1.3", "Ensure ufw service is enabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-1-4.sh
sh 3-5-1-4.sh   >> /script/report.txt
ret=$(sh 3-5-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.1.4", "Ensure ufw loopback traffic is configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.1.4", "Ensure ufw loopback traffic is configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-1-7.sh
sh 3-5-1-7.sh   >> /script/report.txt
ret=$(sh 3-5-1-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.1.7", "Ensure ufw default deny firewall policy", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.1.7", "Ensure ufw default deny firewall policy", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-2-1.sh
sh 3-5-2-1.sh   >> /script/report.txt
ret=$(sh 3-5-2-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.2.1", "Ensure nftables is installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.2.1", "Ensure nftables is installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-2-2.sh
sh 3-5-2-2.sh   >> /script/report.txt
ret=$(sh 3-5-2-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.2.2", "Ensure ufw is uninstalled or disabled with nftables", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.2.2", "Ensure ufw is uninstalled or disabled with nftables", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-2-4.sh
sh 3-5-2-4.sh   >> /script/report.txt
ret=$(sh 3-5-2-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.2.4", "Ensure a nftables table exists", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.2.4", "Ensure a nftables table exists", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-2-5.sh
sh 3-5-2-5.sh   >> /script/report.txt
ret=$(sh 3-5-2-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.2.5", "Ensure nftables base chains exist", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.2.5", "Ensure nftables base chains exist", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-2-6.sh
sh 3-5-2-6.sh   >> /script/report.txt
ret=$(sh 3-5-2-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.2.6", "Ensure nftables loopback traffic is configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.2.6", "Ensure nftables loopback traffic is configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-2-8.sh
sh 3-5-2-8.sh   >> /script/report.txt
ret=$(sh 3-5-2-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.2.8", "Ensure nftables default deny firewall policy", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.2.8", "Ensure nftables default deny firewall policy", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-2-9.sh
sh 3-5-2-9.sh   >> /script/report.txt
ret=$(sh 3-5-2-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.2.9", "Ensure nftables service is enabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.2.9", "Ensure nftables service is enabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-2-10.sh
sh 3-5-2-10.sh   >> /script/report.txt
ret=$(sh 3-5-2-10.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.2.10", "Ensure nftables rules are permanent", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.2.10", "Ensure nftables rules are permanent", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-3-1-1.sh
sh 3-5-3-1-1.sh   >> /script/report.txt
ret=$(sh 3-5-3-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.3.1.1", "Ensure iptables packages are installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.3.1.1", "Ensure iptables packages are installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-3-1-2.sh
sh 3-5-3-1-2.sh   >> /script/report.txt
ret=$(sh 3-5-3-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.3.1.2", "Ensure nftables is not installed with iptables", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.3.1.2", "Ensure nftables is not installed with iptables", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-3-1-3.sh
sh 3-5-3-1-3.sh   >> /script/report.txt
ret=$(sh 3-5-3-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.3.1.3", "Ensure ufw is uninstalled or disabled with iptables", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.3.1.3", "Ensure ufw is uninstalled or disabled with iptables", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-3-2-1.sh
sh 3-5-3-2-1.sh   >> /script/report.txt
ret=$(sh 3-5-3-2-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.3.2.1", "Ensure iptables loopback traffic is configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.3.2.1", "Ensure iptables loopback traffic is configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-3-2-3.sh
sh 3-5-3-2-3.sh   >> /script/report.txt
ret=$(sh 3-5-3-2-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.3.2.3", "Ensure iptables default deny firewall policy", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.3.2.3", "Ensure iptables default deny firewall policy", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-3-2-4.sh
sh 3-5-3-2-4.sh   >> /script/report.txt
ret=$(sh 3-5-3-2-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.3.2.4", "Ensure iptables firewall rules exist for all open ports", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.3.2.4", "Ensure iptables firewall rules exist for all open ports", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-3-3-1.sh
sh 3-5-3-3-1.sh   >> /script/report.txt
ret=$(sh 3-5-3-3-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.3.3.1", "Ensure ip6tables loopback traffic is configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.3.3.1", "Ensure ip6tables loopback traffic is configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-3-3-3.sh
sh 3-5-3-3-3.sh   >> /script/report.txt
ret=$(sh 3-5-3-3-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.3.3.3", "Ensure ip6tables default deny firewall policy", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.3.3.3", "Ensure ip6tables default deny firewall policy", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 3-5-3-3-4.sh
sh 3-5-3-3-4.sh   >> /script/report.txt
ret=$(sh 3-5-3-3-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S3.5.3.3.4", "Ensure ip6tables firewall rules exist for all open ports", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S3.5.3.3.4", "Ensure ip6tables firewall rules exist for all open ports", "Fail"'
        echo $exportcontent >> results.csv
fi

pcounta=$((pcount-pcountc))
pcountc=$pcount
fcounta=$((fcount-fcountc))
fcountc=$fcount
echo "var data3 = google.visualization.arrayToDataTable([" >> res.html
echo "['Audit', 'Status']," >> res.html
echo "['Pass', ${pcounta}]," >> res.html
echo "['Fail', ${fcounta}]])" >> res.html

echo -e "\n========== Section ${sno4}: ${s4} =========="
echo -e "$ss15"

sh 4-1-1-1.sh
sh 4-1-1-1.sh   >> /script/report.txt
ret=$(sh 4-1-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.1.1", "Ensure auditd is installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.1.1", "Ensure auditd is installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-1-2.sh
sh 4-1-1-2.sh   >> /script/report.txt
ret=$(sh 4-1-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.1.2", "Ensure auditd service is enabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.1.2", "Ensure auditd service is enabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-1-3.sh
sh 4-1-1-3.sh   >> /script/report.txt
ret=$(sh 4-1-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.1.3", "Ensure auditing for processes that start prior to auditd is enabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.1.3", "Ensure auditing for processes that start prior to auditd is enabled", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-1-4.sh
sh 4-1-1-4.sh   >> /script/report.txt
ret=$(sh 4-1-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.1.4", "Ensure audit_backlog_limit is sufficient", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.1.4", "Ensure audit_backlog_limit is sufficient", "Fail"'
        echo $exportcontent >> results.csv
fi


sh 4-1-2-3.sh
sh 4-1-2-3.sh   >> /script/report.txt
ret=$(sh 4-1-2-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.2.3", "Ensure system is disabled when audit logs are full", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.2.3", "Ensure system is disabled when audit logs are full", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-4.sh
sh 4-1-4.sh   >> /script/report.txt
ret=$(sh 4-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.4", "Ensure events that modify user/group information are collected", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.4", "Ensure events that modify user/group information are collected", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-5.sh
sh 4-1-5.sh   >> /script/report.txt
ret=$(sh 4-1-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.5", "Ensure events that modify the system`s network environment are collected", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.5", "Ensure events that modify the system`s network environment are collected", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-6.sh
sh 4-1-6.sh   >> /script/report.txt
ret=$(sh 4-1-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.6", "Ensure events that modify the system`s Mandatory Access Controls are collected", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.6", "Ensure events that modify the system`s Mandatory Access Controls are collected", "Pass"'
        echo $exportcontent >> results.csv
fi

sh 4-1-7.sh
sh 4-1-7.sh   >> /script/report.txt
ret=$(sh 4-1-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.7", "Ensure login and logout events are collected", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.7", "Ensure login and logout events are collected", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-8.sh
sh 4-1-8.sh   >> /script/report.txt
ret=$(sh 4-1-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.8", "Ensure session initiation information is collected", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.8", "Ensure session initiation information is collected", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-9.sh
sh 4-1-9.sh   >> /script/report.txt
ret=$(sh 4-1-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.9", "Ensure discretionary access control permission modification events are collected", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.9", "Ensure discretionary access control permission modification events are collected", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-10.sh
sh 4-1-10.sh   >> /script/report.txt
ret=$(sh 4-1-10.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.10", "Ensure unsuccessful unauthorized file access attempts are collected", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.10", "Ensure unsuccessful unauthorized file access attempts are collected", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-12.sh
sh 4-1-12.sh   >> /script/report.txt
ret=$(sh 4-1-12.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.12", "Ensure successful file system mounts are collected", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.12", "Ensure successful file system mounts are collected", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-13.sh
sh 4-1-13.sh   >> /script/report.txt
ret=$(sh 4-1-13.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.13", "Ensure file deletion events by users are collected", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.13", "Ensure file deletion events by users are collected", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-14.sh
sh 4-1-14.sh   >> /script/report.txt
ret=$(sh 4-1-14.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.14", "Ensure changes to system administration scope (sudoers) is collected", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.14", "Ensure changes to system administration scope (sudoers) is collected", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-15.sh
sh 4-1-15.sh   >> /script/report.txt
ret=$(sh 4-1-15.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.15", "Ensure system administrator command executions (sudo) are collected", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.15", "Ensure system administrator command executions (sudo) are collected", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-16.sh
sh 4-1-16.sh   >> /script/report.txt
ret=$(sh 4-1-16.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.16", "Ensure kernel module loading and unloading is collected", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.16", "Ensure kernel module loading and unloading is collected", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-1-17.sh
sh 4-1-17.sh   >> /script/report.txt
ret=$(sh 4-1-17.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.1.17", "Ensure the audit configuration is immutable", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.1.17", "Ensure the audit configuration is immutable", "Fail"'
        echo $exportcontent >> results.csv
fi

echo -e "\n$ss16"
sh 4-2-1-1.sh
sh 4-2-1-1.sh   >> /script/report.txt
ret=$(sh 4-2-1-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.2.1.1", "Ensure rsyslog is installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.2.1.1", "Ensure rsyslog is installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-2-1-2.sh
sh 4-2-1-2.sh   >> /script/report.txt
ret=$(sh 4-2-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.2.1.2", "Ensure rsyslog Service is enabled", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.2.1.2", "Ensure rsyslog Service is enabled", "Fail"'
        echo $exportcontent >> results.csv
fi

# sh 4-2-1-3.sh
#sh 4-2-1-3.sh   >> /script/report.txt
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
sh 4-2-1-4.sh   >> /script/report.txt
ret=$(sh 4-2-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.2.1.4", "Ensure rsyslog default file permissions configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.2.1.4", "Ensure rsyslog default file permissions configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-2-1-5.sh
sh 4-2-1-5.sh   >> /script/report.txt
ret=$(sh 4-2-1-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.2.1.5", "Ensure rsyslog is configured to send logs to a remote log host", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.2.1.5", "Ensure rsyslog is configured to send logs to a remote log host", "Fail"'
        echo $exportcontent >> results.csv
fi

# sh 4-2-1-6.sh
# sh 4-2-1-6.sh   >> /script/report.txt
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
sh 4-2-2-1.sh   >> /script/report.txt
ret=$(sh 4-2-2-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.2.2.1", "Ensure journald is configured to send logs to rsyslog", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.2.2.1", "Ensure journald is configured to send logs to rsyslog", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-2-2-2.sh
sh 4-2-2-2.sh   >> /script/report.txt
ret=$(sh 4-2-2-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.2.2.2", "Ensure journald is configured to compress large log files", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.2.2.2", "Ensure journald is configured to compress large log files", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-2-2-3.sh
sh 4-2-2-3.sh   >> /script/report.txt
ret=$(sh 4-2-2-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.2.2.3", "Ensure journald is configured to write logfiles to persistent disk", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.2.2.3", "Ensure journald is configured to write logfiles to persistent disk", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 4-2-3.sh
sh 4-2-3.sh   >> /script/report.txt
ret=$(sh 4-2-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.2.3", "Ensure permissions on all logfiles are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.2.3", "Ensure permissions on all logfiles are configured", "Fail"'
        echo $exportcontent >> results.csv
fi

# sh 4-3.sh
# sh 4-3.sh   >> /script/report.txt
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
sh 4-4.sh   >> /script/report.txt
ret=$(sh 4-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S4.4", "Ensure logrotate assigns appropriate permissions", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S4.4", "Ensure logrotate assigns appropriate permissions", "Fail"'
        echo $exportcontent >> results.csv
fi

pcounta=$((pcount-pcountc))
pcountc=$pcount
fcounta=$((fcount-fcountc))
fcountc=$fcount
echo "var data4 = google.visualization.arrayToDataTable([" >> res.html
echo "['Audit', 'Status']," >> res.html
echo "['Pass', ${pcounta}]," >> res.html
echo "['Fail', ${fcounta}]])" >> res.html

echo -e "\n========== Section ${sno5}: ${s5} =========="
echo -e "$ss19"


sh 5-1-1script.sh
ret=$(sh 5-1-1script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
	pcount=$((pcount+1))
	exportcontent='"S5.1.1", "Ensure cron daemon is enabled and running", "Pass"'
	echo $exportcontent >> results.csv
else
	fcount=$((fcount+1))
	exportcontent='"S5.1.1", "Ensure cron daemon is enabled and running", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 5-1-2script.sh
ret=$(sh 5-1-2script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.1.2", "Ensure permissions on /etc/crontab are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.1.2", "Ensure permissions on /etc/crontab are configured", "Fail"'
        echo $exportcontent >> results.csv
fi
sh 5-1-3script.sh
ret=$(sh 5-1-3script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S5.1.3", "Ensure permissions on /etc/cron.hourly are configured", "Pass"'
	echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S5.1.3", "Ensure permissions on /etc/cron.hourly are configured", "Fail"'
	echo $exportcontent >> results.csv
fi
sh 5-1-4script.sh
ret=$(sh 5-1-4script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S5.1.4", "Ensure permissions on /etc/cron.daily are configured", "Pass"'
	echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S5.1.4", "Ensure permissions on /etc/cron.daily are configured", "Fail"'
	echo $exportcontent >> results.csv
fi
sh 5-1-5script.sh
ret=$(sh 5-1-5script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S5.1.5", "Ensure permissions on /etc/cron.weekly are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S5.1.5", "Ensure permissions on /etc/cron.weekly are configured", "Fail"'
        echo $exportcontent >> results.csv
fi
sh 5-1-6script.sh
ret=$(sh 5-1-6script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S5.1.6", "Ensure permissions on /etc/cron.monthly are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S5.1.6", "Ensure permissions on /etc/cron.monthly are configured", "Fail"'
        echo $exportcontent >> results.csv
fi
sh 5-1-7script.sh
ret=$(sh 5-1-7script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S5.1.7", "Ensure permissions on /etc/cron.d are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S5.1.7", "Ensure permissions on /etc/cron.d are configured", "Fail"'
        echo $exportcontent >> results.csv
fi
sh 5-1-8script.sh
ret=$(sh 5-1-8script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.1.8", "Ensure cron is restricted to authorized users", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.1.8", "Ensure cron is restricted to authorized users", "Fail"'
        echo $exportcontent >> results.csv
fi
sh 5-1-9script.sh
ret=$(sh 5-1-9script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.1.9", "Ensure at is restricted to authorized users", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.1.9", "Ensure at is restricted to authorized users", "Fail"'
        echo $exportcontent >> results.csv
fi

echo -e "\n$ss20"

sh 5-2-1script.sh
ret=$(sh 5-2-1script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S5.2.1", "Ensure sudo is installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S5.2.1", "Ensure sudo is installed", "Fail"'
        echo $exportcontent >> results.csv
fi
sh 5-2-2script.sh
ret=$(sh 5-2-2script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.2.2", "Ensure sudo commands use pty", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.2.2", "Ensure sudo commands use pty", "Fail"'
        echo $exportcontent >> results.csv
fi
sh 5-2-3script.sh
ret=$(sh 5-2-3script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.2.3", "Ensure sudo log file exists", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.2.3", "Ensure sudo log file exists", "Fail"'
        echo $exportcontent >> results.csv
fi
sshinstalled=$(apt version openssh-server 2> /dev/null)
if [ "$sshinstalled" == *"openssh-server"* ]
then
	echo $ss20a
	sh 5-3-1script.sh
	ret=$(sh 5-3-1script.sh)
	ret=${ret::-4}
	ret=${ret: -4}
	if [ "$ret" == "Pass" ]
	then
	        pcount=$((pcount+1))
	        exportcontent='"S5.3.1", "Ensure permissions on /etc/ssh/sshd_config are configured", "Pass"'
	        echo $exportcontent >> results.csv
	else
	        fcount=$((fcount+1))
	        exportcontent='"S5.3.1", "Ensure permissions on /etc/ssh/sshd_config are configured", "Fail"'
	        echo $exportcontent >> results.csv
	fi
else
	exportcontent='"S5.3", "Configure SSH Server", "Not Installed"'
	echo $exportcontent >> results.csv
	echo -e "\n${ss20a} \t\t\t\t\t[\033[33mNot Installed\033[m]"
fi

echo -e "\n$ss21"

sh 5-4-1script.sh
ret=$(sh 5-4-1script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.4.1", "Ensure password creation requirements are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.4.1", "Ensure password creation requirements are configured", "Fail"'
        echo $exportcontent >> results.csv
fi
sh 5-4-2script.sh
ret=$(sh 5-4-2script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.4.2", "Ensure lockout for failed password attempts is configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.4.2", "Ensure lockout for failed password attempts is configured", "Fail"'
        echo $exportcontent >> results.csv
fi
sh 5-4-3script.sh
ret=$(sh 5-4-3script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.4.3", "Ensure password reuse is limited", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.4.3", "Ensure password reuse is limited", "Fail"'
        echo $exportcontent >> results.csv
fi
sh 5-4-4script.sh
ret=$(sh 5-4-4script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.4.4", "Ensure password hashing algorithm is SHA-512", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.4.4", "Ensure password hashing algorithm is SHA-512", "Fail"'
        echo $exportcontent >> results.csv
fi

echo -e "\n$ss22"
echo -e "\n$ss22a"

bash 5-5-1-1script.sh
ret=$(bash 5-5-1-1script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.1.1", "Ensure minimum days between password changes is configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.1.1", "Ensure minimum days between password changes is configured", "Fail"'
        echo $exportcontent >> results.csv
fi
bash 5-5-1-2script.sh
ret=$(bash 5-5-1-2script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.1.2", "Ensure password expiration is 365 days or less", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.1.2", "Ensure password expiration is 365 days or less", "Fail"'
        echo $exportcontent >> results.csv
fi
bash 5-5-1-3script.sh
ret=$(bash 5-5-1-3script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.1.3", "Ensure password expiration warning days is 7 or more", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.1.3", "Ensure password expiration warning days is 7 or more", "Fail"'
        echo $exportcontent >> results.csv
fi
bash 5-5-1-4script.sh
ret=$(bash 5-5-1-4script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.1.4", "Ensure inactive password lock is 30 days or less", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.1.4", "Ensure inactive password lock is 30 days or less", "Fail"'
        echo $exportcontent >> results.csv
fi
bash 5-5-1-5script.sh
ret=$(bash 5-5-1-5script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.1.5", "Ensure all users last password change date is in the past", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.1.5", "Ensure all users last password change date is in the past", "Fail"'
        echo $exportcontent >> results.csv
fi
bash 5-5-2script.sh
ret=$(bash 5-5-2script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.2", "Ensure system accounts are secured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.2", "Ensure system accounts are secured", "Fail"'
        echo $exportcontent >> results.csv
fi
sh 5-5-3script.sh
ret=$(sh 5-5-3script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.3", "Ensure default group for the root account is GID 0", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.3", "Ensure default group for the root account is GID 0", "Fail"'
        echo $exportcontent >> results.csv
fi
sh 5-5-4script.sh
ret=$(sh 5-5-4script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.4", "Ensure default user umask is 027 or more restrictive", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.4", "Ensure default user umask is 027 or more restrictive", "Fail"'
        echo $exportcontent >> results.csv
fi
sh 5-5-5script.sh
ret=$(sh 5-5-5script.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S5.5.5", "Ensure default user shell timeout is900 seconds or less", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S5.5.5", "Ensure default user shell timeout is900 seconds or less", "Fail"'
        echo $exportcontent >> results.csv
fi

pcounta=$((pcount-pcountc))
pcountc=$pcount
fcounta=$((fcount-fcountc))
fcountc=$fcount
echo "var data5 = google.visualization.arrayToDataTable([" >> res.html
echo "['Audit', 'Status']," >> res.html
echo "['Pass', ${pcounta}]," >> res.html
echo "['Fail', ${fcounta}]])" >> res.html

echo -e "\n========== Section ${sno6}: ${s6} =========="
echo -e "$ss24"

sh 6-1-2.sh
sh 6-1-2.sh   >> /script/report.txt
ret=$(sh 6-1-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.1.2", "Ensure permissions on /etc/passwd are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.1.2", "Ensure permissions on /etc/passwd are configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-1-3.sh
sh 6-1-3.sh   >> /script/report.txt
ret=$(sh 6-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.1.3", "Ensure permissions on /etc/passwd- are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.1.3", "Ensure permissions on /etc/passwd- are configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-1-4.sh
sh 6-1-4.sh   >> /script/report.txt
ret=$(sh 6-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.1.4", "Ensure permissions on /etc/group are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.1.4", "Ensure permissions on /etc/group are configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-1-5.sh
sh 6-1-5.sh   >> /script/report.txt
ret=$(sh 6-1-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.1.5", "Ensure permissions on /etc/group- are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.1.5", "Ensure permissions on /etc/group- are configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-1-6.sh
sh 6-1-6.sh   >> /script/report.txt
ret=$(sh 6-1-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.1.6", "Ensure permissions on /etc/shadow are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.1.6", "Ensure permissions on /etc/shadow are configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-1-7.sh
sh 6-1-7.sh   >> /script/report.txt
ret=$(sh 6-1-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.1.7", "Ensure permissions on /etc/shadow- are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.1.7", "Ensure permissions on /etc/shadow- are configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-1-8.sh
sh 6-1-8.sh   >> /script/report.txt
ret=$(sh 6-1-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.1.8", "Ensure permissions on /etc/gshadow are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.1.8", "Ensure permissions on /etc/gshadow are configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-1-9.sh
sh 6-1-9.sh   >> /script/report.txt
ret=$(sh 6-1-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.1.9", "Ensure permissions on /etc/gshadow- are configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.1.9", "Ensure permissions on /etc/gshadow- are configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-1-11.sh
sh 6-1-11.sh   >> /script/report.txt
ret=$(sh 6-1-11.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.1.11", "Ensure no unowned files or directories exist", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.1.11", "Ensure no unowned files or directories exist", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-1-12.sh
sh 6-1-12.sh   >> /script/report.txt
ret=$(sh 6-1-12.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.1.12", "Ensure no ungrouped files or directories exist", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.1.12", "Ensure no ungrouped files or directories exist", "Fail"'
        echo $exportcontent >> results.csv
fi

# sh 6-1-13.sh
# sh 6-1-13.sh   >> /script/report.txt
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
# sh 6-1-14.sh   >> /script/report.txt
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
# sh 6-1-15.sh   >> /script/report.txt
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
# sh 6-1-16.sh   >> /script/report.txt
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
# sh 6-1-17.sh   >> /script/report.txt
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
sh 6-2-1.sh   >> /script/report.txt
ret=$(sh 6-2-1.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.1", "Ensure accounts in /etc/passwd use shadowed passwords", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.1", "Ensure accounts in /etc/passwd use shadowed passwords", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-2.sh
sh 6-2-2.sh   >> /script/report.txt
ret=$(sh 6-2-2.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.2", "Ensure password fields are not empty", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.2", "Ensure password fields are not empty", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-3.sh
sh 6-2-3.sh   >> /script/report.txt
ret=$(sh 6-2-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.3", "Ensure all groups in /etc/passwd exist in /etc/group", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.3", "Ensure all groups in /etc/passwd exist in /etc/group", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-4.sh
sh 6-2-4.sh   >> /script/report.txt
ret=$(sh 6-2-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.4", "Ensure all users` home directories exist", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.4", "Ensure all users` home directories exist", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-5.sh
sh 6-2-5.sh   >> /script/report.txt
ret=$(sh 6-2-5.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.5", "Ensure users own their home directories", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.5", "Ensure users own their home directories", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-6.sh
sh 6-2-6.sh   >> /script/report.txt
ret=$(sh 6-2-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.6", "Ensure users` home directories permissions are 750 or more restrictive", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.6", "Ensure users` home directories permissions are 750 or more restrictive", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-7.sh
sh 6-2-7.sh   >> /script/report.txt
ret=$(sh 6-2-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.7", "Ensure users` dot files are not group or world writable", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.7", "Ensure users` dot files are not group or world writable", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-8.sh
sh 6-2-8.sh   >> /script/report.txt
ret=$(sh 6-2-8.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.8", "Ensure no users have .netrc files", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.8", "Ensure no users have .netrc files", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-9.sh
sh 6-2-9.sh   >> /script/report.txt
ret=$(sh 6-2-9.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.9", "Ensure no users have .forward files", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.9", "Ensure no users have .forward files", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-10.sh
sh 6-2-10.sh   >> /script/report.txt
ret=$(sh 6-2-10.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.10", "Ensure no users have .rhosts files", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.10", "Ensure no users have .rhosts files", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-11.sh
sh 6-2-11.sh   >> /script/report.txt
ret=$(sh 6-2-11.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.11", "Ensure root is the only UID 0 account", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.11", "Ensure root is the only UID 0 account", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-12.sh
sh 6-2-12.sh   >> /script/report.txt
ret=$(sh 6-2-12.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.12", "Ensure root PATH Integrity", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.12", "Ensure root PATH Integrity", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-13.sh
sh 6-2-13.sh   >> /script/report.txt
ret=$(sh 6-2-13.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.13", "Ensure no duplicate UIDs exist", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.13", "Ensure no duplicate UIDs exist", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-14.sh
sh 6-2-14.sh   >> /script/report.txt
ret=$(sh 6-2-14.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.14", "Ensure no duplicate GIDs exist", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.14", "Ensure no duplicate GIDs exist", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-15.sh
sh 6-2-15.sh   >> /script/report.txt
ret=$(sh 6-2-15.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.15", "Ensure no duplicate user names exist", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.15", "Ensure no duplicate user names exist", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-16.sh
sh 6-2-16.sh   >> /script/report.txt
ret=$(sh 6-2-16.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.16", "Ensure no duplicate group names exist", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.16", "Ensure no duplicate group names exist", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 6-2-17.sh
sh 6-2-17.sh   >> /script/report.txt
ret=$(sh 6-2-17.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
	exportcontent='"S6.2.17", "Ensure shadow group is empty", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
	exportcontent='"S6.2.17", "Ensure shadow group is empty", "Fail"'
        echo $exportcontent >> results.csv
fi



pcounta=$((pcount-pcountc))
pcountc=$pcount
fcounta=$((fcount-fcountc))
fcountc=$fcount
echo "var data6 = google.visualization.arrayToDataTable([" >> res.html
echo "['Audit', 'Status']," >> res.html
echo "['Pass', ${pcounta}]," >> res.html
echo "['Fail', ${fcounta}]])" >> res.html
echo "var data7 = google.visualization.arrayToDataTable([" >> res.html
echo "['Audit', 'Status']," >> res.html
echo "['Pass', ${pcount}]," >> res.html
echo "['Fail', ${fcount}]]);" >> res.html

bash htmlpt2.sh




echo -e " \n"
echo "Pass: ${pcount}"
echo "Fail: ${fcount}"





elif [ "$OS" = "$second" ]
then
s="Initial setup"
ss1="1.1 Filesystem configuration"


echo -e "\n"
echo -e "This is the OS Name as well as the version $info \n"
echo -e "========== Benchmark:CentOS ==============\n"
echo -e "========== Section ${sno}:${s} ==========\n"
echo -e "$ss1\n"
sh 1-1-1-1CentOS.sh
sh 1-1-1-1CentOS.sh   >> /script/report.txt
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
sh 1-1-1-2CentOS.sh   >> /script/report.txt
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
sh 1-1-1-3CentOS.sh   >> /script/report.txt
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
sh 1-1-2-1CentOS.sh   >> /script/report.txt
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
sh 1-1-2-2CentOS.sh   >> /script/report.txt
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
sh 1-1-1-1Debian.sh  >> /script/report.txt
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
sh 1-1-1-2Debian.sh  >> /script/report.txt
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
sh 1-1-1-3Debian.sh  >> /script/report.txt
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
sh 1-1-1-4Debian.sh  >> /script/report.txt
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
sh 1-1-1-5Debian.sh  >> /script/report.txt
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

#else
#s="Initial setup"
#ss1="1.1 Filesystem configuration"

else
echo "The linux you are running is not supported yet"

fi
#echo -e "\n"
#echo -e "This is the OS Name as well as the version $info \n"
#echo -e "========== Benchmark:Fedora ==============\n"
#echo -e "========== Section ${sno}:${s} ==========\n"
#echo -e "$ss1\n"

#sh 1-1-1-1.sh
#ret=$(sh 1-1-1-1.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi
#sh 1-1-1-2.sh
#ret=$(sh 1-1-1-2.sh)
#ret=${ret::-4}
#ret=${ret: -4}
#if [ "$ret" == "Pass" ]
#then
#        pcount=$((pcount+1))
#else
#        fcount=$((fcount+1))
#fi
#echo "Pass: ${pcount}"
#echo "Fail: ${fcount}"

#fi

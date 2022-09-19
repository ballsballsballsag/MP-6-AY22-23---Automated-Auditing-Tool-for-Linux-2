#!/bin/bash
sudo usermod -aG sudo group1
sno=5
s="Access, Authentication and Authorization"
ss1="5.1 Configure time-based job schedulers"
ss2="5.2 Configure sudo"
ss3="5.3 Configure SSH Server"
ss4="5.4 Configure PAM"
ss5="5.5 User Accounts and Environment"
ss51="5.5.1 Set Shadow Password Suite Parameters"
pcount=0
fcount=0
if test -f "section5.csv"; then
    rm section5.csv
fi
exportcontent=""
exportcontent='"Audit No.", "Audit Title", "Status"'
echo $exportcontent >> section5.csv
echo "==========Section ${sno}: ${s}=========="
echo $ss1
sh 5-1-1script.sh
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
echo $ss2
sh 5-2-1script.sh
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
echo $ss4
sh 5-4-1script.sh
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
echo $ss5
echo $ss51
bash 5-5-1-1script.sh
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

echo -e "\033[32mPasses\033[m: ${pcount}"
echo -e "\033[31mFails\033[m: ${fcount}"

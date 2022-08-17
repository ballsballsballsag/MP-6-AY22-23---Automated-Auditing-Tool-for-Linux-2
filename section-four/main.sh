#!/bin/sh
sno=4
s="Logging and Auditing"
ss1="4.1 Configure System Accounting (auditd)"
ss2="4.2 Configure Logging" 

echo "========== Section ${sno}: ${s} ==========\n"
echo "$ss1"
sh 4-1-1-1.sh
sh 4-1-1-2.sh
sh 4-1-1-3.sh
sh 4-1-1-4.sh
sh 4-1-2-1.sh
sh 4-1-2-2.sh
sh 4-1-2-3.sh
sh 4-1-3.sh
sh 4-1-4.sh
sh 4-1-5.sh
sh 4-1-6.sh
sh 4-1-7.sh
sh 4-1-8.sh
sh 4-1-9.sh
sh 4-1-10.sh
sh 4-1-11.sh
sh 4-1-12.sh
sh 4-1-13.sh
sh 4-1-14.sh
sh 4-1-15.sh
sh 4-1-16.sh
sh 4-1-17.sh
echo "\n"
echo "$ss2"
sh 4-2-1-1.sh
sh 4-2-1-2.sh
sh 4-2-1-3.sh
sh 4-2-1-4.sh
sh 4-2-1-5.sh
sh 4-2-1-6.sh
sh 4-2-2-1.sh
sh 4-2-2-2.sh
sh 4-2-2-3.sh
sh 4-2-3.sh
sh 4-3.sh
sh 4-4.sh

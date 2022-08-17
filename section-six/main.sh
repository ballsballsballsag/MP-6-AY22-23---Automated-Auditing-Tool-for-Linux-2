#!/bin/sh

sno6=6
s6="System Maintenance"
ss6_1="6.1 System File Permissions"
ss6_2="6.2 User and Group Settings" 

echo "========== Section ${sno6}: ${s6} ==========\n"
echo "$ss6_1"
sh 6-1-1.sh
sh 6-1-2.sh
sh 6-1-3.sh
sh 6-1-4.sh
sh 6-1-5.sh
sh 6-1-6.sh
sh 6-1-7.sh
sh 6-1-8.sh
sh 6-1-9.sh
sh 6-1-10.sh 
sh 6-1-11.sh
sh 6-1-12.sh

echo "\n$ss6_2"
sh 6-2-1.sh
sh 6-2-2.sh
sh 6-2-3.sh
sh 6-2-4.sh
sh 6-2-5.sh
sh 6-2-6.sh
sh 6-2-7.sh
sh 6-2-8.sh
sh 6-2-9.sh
sh 6-2-10.sh
sh 6-2-11.sh
sh 6-2-12.sh
sh 6-2-13.sh
sh 6-2-14.sh
sh 6-2-15.sh
sh 6-2-16.sh
sh 6-2-17.sh

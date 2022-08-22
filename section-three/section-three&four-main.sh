#! /bin/bash
sno="2 & 3"
s="Initial setup"
ss1="2.1 Special Purpose Services"
ss2="2.2 Service Clients"
ss3="3.1 Disable unused network protocols and devices"
ss4="3.2 Network Parameters (Host Only)"
ss5="3.3 Network Parameters (Host and Router)"
ss6="3.4 Uncommon Network Protocols"
ss7="3.5 Firewall Configuration"
info=$(lsb_release -a)
echo "This is the OS Name as well as the version:
$info"
echo "========== Section ${sno} : ${s} =============="
echo "$ss1"
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
sh 2-1-13.sh
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


echo "$ss2"
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

echo "$ss3"
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


echo "$ss4"
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

echo "$ss5"
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


echo "$ss6"
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


echo "$ss7"
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
echo "Passes: $((pcount))"
echo "Fails: $((fcount))"

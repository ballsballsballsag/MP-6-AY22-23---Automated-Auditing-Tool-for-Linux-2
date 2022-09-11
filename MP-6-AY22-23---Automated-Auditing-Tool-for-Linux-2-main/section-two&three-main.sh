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
sh 2-1-1-1.sh >> /script/report.text
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
sh 2-1-1-2.sh >> /script/report.text
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
sh 2-1-3.sh >> /script/report.text
ret=$(sh 2-1-3.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S2.1.1.3", "Ensure chrony is configured", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S2.1.1.3", "Ensure chrony is configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-4.sh
sh 2-1-4.sh >> /script/report.text
ret=$(sh 2-1-4.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S2.1.1.4", "Ensure ntp is configured", "Pass"'
        echo $exportcontent >> results.csv

else
        fcount=$((fcount+1))
        exportcontent='"S2.1.1.4", "Ensure ntp is configured", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-5.sh
sh 2-1-5.sh >> /script/report.text
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
sh 2-1-6.sh >> /script/report.text
ret=$(sh 2-1-6.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S2.1.6", "Ensure LDAP server is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S2.1.6", "Ensure LDAP server is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-7.sh
sh 2-1-7.sh >> /script/report.text
ret=$(sh 2-1-7.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S2.1.7", "Ensure NFS is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S2.1.7", "Ensure NFS is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-8.sh
sh 2-1-8.sh >> /script/report.text
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
sh 2-1-9.sh >> /script/report.text
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
sh 2-1-10.sh >> /script/report.text
ret=$(sh 2-1-10.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S2.1.10", "Ensure HTTP server is not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S2.1.10", "Ensure HTTP server is not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-11.sh
sh 2-1-11.sh >> /script/report.text
ret=$(sh 2-1-11.sh)
ret=${ret::-4}
ret=${ret: -4}
if [ "$ret" == "Pass" ]
then
        pcount=$((pcount+1))
        exportcontent='"S2.1.11", "Ensure IMAP and POP3 server are not installed", "Pass"'
        echo $exportcontent >> results.csv
else
        fcount=$((fcount+1))
        exportcontent='"S2.1.11", "Ensure IMAP and POP3 server are not installed", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-12.sh
sh 2-1-12.sh >> /script/report.text
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
sh 2-1-13.sh >> /script/report.text
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
sh 2-1-14.sh >> /script/report.text
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
sh 2-1-15.sh >> /script/report.text
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
        exportcontent='"S2.1.15", "Ensure mail transfer agent is configured for local-only mode ", "Fail"'
        echo $exportcontent >> results.csv
fi

sh 2-1-16.sh
sh 2-1-16.sh >> /script/report.text
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
sh 2-1-17.sh >> /script/report.text
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


echo "$ss2"
sh 2-2-1.sh
sh 2-2-1.sh >> /script/report.text
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
sh 2-2-2.sh >> /script/report.text
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
sh 2-2-3.sh >> /script/report.text
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
sh 2-2-4.sh >> /script/report.text
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
sh 2-2-5.sh >> /script/report.text
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
sh 2-2-6.sh >> /script/report.text
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

echo "$ss3"
sh 3-1-2.sh
sh 3-1-2.sh >> /script/report.text
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


echo "$ss4"
sh 3-2-1.sh
sh 3-2-1.sh >> /script/report.text
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
sh 3-2-3.sh >> /script/report.text
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

echo "$ss5"
sh 3-3-1.sh
sh 3-3-1.sh >> /script/report.text
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
sh 3-3-2.sh >> /script/report.text
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
sh 3-3-3.sh >> /script/report.text
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
sh 3-3-4.sh >> /script/report.text
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
sh 3-3-5.sh >> /script/report.text
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
sh 3-3-6.sh >> /script/report.text
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
sh 3-3-7.sh >> /script/report.text
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
sh 3-3-8.sh >> /script/report.text
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
sh 3-3-9.sh >> /script/report.text
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


echo "$ss6"
sh 3-4-1.sh
sh 3-4-1.sh >> /script/report.text
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
sh 3-4-2.sh >> /script/report.text
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
sh 3-4-3.sh >> /script/report.text
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
sh 3-4-4.sh >> /script/report.text
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


echo "$ss7"
sh 3-5-1-1.sh
sh 3-5-1-1.sh >> /script/report.text
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
sh 3-5-1-2.sh >> /script/report.text
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
sh 3-5-1-3.sh >> /script/report.text
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
sh 3-5-1-4.sh >> /script/report.text
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
sh 3-5-1-7.sh >> /script/report.text
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
sh 3-5-2-1.sh >> /script/report.text
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
sh 3-5-2-2.sh >> /script/report.text
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
sh 3-5-2-4.sh >> /script/report.text
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
sh 3-5-2-5.sh >> /script/report.text
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
sh 3-5-2-6.sh >> /script/report.text
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
sh 3-5-2-8.sh >> /script/report.text
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
sh 3-5-2-9.sh >> /script/report.text
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
sh 3-5-2-10.sh >> /script/report.text
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
sh 3-5-3-1-1.sh >> /script/report.text
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
sh 3-5-3-1-2.sh >> /script/report.text
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
sh 3-5-3-1-3.sh >> /script/report.text
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
sh 3-5-3-2-1.sh >> /script/report.text
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
sh 3-5-3-2-3.sh >> /script/report.text
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
sh 3-5-3-2-4.sh >> /script/report.text
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
sh 3-5-3-3-1.sh >> /script/report.text
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
sh 3-5-3-3-3.sh >> /script/report.text
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
sh 3-5-3-3-4.sh >> /script/report.text
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
echo "Passes: $((pcount))"
echo "Fails: $((fcount))"

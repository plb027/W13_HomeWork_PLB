#! bin/bash
# Script created by Pedro | May 13
# Objective: Double check if Rock Star Server List range Ip responded to fping

# NOTE: Only IPs that accept connections will be shown
# NOTE: The IP list file RockStarServerIpList.txt have to be created before. 

#Example file:
#File RockStarServerIpList.txt
﻿
#12.205.151.91/24
#15.199.151.91/24
#15.199.158.91/28
#15.199.141.91/28
#15.199.131.91/28
#15.199.121.91/28
#15.199.111.91/28
#15.199.100.91/28
#15.199.99.91/28
#15.199.98.91/28
#15.199.97.91/28
#15.199.96.91/28
#15.199.95.91/28
#15.199.94.91/28
#11.199.158.91/28
#167.172.144.11/32
#11.199.141.91/28
#11.199.131.91/28
#11.199.121.91/29
#11.199.111.91/28
#11.199.100.91/32
#11.199.99.91/24
#11.199.98.91/28


echo "Please, Wait! Scanning IP address..."
echo ""
echo "-----------------------------------------------------------------"
echo "Only the IPs that ACCEPT CONNECTIONS will be shown below! " 
echo "-----------------------------------------------------------------"

for ip in $(cat RockStarServerIpList.txt);
do 
fping -a -g $ip 2> /dev/null;

done
 

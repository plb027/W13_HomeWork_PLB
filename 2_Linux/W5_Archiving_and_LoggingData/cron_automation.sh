#!/bin/bash
#Create by Pedro | Apr 21, 2021

#Using journalctl to get log info between emergency and critic.
#Report log messages with priority levels between Emergency and Critical

journalctl -p 0..2 > /home/sysadmin/Priority_High.txt
#--

#Grant execution privilege to file:
#chmod +x journal_EmergCrit_rpt.sh

#Command to copy journal_EmergCrit_rpt.sh to daily cron directory

#sudo cp ~/Projects/journal_EmergCrit_rpt.sh /etc/cron.daily

#To check cron daily: ls -ls /etc/cron.daily/

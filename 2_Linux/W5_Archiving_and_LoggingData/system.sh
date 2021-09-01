
	#!/bin/bash

#Brace expansion command to create the four subdirectories:

mkdir $HOME/backups ; cd $HOME/backups
mkdir freemen diskuse openlist freedisk



 # Free memory output to a free_mem.txt file
	free -h > ~/backups/freemen/free_mem.txt

	﻿# Disk usage output to a disk_usage.txt file
	du -h > ~/backups/diskuse/disk_use.txt

	#﻿List open files to a open_list.txt file
	lsof /dev/null > ~/backups/openlist/open_list.txt
﻿	# Free disk space to a free_disk.txt file
	df -H > ~/backups/freedisk/free_disk.txt


#Command to make the system.sh script executable:
#cd $HOME/Projects ; chmod +x system.sh

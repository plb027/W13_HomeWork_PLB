# W13_HomeWork_PLB
This repository contains files regarding Project 1.
See below a summary of the content that you will find inside of each directory. 


## Diagram
### Diagram of the Network: 
This document has the network diagram that shows my entire cloud setup, including Ansible jump box and the Docker containers running on each VM running at LBBP Zone.
This Azure Diagram Network have:

    A total of 4 VMs where three are running DVWA and one has Ansible
    3 VMs receiving traffic from the load balancer
    The external access to JumBox is only via ssh (SSH_security_group)
    The external access to WebServices is only via LoadBalancer how is located between security groups
    Azure resource group
    Virtual network with IP address range
    Subnet range
    The flow of specific traffic (e.g. SSH, HTTP)
    The Load Balancer
    All 4 VMs that I have lauched
    Where the Docker and Ansible are deployed


![Network Diagram](https://github.com/plb027/W13_HomeWork_PLB/blob/main/1_Diagram/DiagramNetwork_PLB.png)



# Linux
You should see below my list of the essential script created by me during the cybersecurity Bootcamp program.

### Folder: W3_Terminal_Bash

**Script:** `roulette_dealer_finder_by_time.sh` 

This script called roulette_dealer_finder_by_time.sh that can analyze the employee schedule to easily find the roulette dealer at a specific time.


**Script:** `roulette_dealer_finder_by_time_and_game.sh` 

In case there is future fraud on the other Lucky Duck games, create a shell script called roulette_dealer_finder_by_time_and_game.sh that has the three following arguments:

    Specific time
    Specific date
    Casino game being played


### Folder: W4_SysAdmin_Fundamentals

**Script:** `acconts.sh`

This is a script to automation the process to:

    Add users sam, joe, amy, and sara to the managed group
    Add users to engineers group (include all four users)
    Create a shared folder for this group at /home/engineers
    Create the shared folder
    Change ownership on the new engineers' shared folder to the engineers group
    Change ownership of engineer's shared folder to engineer group

### Folder: W5_Archiving_and_LoggingData

**Script:** `system.sh`

This script get system info as: free memory, disk usage, list open files and free disk space.


**Script:** `cron_automation.sh`

This script using journalctl to get log info between emergency and critic and report log messages with priority levels between Emergency and Critical

Included the steep-by-steep to:

    Grant execution privilege to file
    Command to copy journal_EmergCrit_rpt.sh to daily cron directory
    And how to check cron daily


### Folder: W8_NetworkingFundamentals

**Script:** `ip-status.sh`

This script is used to show the IPs that Accept Connections Only on the IP list file RockStarServerIpList.txt.



# Ansible
On this folder you will find the files used on Ansible everioment:

    host _(named as ansible_host_file - backup)_
    pentest.yml
    ansible.cfg

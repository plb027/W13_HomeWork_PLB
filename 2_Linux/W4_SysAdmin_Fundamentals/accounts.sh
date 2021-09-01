#!/bin/bash
#-----------------------------------------
# Script Homework 4
# Create by Pedro on April 10, 2021
#-----------------------------------------
#
#This is a script to automation the process to:



#Add users sam, joe, amy, and sara to the managed group.
#Add users to engineers group (include all four users):
#Create a shared folder for this group at /home/engineers.
#Create the shared folder:
#Change ownership on the new engineers' shared folder to the engineers group.
#Change ownership of engineer's shared folder to engineer group:



# The users list file have to be create.
 
# List of users on users.txt file
# more users.txt
# sam
# joe
# amy
# sara
# admin



read -s -p "Enter Password for sudo: " sudoPWD
echo ""

#Testing
#echo $sudoPWD | sudo -S grep -E 'root|sysadmin' /etc/passwd

#Create group Enginners
echo "Creating group enginners..."
echo $sudoPWD | sudo -S groupadd -r engineers
echo ""

#Create Diretory enginners
echo "Creating diretory enginners..."
echo $sudoPWD | sudo -S mkdir /home/engineers
echo ""
#Create users and add to groups
echo "Reading user file..."
sleep 2s
echo ""

for u in $(cat users.txt);
do

        if [ $u != "admin" ] ;then

                echo "Creating user" $u
                echo $sudoPWD | sudo -S useradd $u -p $u"@uoft" -d /home/$u
                echo "add user" $u "to group enginners"
                echo $sudoPWD | sudo -S sudo usermod -g engineers2 $u
                echo ""

  else
                echo "Creating user" $u
                echo $sudoPWD | sudo -S useradd $u -p $u"@uoft" -d /home/$u
                echo "add user" $u "to group sudo"
                echo $sudoPWD | sudo -S usermod -G sudo $u
                echo ""
        fi

done


#Change ownership 
echo "Changing ownership on the new engineers shared folder to the engineers group"
echo ""
echo $sudoPWD | sudo -S chown :engineers /home/engineers

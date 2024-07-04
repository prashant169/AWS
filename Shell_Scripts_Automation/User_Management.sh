#!/bin/bash

#Add a new user:
sudo adduser prashant
sudo passwd prashant
#sudo cat /etc/passwd | cut -d: -f1

#Create Group 
sudo groupadd DevOps_Team
sudo cat /etc/group

#To add the user prashant to the DevOps group
sudo usermod -a -G DevOps_Team prashant

# Switch user Enter 
sudo su prashant 

#Remove a user from a group:sudo deluser username groupname
sudo deluser prashant DevOps

#Delete a user:
sudo deluser newuser
#Delete a group:
sudo groupdel groupname

#Backup pwd, CompanyA is directory ,Contains multipal files 
tar -cvzf backup.CompanyA.tar.gz /home/ec2-user/CompanyA





#!/bin/bash

#List all files in a directory
ls -at

# Check disk usage:
df -h

#Check memory usage:

free -m

#Monitor CPU usage:

top

#List top 10 memory-consuming processes:
ps aux --sort=-%mem | head -n 10

#Monitor network traffic:
iftop

#Check open ports:
netstat -tuln

#show current users:
who

#Display system uptime:
uptime

#Check system load averages:
uptime | awk '{print $8,$9,$10}'

#List all installed packages:
dpkg -l

#Networking-Ping a host to check connectivity:
ping -c 4 example.com

#Get the IP address of a domain:
nslookup google.com

#Download a file from the internet:
wget http://example.com/file.zip

#Check the status of a web server:
curl -Is http://example.com | head -n 1

#Get public IP address:
curl ifconfig.me

#Restart network service:
sudo systemctl restart networking




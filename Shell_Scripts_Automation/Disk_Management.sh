#!/bin/bash

#Mount a disk:
sudo mount /dev/sdX1 /mnt
#Unmount a disk:
sudo umount /mnt
#Check disk space usage:
df -h
#List all disks and partitions:
lsblk
#Format a disk partition to ext4:
sudo mkfs.ext4 /dev/sdX1

#Create an ISO image from a directory:
mkisofs -o image.iso /path/to/directory

#Burn an ISO image to a CD/DVD:
wodim -v dev=/dev/cdrom image.iso

#Resize a partition:
sudo resize2fs /dev/sdX1

#Create a new partition using fdisk:
sudo fdisk /dev/sdX
#Create a full system backup:
sudo tar -cvpzf /backup/full-backup.tar.gz --exclude=/backup --one-file-system /

#Backup MySQL databases:
mysqldump -u username -p password --all-databases > all-databases.sql

#Schedule a task with cron:
echo "0 5 * * * /path/to/script.sh" | crontab -

#List all cron jobs:
crontab -l

#Display detailed system information:
lshw
















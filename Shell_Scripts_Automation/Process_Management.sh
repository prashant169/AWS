#!/bin/bash

#List all running processes:
ps aux

#Kill a process by PID:
kill PID
#Show top 10 CPU-consuming processes:
ps aux --sort=-%cpu | head -n 10

# Start a process in the background:
command &
#Show process tree:
pstree

#Check if a process is running:
pgrep processname

#Pause a process:
kill -STOP PID

#Resume a paused process:
kill -CONT PID






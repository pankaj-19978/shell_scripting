#!/bin/bash

DATE=$(date)

echo "==============================" >> /home/pankaj/server_health.log
echo "Server Health Check - $DATE" >> /home/pankaj/server_health.log
echo "==============================" >> /home/pankaj/server_health.log

echo "Uptime:" >> /home/pankaj/server_health.log
uptime >> /home/pankaj/server_health.log

echo "" >> /home/pankaj/server_health.log
echo "Memory Usage:" >> /home/pankaj/server_health.log
free -h >> /home/pankaj/server_health.log

echo "" >> /home/pankaj/server_health.log
echo "Disk Usage:" >> /home/pankaj/server_health.log
df -h >> /home/pankaj/server_health.log

echo "" >> /home/pankaj/server_health.log
echo "Top CPU Processes:" >> /home/pankaj/server_health.log
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head >> /home/pankaj/server_health.log

echo "" >> /home/pankaj/server_health.log
echo "Health Check Completed" >> /home/pankaj/server_health.log

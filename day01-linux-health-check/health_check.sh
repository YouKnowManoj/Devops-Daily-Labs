#!/bin/bash

#!/bin/bash

echo "=============================="
echo " Health Check Report Linux"
echo "=============================="
echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo ""

echo "---- CPU Usage ----"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2 "%"}'
echo ""

echo "---- Memory Usage ----"
free -h
echo ""

echo "---- Disk Usage ----"
df -h /
echo ""

echo "---- Top 5 Processes by CPU ----"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""

echo "=============================="
echo "Health check completed."
echo "=============================="
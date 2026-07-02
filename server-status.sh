#!/bin/bash

echo "============== SERVER STATUS ================"
echo

#====================
# CPU usage
#====================

cpu_usage=$(vmstat 1 2 | tail -1 | awk '{print 100 - $15}')

echo "CPU usage"
echo " Usage : $cpu_usage%"
echo

#===================
# MEMORY usage
#===================

total_memory=$(free -m | awk '/^Mem:/ {print $2}')
available_memory=$(free -m | awk '/^Mem:/ {print $7}')
used_memory=$((total_memory - available_memory))

memory_used=$(awk -v used="$used_memory" -v total="$total_memory" 'BEGIN {printf "%.2f", (used/total)*100}')

echo "MEMORY usage"

echo "Total       : $total_memory MB"
echo "Available   : $available_memory MB"
echo "Used        :  $used_memory MB ($memory_used)"
echo 

#====================
# DISK usage
#====================

disk_total=$(df -h | awk 'NR==2 {print $2}')
disk_used=$(df -h | awk 'NR==2 {print $3}')
disk_free=$(df -h | awk 'NR==2 {print $4}')
disk_usage=$(df -h | awk 'NR==2 {print $5}')

echo "DISK usage"
echo "  Total      : ${disk_total}"
echo "  Used       : ${disk_used}"
echo "  Free       : ${disk_free}"
echo "  Usage      : ${disk_usage}"
echo

#=========================
# Top 5 process uses CPU
#=========================

echo "Top 5 Processes by CPU Usage"
ps -eo pid,user,%cpu,comm --sort=-%cpu | head -6
echo

#==========================
# Top 5 process uses MEMORY
#==========================

echo "Top 5 Processes by Memory Usage"
ps -eo pid,user,%mem,comm --sort=-%mem | head -6
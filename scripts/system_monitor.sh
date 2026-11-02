#!/bin/bash

# Linux System Monitoring Script

echo "================================"
echo "      SYSTEM MONITORING"
echo "================================"

echo "Hostname: $(hostname)"
echo

# CPU Usage
echo "CPU Usage:"

CPU_IDLE_1=$(awk '/^cpu / {print $5+$6}' /proc/stat)
CPU_TOTAL_1=$(awk '/^cpu / {print $2+$3+$4+$5+$6+$7+$8}' /proc/stat)

sleep 1

CPU_IDLE_2=$(awk '/^cpu / {print $5+$6}' /proc/stat)
CPU_TOTAL_2=$(awk '/^cpu / {print $2+$3+$4+$5+$6+$7+$8}' /proc/stat)

CPU_USAGE=$(awk -v idle1="$CPU_IDLE_1" \
                 -v idle2="$CPU_IDLE_2" \
                 -v total1="$CPU_TOTAL_1" \
                 -v total2="$CPU_TOTAL_2" \
                 'BEGIN {
                     total_diff = total2 - total1
                     idle_diff = idle2 - idle1

                     if (total_diff > 0)
                         printf "%.2f%%", (1 - idle_diff / total_diff) * 100
                     else
                         print "N/A"
                 }')

echo "CPU Usage: $CPU_USAGE"
echo

# Memory Usage
echo "Memory Usage:"

MEMORY_USAGE=$(free | awk '/^Mem:/ {
    printf "%.2f%%", (($2 - $7) / $2) * 100
}')

echo "Memory Usage: $MEMORY_USAGE"
echo

# Disk Usage
echo "Disk Usage:"

DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}')

echo "Disk Usage: $DISK_USAGE"
echo

# System Uptime
echo "System Uptime:"

UPTIME=$(uptime -p)

echo "$UPTIME"

echo
echo "================================"
echo "    MONITORING COMPLETED"
echo "================================"

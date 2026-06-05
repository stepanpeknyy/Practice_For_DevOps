#!/bin/bash
LOG="/tmp/monitor.log"
DATE=$(date "+%Y-%m-%d %H:%M:%S")
CPU=$(top -b -n 1 | grep "Cpu(s)" | awk '{print $2}')
MEM=$(free -m | awk 'NR==2{printf "%.1f%%", $3*100/$2}')
DISK=$(df -h / | awk 'NR==2{print $5}')

echo "$DATE | CPU: $CPU% | MEM: $MEM | DISK: $DISK" >> "$LOG"

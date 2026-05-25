#!/bin/bash

echo "===== System Information ====="

echo "Date & Time: $(date)"
echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"

echo ""
echo "----- CPU Load -----"
uptime

echo ""
echo "----- Disk Usage -----"
df -h

echo ""
echo "----- Memory Usage -----"
free -h

echo ""
echo "=============================="

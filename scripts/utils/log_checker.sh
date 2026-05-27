#!/bin/bash

# Check if argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

LOG_FILE="$1"

# Check if file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File does not exist -> $LOG_FILE"
    exit 1
fi

echo "===== Log Checker ====="
echo "File: $LOG_FILE"

# Count lines with "error" (case-insensitive)
ERROR_COUNT=$(grep -ic "error" "$LOG_FILE")

echo ""
echo "Number of 'error' entries: $ERROR_COUNT"

echo ""
echo "----- Last 20 lines -----"
tail -n 20 "$LOG_FILE"

echo ""
echo "========================="

#!/bin/bash
LOG_FILE="/var/log/syslog"
THRESHOLD=10

ERROR_COUNT=$(grep -ic "error" "$LOG_FILE")

if [ "$ERROR_COUNT" -gt "$THRESHOLD" ]; then
    echo "$(date) - ALERT: $ERROR_COUNT errors found in $LOG_FILE"
else
    echo "$(date) - OK: $ERROR_COUNT errors found, below threshold of $THRESHOLD"
fi

#!/bin/bash

# ==========================================
# Script Name : log_cleanup.sh
# Description : Deletes log files older than 7 days
# Author      : Amit Kushwaha
# ==========================================

LOG_DIR="./sample-logs"
DAYS=7

echo "=================================="
echo "Starting Log Cleanup..."
echo "=================================="

if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Log directory does not exist!"
    exit 1
fi

find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -delete

echo "=================================="
echo "Log cleanup completed successfully!"
echo "=================================="
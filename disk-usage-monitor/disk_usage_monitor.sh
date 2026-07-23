#!/bin/bash

# ==========================================
# Script Name : disk_usage_monitor.sh
# Description : Monitors disk usage and warns
#               if usage exceeds a threshold.
# Author      : Amit Kushwaha
# ==========================================

THRESHOLD=80
LOG_DIR="./logs"

mkdir -p "$LOG_DIR"

echo "=========================================="
echo "Disk Usage Monitor"
echo "=========================================="

USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Current Disk Usage: $USAGE%"

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: Disk usage is above $THRESHOLD%."

    echo "$(date): Disk usage reached $USAGE%." >> "$LOG_DIR/disk_usage.log"
    else
    echo "Disk usage is normal."

    echo "$(date): Disk usage is $USAGE%." >> "$LOG_DIR/disk_usage.log"
    fi
#!/bin/bash

# ==========================================
# Script Name : backup_script.sh
# Description : Creates a compressed backup
# Author      : Amit Kushwaha
# ==========================================

DEST="./backups"
LOG_DIR="./logs"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

read -p "Enter the folder you want to backup: " SOURCE

if [ -z "$SOURCE" ]; then
    echo "No directory entered!"
    exit 1
fi

echo "=================================="
echo "Starting Backup..."
echo "=================================="

if [ ! -d "$SOURCE" ]; then
    echo "Source directory does not exist!"
    exit 1
fi

mkdir -p "$DEST"
mkdir -p "$LOG_DIR"

BACKUP_FILE="$DEST/backup-$DATE.tar.gz"

tar -czf "$BACKUP_FILE" "$SOURCE"

if [ $? -eq 0 ]; then
    echo "Backup completed successfully!"
    echo "Backup saved as: $BACKUP_FILE"
    echo "$(date): Backup of $SOURCE completed successfully." >> "$LOG_DIR/backup.log"
else
    echo "Backup failed!"
    echo "$(date): Backup of $SOURCE failed." >> "$LOG_DIR/backup.log"
    exit 1
fi
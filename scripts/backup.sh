#!/bin/bash

# Linux Backup Script

SOURCE_DIR="$1"
BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Check if source directory was provided
if [ -z "$SOURCE_DIR" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

# Create backup directory
mkdir -p "$BACKUP_DIR"

# Create backup file
BACKUP_FILE="$BACKUP_DIR/backup_$(basename "$SOURCE_DIR")_$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_FILE" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

if [ $? -eq 0 ]; then
    echo "Backup completed successfully!"
    echo "Backup saved to: $BACKUP_FILE"
else
    echo "Backup failed!"
    exit 1
fi

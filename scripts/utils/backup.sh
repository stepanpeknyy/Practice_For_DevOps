#!/bin/bash

# Check if argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <source_directory>"
    exit 1
fi

SOURCE_DIR="$1"
BACKUP_DIR="/tmp/backups"

# Check if source exists and is a directory
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Directory does not exist -> $SOURCE_DIR"
    exit 1
fi

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Extract folder name
DIR_NAME=$(basename "$SOURCE_DIR")

# Destination path
DEST="$BACKUP_DIR/${DIR_NAME}_$TIMESTAMP"

# Check if copy was successful
if cp -r "$SOURCE_DIR" "$DEST"; then
    echo "Backup successful!"
    echo "Location: $DEST"
else
    echo "Backup failed!"
    exit 1
fi

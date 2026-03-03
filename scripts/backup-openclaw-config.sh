#!/bin/bash
# OpenClaw Configuration Backup Script
# Backs up openclaw.json and workspace config files

BACKUP_DIR="$HOME/.openclaw/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Backup main openclaw config
cp "$HOME/.openclaw/openclaw.json" "$BACKUP_DIR/openclaw.json.$TIMESTAMP"

# Backup workspace config if it exists
if [ -d "$HOME/.openclaw/workspace" ]; then
    cp "$HOME/.openclaw/workspace/openclaw.json" "$BACKUP_DIR/workspace-openclaw.json.$TIMESTAMP" 2>/dev/null
    cp "$HOME/.openclaw/workspace/IDENTITY.md" "$BACKUP_DIR/workspace-IDENTITY.md.$TIMESTAMP" 2>/dev/null
    cp "$HOME/.openclaw/workspace/USER.md" "$BACKUP_DIR/workspace-USER.md.$TIMESTAMP" 2>/dev/null
fi

# List backup files
ls -lh "$BACKUP_DIR"

echo "Backup completed at $(date)"
echo "Location: $BACKUP_DIR"
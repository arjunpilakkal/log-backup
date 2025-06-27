#!/bin/bash

TIMESTAMP=$(date +'%Y-%m-%d_%H-%M-%S')

BACKUP_FILE="logs_backup_$TIMESTAMP.tar.gz"

sudo tar -czf "$BACKUP_FILE" /var/log

git add "$BACKUP_FILE"
git commit -m "Backup on $TIMESTAMP"
git push origin main

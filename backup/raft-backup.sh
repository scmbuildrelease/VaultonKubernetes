#!/bin/bash

DATE=$(date +%F)
BACKUP_FILE="vault-backup-$DATE.snap"

kubectl exec -n vault vault-0 -- \
  vault operator raft snapshot save /tmp/$BACKUP_FILE

kubectl cp vault/vault-0:/tmp/$BACKUP_FILE ./

echo "Backup saved: $BACKUP_FILE"

# Vault Operations Runbook

## If Vault is Sealed
1. Check KMS access
2. Verify IAM permissions
3. Restart pod if needed

## If Pod Crashes
kubectl describe pod vault-0 -n vault

## Restore from Backup
vault operator raft snapshot restore backup.snap

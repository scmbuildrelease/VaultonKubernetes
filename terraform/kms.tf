resource "aws_kms_key" "vault" {
  description             = "Vault auto-unseal key"
  deletion_window_in_days = 7
}

resource "aws_kms_alias" "vault_alias" {
  name          = "alias/vault-unseal"
  target_key_id = aws_kms_key.vault.id
}

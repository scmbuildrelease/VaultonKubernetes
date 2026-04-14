cat <<EOF > app-policy.hcl
path "secret/data/app/*" {
  capabilities = ["read"]
}
EOF

vault policy write app-policy app-policy.hcl

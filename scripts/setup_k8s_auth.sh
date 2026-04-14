vault auth enable kubernetes

vault write auth/kubernetes/config \
  kubernetes_host="https://$KUBERNETES_PORT_443_TCP_ADDR:443"

vault write auth/kubernetes/role/app-role \
  bound_service_account_names=default \
  bound_service_account_namespaces=default \
  policies=app-policy \
  ttl=24h

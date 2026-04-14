# Architecture Diagram (Text Version)

## Components

- EKS Cluster (AWS)
- Vault HA Cluster (3 pods, Raft storage)
- Vault Agent Injector
- Demo Application (NGINX)
- Prometheus + Grafana

## Flow

1. Developer commits config to Git
2. Terraform provisions EKS
3. Helm deploys Vault
4. Vault initialized + unsealed
5. App authenticates via Kubernetes ServiceAccount
6. Vault injects secrets into pod
7. Prometheus scrapes Vault metrics

## Security

- TLS enabled between services
- Kubernetes auth for Vault
- Policies restrict secret access

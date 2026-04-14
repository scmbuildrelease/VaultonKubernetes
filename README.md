# Vault as a Service on Kubernetes (Production-Style Implementation)

## 🚀 Key Highlights
- HA Vault cluster using Raft storage  
- Kubernetes-native deployment (Helm)  
- Secure secrets delivery via Vault Agent Injector  
- Authentication method: Kubernetes  
- Secrets engines: KV, Transit, PKI  
- Terraform-based infrastructure provisioning  
- Observability-ready (Prometheus/Grafana)  

---

## 🧱 Architecture
- EKS cluster provisioned using Terraform  
- Vault HA cluster (3 pods with Raft storage)  
- Application pods dynamically retrieving secrets from Vault  
- Secure communication using TLS  

---

## 🧪 Demo Flow
1. Deploy Kubernetes cluster (EKS via Terraform)  
2. Install Vault using Helm  
3. Initialize and unseal Vault  
4. Enable secrets engines (KV, Transit, PKI)  
5. Configure Kubernetes authentication  
6. Deploy application → secrets injected automatically via Vault Agent  

---

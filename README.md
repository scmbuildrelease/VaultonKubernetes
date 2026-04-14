# 🔐 Vault as a Service on Kubernetes (Production-Style Implementation)

A production-style implementation of HashiCorp Vault on Kubernetes, demonstrating secure, scalable, and automated secrets management using modern cloud-native practices.

---

## 🚀 Key Highlights

- High Availability Vault cluster (Raft storage, 3 replicas)
- Kubernetes-native deployment using Helm
- Secure secrets injection via Vault Agent Injector
- Kubernetes authentication (ServiceAccount-based)
- Secrets engines: KV, Transit, PKI
- Infrastructure provisioning with Terraform (EKS)
- Observability with Prometheus & Grafana
- GitOps-ready structure (ArgoCD compatible)

---

## 🧱 Architecture

![Architecture Diagram](architecture/diagram.png)

### Components:
- AWS EKS Cluster (Terraform)
- Vault HA Cluster (3 pods, Raft storage)
- Vault Agent Injector (sidecar)
- Demo Application (NGINX)
- Prometheus & Grafana (metrics/monitoring)

### Flow:
1. Terraform provisions EKS cluster  
2. Helm deploys Vault in HA mode  
3. Vault initialized and unsealed  
4. Kubernetes authentication configured  
5. Application pods authenticate via ServiceAccount  
6. Vault injects secrets dynamically  
7. Prometheus collects metrics  

---

## 🔐 Security Features

- TLS-secured communication  
- Kubernetes-native authentication  
- Policy-based access control  
- Secrets never stored in application code  
- Dynamic secret injection at runtime  

---

## 🧪 Demo (End-to-End)

### 1️⃣ Deploy Infrastructure
```bash
cd terraform
terraform init
terraform apply

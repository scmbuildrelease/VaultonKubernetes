#!/bin/bash

echo " Vault on Kubernetes Demo"


echo "Step 1: Show Vault Pods"
kubectl get pods -n vault

echo "Step 2: Show App Pod"
kubectl get pods

echo "Step 3: Check Secret Injection"
POD=$(kubectl get pods -l app=vault-demo -o jsonpath="{.items[0].metadata.name}")
kubectl exec -it $POD -- cat /vault/secrets/config || echo "No secret found"

echo "Step 4: Check Vault Seal Status"
kubectl exec -n vault vault-0 -- vault status


echo "✅ Demo Complete"

#!/bin/bash

echo "Checking injected secrets inside pod..."

POD=$(kubectl get pods -l app=vault-demo -o jsonpath="{.items[0].metadata.name}")

kubectl exec -it $POD -- cat /vault/secrets/config || echo "No secrets found"

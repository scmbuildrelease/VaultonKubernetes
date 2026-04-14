kubectl exec -it vault-0 -- vault operator unseal <key1>
kubectl exec -it vault-1 -- vault operator unseal <key2>
kubectl exec -it vault-2 -- vault operator unseal <key3>

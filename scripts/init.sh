kubectl exec -it vault-0 -- vault operator init \
  -key-shares=3 -key-threshold=2 > keys.txt

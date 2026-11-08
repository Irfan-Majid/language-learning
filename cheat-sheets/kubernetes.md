# Kubernetes Cheat Sheet

```bash
# Cluster info
kubectl get nodes
kubectl cluster-info

# Workloads
kubectl apply -f deployment.yaml
kubectl get pods,deployments,services
kubectl describe pod POD_NAME
kubectl logs POD_NAME
kubectl exec -it POD_NAME -- sh

# Scale & update
kubectl scale deployment APP --replicas=3
kubectl rollout status deployment/APP
kubectl rollout undo deployment/APP

# Debug
kubectl port-forward svc/APP 8080:80
kubectl get events --sort-by=.metadata.creationTimestamp

# Config
kubectl create configmap app-config --from-literal=KEY=val
kubectl create secret generic app-secret --from-literal=PASS=xxx

# Delete
kubectl delete -f deployment.yaml
kubectl delete pod POD_NAME
```

**Examples:** [devops/kubernetes/examples/](../devops/kubernetes/examples/)

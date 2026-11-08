# Beginner Guide - Kubernetes

**Audience:** First-time learners (know Docker basics)  
**Time:** 2-4 weeks

**Prerequisites:** [devops/docker/01-beginner/](../docker/01-beginner/)

---

## Step 1: Local Cluster

**Option A - minikube:**
```bash
minikube start
kubectl get nodes
```

**Option B - Docker Desktop:** Enable Kubernetes in settings.

**Option C - kind:** `kind create cluster`

---

## Step 2: Deploy Hello App

```bash
kubectl apply -f examples/deployment.yaml
kubectl get pods
kubectl get services
kubectl describe deployment hello-app
```

See [examples/deployment.yaml](../examples/deployment.yaml).

---

## Step 3: Core Concepts

| Object | Purpose |
|--------|---------|
| **Pod** | Smallest unit - one or more containers |
| **Deployment** | Manages replica Pods, rolling updates |
| **Service** | Stable network endpoint for Pods |
| **ConfigMap** | Non-secret configuration |
| **Secret** | Passwords, tokens |
| **Namespace** | Logical cluster partition |

---

## Essential Commands

```bash
kubectl get all                    # list resources
kubectl logs <pod-name>            # container logs
kubectl exec -it <pod> -- sh       # shell into pod
kubectl port-forward svc/hello-service 8080:80
kubectl delete -f deployment.yaml  # tear down
```

---

## Mental Model

```
Deployment (desired state: 2 replicas)
    -> Pod (container: nginx)
    -> Pod (container: nginx)
Service (load balances to Pods)
```

---

## Practice Exercises

1. Scale deployment: `kubectl scale deployment hello-app --replicas=3`
2. Expose via port-forward and curl localhost
3. Change image tag and observe rolling update
4. Add a ConfigMap and mount as env var

---

## Next Step

-> [02-fundamentals/](../02-fundamentals/)

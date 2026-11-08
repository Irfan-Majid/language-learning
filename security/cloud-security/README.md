# Cloud Security

Secure applications on **AWS, Azure, GCP** — identity, storage, network.

---

## Shared Responsibility Model

| You manage | Cloud provider manages |
|------------|------------------------|
| Your code, data, access | Physical data centers |
| IAM policies, encryption config | Hypervisor |
| Security groups | Hardware |

---

## Cloud Security Basics

| Area | Actions |
|------|---------|
| **IAM** | Least privilege, MFA on root, no long-lived keys |
| **Storage** | Encrypt S3/blobs, no public buckets |
| **Network** | Security groups, private subnets |
| **Logging** | CloudTrail, audit logs enabled |
| **Secrets** | AWS Secrets Manager, not env in code |
| **Containers** | Scan images, non-root user |

---

## Common Breaches

- Public S3 bucket with customer data
- Exposed `.env` or API keys in GitHub
- Overly permissive IAM role
- Unpatched VM in public subnet

---

## Learning Tracks

[01-beginner/](./01-beginner/) through [08-stack-switching/](./08-stack-switching/)

Pair with: [devops/docker/](../../devops/docker/), [devsecops/](../devsecops/)

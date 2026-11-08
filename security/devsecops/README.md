# DevSecOps

Integrate **security into DevOps** — shift left, automate checks in CI/CD.

---

## Shift Left Security

```
Old:  Build → Deploy → Security audit (too late)
New:  Threat model → Secure code → SAST in PR → DAST in staging → Deploy
```

---

## CI/CD Security Pipeline

```yaml
# Example GitHub Actions stages
1. Lint + unit tests
2. SAST (Semgrep, CodeQL)
3. Dependency scan (npm audit, Snyk)
4. Secrets scan (TruffleHog)
5. Build Docker image
6. Container scan (Trivy)
7. Deploy to staging
8. DAST (OWASP ZAP baseline)
9. Manual approval → production
```

---

## Tools

| Tool | Type |
|------|------|
| Semgrep | SAST |
| CodeQL | SAST (GitHub) |
| Snyk | Dependencies |
| Trivy | Container scan |
| OWASP ZAP | DAST |
| git-secrets | Prevent secret commits |

---

## Learning Tracks

[01-beginner/](./01-beginner/) through [08-stack-switching/](./08-stack-switching/)

Prerequisites: [devops/docker/](../../devops/docker/), [software-security/](../software-security/)

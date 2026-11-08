# CI/CD (Continuous Integration / Deployment)

Automate **test → build → deploy** on every code change.

---

## Concepts

| Term | Meaning |
|------|---------|
| **CI** | Merge code → auto run tests |
| **CD** | Pass tests → auto deploy |
| **Pipeline** | Steps: lint, test, build, deploy |
| **Artifact** | Built output (Docker image, zip) |

---

## Typical Pipeline

```
git push → GitHub Actions triggered
    → Install dependencies
    → Lint
    → Unit tests
    → Build
    → Security scan
    → Deploy to staging
    → (manual approve) → production
```

---

## GitHub Actions Example

See [../examples/github-actions.yml](../examples/github-actions.yml)

---

## Tools

| Tool | Use |
|------|-----|
| GitHub Actions | GitHub repos |
| GitLab CI | GitLab |
| Jenkins | Self-hosted enterprise |
| CircleCI | Cloud CI |

Pair with: [devops/docker/](../../devops/docker/), [security/devsecops/](../../security/devsecops/)

---

## Learning Tracks

[01-beginner/](./01-beginner/) — first workflow file

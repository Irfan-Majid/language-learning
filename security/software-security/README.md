# Software Security

Security across the **entire software lifecycle** — not just one app.

---

## Secure SDLC (Software Development Life Cycle)

```
Requirements  →  Security user stories, abuse cases
Design        →  Threat modeling (STRIDE)
Development   →  Secure coding, code review
Testing       →  SAST, DAST, pen test
Deployment    →  Hardened config, secrets management
Maintenance   →  Patching, vulnerability monitoring
```

---

## Key Practices

| Practice | What |
|----------|------|
| **Threat modeling** | Identify threats before coding |
| **Code review** | Human + automated security review |
| **SAST** | Static analysis (SonarQube, Semgrep) |
| **DAST** | Dynamic scanning (OWASP ZAP) |
| **Dependency scanning** | Snyk, npm audit, pip-audit |
| **SBOM** | Software Bill of Materials |
| **Secrets scanning** | git-secrets, TruffleHog |

---

## Supply Chain Security

| Risk | Mitigation |
|------|------------|
| Malicious npm/PyPI package | Lock files, verify publishers |
| Compromised CI/CD | Signed commits, protected branches |
| Typosquatting | Careful package names |

---

## STRIDE Threat Model

| Threat | Example |
|--------|---------|
| **S**poofing | Fake login |
| **T**ampering | Modify data in transit |
| **R**epudiation | Deny performing action |
| **I**nformation disclosure | Data leak |
| **D**enial of service | Crash server |
| **E**levation of privilege | User becomes admin |

---

## DevSecOps

→ [../devsecops/](../devsecops/) — automate security in pipeline

---

## Learning Tracks

[01-beginner/](./01-beginner/) through [08-stack-switching/](./08-stack-switching/)

---

*Developers: start [application-security/](../application-security/) then return here*

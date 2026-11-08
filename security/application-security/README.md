# Application Security (AppSec)

Secure the **applications** you build — web, API, mobile backends.

---

## OWASP Top 10 (2021) — Must Know

| # | Vulnerability | Prevention |
|---|---------------|------------|
| A01 | Broken Access Control | Authorization checks on every endpoint |
| A02 | Cryptographic Failures | TLS, proper encryption, no plain passwords |
| A03 | Injection | Parameterized queries, input validation |
| A04 | Insecure Design | Threat modeling early |
| A05 | Security Misconfiguration | Harden defaults, remove debug in prod |
| A06 | Vulnerable Components | `npm audit`, Dependabot, SBOM |
| A07 | Auth Failures | MFA, secure sessions, rate limiting |
| A08 | Data Integrity Failures | Verify CI/CD, signed updates |
| A09 | Logging Failures | Log security events, monitor |
| A10 | SSRF | Validate URLs server fetches |

Full list: https://owasp.org/Top10/

---

## By App Type

| Type | Folder / focus |
|------|----------------|
| Web (React, Vue) | XSS, CSRF, CSP headers |
| API (Express, FastAPI) | Auth, rate limits, input validation |
| Mobile API | Token storage, certificate pinning |
| AI/LLM apps | Prompt injection → [ai-era/07-ai-ethics/](../../ai-era/07-ai-ethics/) |

---

## Secure Coding Checklist

- [ ] Input validation (whitelist, not blacklist)
- [ ] Output encoding (prevent XSS)
- [ ] Parameterized SQL (no string concat)
- [ ] HTTPS everywhere
- [ ] Secrets in env vars, not code
- [ ] Dependency scanning in CI
- [ ] Security headers (CSP, HSTS, X-Frame-Options)
- [ ] Rate limiting on auth endpoints

---

## Examples

→ [../examples/secure-api.js](../examples/secure-api.js)  
→ [../examples/sql-injection-demo.md](../examples/sql-injection-demo.md) (lab only)

---

## Learning Tracks

[01-beginner/](./01-beginner/) through [08-stack-switching/](./08-stack-switching/)

---

*Pair with: [software-security/](../software-security/), [database-security/](../database-security/)*

# Security QA & Software Testing QA

**QA for security** + **general software testing** — find bugs before users and attackers do.

---

## Two QA Paths (Combined Here)

| Path | Focus | Repo |
|------|-------|------|
| **Software QA** | Functional, regression, E2E | [testing/](../../testing/) |
| **Security QA** | Vulnerabilities, abuse cases | This module |

**Best QA engineers know both.**

---

## Software Testing Types

```
        / E2E \           Manual exploratory + Cypress/Selenium
       / Integr.\         API tests, DB tests
      /   Unit    \       Jest, pytest, PHPUnit
     /  Security   \      OWASP checks, auth tests
```

| Type | What | Tools |
|------|------|-------|
| Unit | Functions, classes | Jest, pytest |
| Integration | API + DB | Supertest, Postman |
| E2E | Full user flows | Cypress, Selenium |
| Performance | Load, stress | k6, JMeter |
| Security | Vulns, auth bypass | OWASP ZAP, Burp, checklists |
| Regression | Nothing broke | CI test suite |
| UAT | Business acceptance | Manual with users |

---

## Security QA Checklist (Per Release)

- [ ] Auth: can't access others' data (IDOR test)
- [ ] Auth: logout invalidates session
- [ ] Input: special chars, long strings, SQL in fields
- [ ] API: no sensitive data in error messages
- [ ] HTTPS enforced
- [ ] Rate limiting on login
- [ ] File upload: reject executables
- [ ] CSRF protection on forms
- [ ] Security headers present
- [ ] Dependencies: no critical CVEs

---

## Test Case Template

```markdown
**ID:** SEC-001
**Title:** Login brute force protection
**Steps:**
1. Attempt 10 failed logins with wrong password
2. Attempt 11th login
**Expected:** Account locked or CAPTCHA after N attempts
**Actual:** ___
**Status:** Pass / Fail
```

---

## Tools by Stack

| Stack | Unit | E2E | Security |
|-------|------|-----|----------|
| JavaScript | [jest](../../testing/jest/) | [cypress](../../testing/cypress/) | OWASP ZAP |
| Python | [pytest](../../testing/pytest/) | Selenium | bandit, safety |
| PHP | [phpunit](../../testing/phpunit/) | Cypress | — |

---

## Career

QA → Security QA → AppSec is a strong path in the AI era (more AI code = more testing needed).

→ [career/04-resilient-paths/](../../career/04-resilient-paths/) Path 5

---

## Learning Tracks

[01-beginner/](./01-beginner/) — QA fundamentals + first test case  
[02-fundamentals/](./02-fundamentals/) — automation + security checks  
[03-intermediate/](./03-intermediate/) — CI integration, test plans

---

*General testing: [testing/](../../testing/) — every stack has `06-testing/`*

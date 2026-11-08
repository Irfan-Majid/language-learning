# Beginner Guide — Security QA & Software Testing

**Audience:** Aspiring QA, testers, developers who want to test better

---

## Week 1 Plan

| Day | Task |
|-----|------|
| 1 | Read: What is software testing? (functional vs non-functional) |
| 2 | Write 5 test cases for a login form (manual) |
| 3 | Pick stack → [testing/jest/](../../../testing/jest/) or [testing/cypress/](../../../testing/cypress/) |
| 4 | Run one example test from testing folder |
| 5 | Security: try logging in with SQL `' OR '1'='1` on a **local lab app** |
| 6 | Write 3 security test cases (auth, input, HTTPS) |
| 7 | Read [application-security/01-beginner/](../application-security/01-beginner/) |

---

## First Manual Test Case

```markdown
TC-001: Valid login
Precondition: User exists (test@example.com / Test123!)
Steps:
  1. Open login page
  2. Enter email and password
  3. Click Login
Expected: Redirect to dashboard, welcome message shown
```

---

## QA vs Security QA

| Software QA | Security QA |
|-------------|-------------|
| Does feature work? | Can it be abused? |
| Happy path + edge cases | Attack patterns |
| Regression | OWASP checks |

**Learn both** — highest demand.

---

## Next

→ [02-fundamentals/](../02-fundamentals/)  
→ [../../../testing/](../../../testing/)

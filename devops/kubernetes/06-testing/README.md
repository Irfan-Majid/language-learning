# Testing - Kubernetes

**Audience:** QA engineers and developers writing tests for Kubernetes projects

---

## What to Test

| Layer | Focus | Tools |
|-------|-------|-------|
| Unit | Core functions, classes, queries | Stack test runner |
| Integration | API + database, service calls | Postman, test client |
| E2E | Full user workflows | Cypress, Selenium, platform tests |

Infrastructure tests (terraform validate), smoke tests post-deploy, chaos testing intro

---

## Tester Checklist

- [ ] Know how to run Kubernetes locally
- [ ] Know the test command for this stack
- [ ] Can read stack traces and logs
- [ ] Understand expected vs actual output
- [ ] Tests run in CI before merge

---

## See Also

- [testing/](../../testing/) - all testing tools
- [security/security-qa/](../../security/security-qa/) - security testing
- [examples/](../examples/) - sample code to test against

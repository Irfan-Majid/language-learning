# Authentication & Authorization

How apps verify **who you are** (auth) and **what you can do** (authorization).

---

## Concepts

| Term | Meaning |
|------|---------|
| **Authentication** | Prove identity (login) |
| **Authorization** | What you're allowed to do |
| **Session** | Server remembers you (cookie) |
| **JWT** | Token with signed claims |
| **OAuth 2.0** | Login with Google/GitHub |
| **MFA / 2FA** | Second factor (TOTP, SMS) |

---

## Common Approaches

| Method | Best for |
|--------|----------|
| Session + cookie | Traditional web apps |
| JWT | APIs, SPAs, mobile |
| OAuth | "Sign in with Google" |
| API keys | Server-to-server |
| Passkeys | Modern passwordless |

---

## JWT Flow (Simplified)

```
1. User logs in with email/password
2. Server verifies → creates JWT (signed)
3. Client stores JWT (memory or httpOnly cookie)
4. Client sends: Authorization: Bearer <token>
5. Server verifies signature + expiry
```

**Never** store JWT in localStorage if XSS is possible — prefer httpOnly cookie.

---

## Security Checklist

- [ ] Hash passwords (bcrypt, argon2)
- [ ] HTTPS only
- [ ] Short JWT expiry + refresh tokens
- [ ] Rate limit login
- [ ] MFA for sensitive apps
- [ ] Don't roll your own crypto

---

## Examples

→ [../examples/jwt-demo.js](../examples/jwt-demo.js)

## Framework libs

| Stack | Library |
|-------|---------|
| Node | Passport.js, jsonwebtoken |
| Python | python-jose, FastAPI OAuth2 |
| PHP | Laravel Sanctum, Passport |
| Java | Spring Security |

---

## Learning Tracks

[01-beginner/](./01-beginner/) through [08-stack-switching/](./08-stack-switching/)

→ [security/application-security/](../../security/application-security/)

# Beginner Guide — Application Security

**Audience:** Developers who write web/API/mobile code

---

## Week 1: OWASP Top 3

### 1. Injection (SQL)

**Never** concatenate user input into SQL.

```javascript
// BAD
db.query(`SELECT * FROM users WHERE id = ${req.params.id}`);

// GOOD
db.query("SELECT * FROM users WHERE id = $1", [req.params.id]);
```

### 2. Broken Authentication

- Hash passwords: bcrypt, argon2 (never MD5/SHA1 alone)
- Use HTTPS only
- Session timeout
- Rate limit login

### 3. XSS (Cross-Site Scripting)

```javascript
// BAD — renders user HTML
element.innerHTML = userComment;

// GOOD — escapes HTML
element.textContent = userComment;
```

---

## Practice (Safe Lab)

1. Install DVWA or use [sql-injection-demo.md](../../examples/sql-injection-demo.md)
2. Fix one vulnerability in a demo app
3. Add security headers to an Express app → [secure-api.js](../../examples/secure-api.js)

---

## Next

→ [02-fundamentals/](../02-fundamentals/) — full OWASP Top 10

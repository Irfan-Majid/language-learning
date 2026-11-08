# SQL Injection Lab Demo (LOCAL ONLY)

> Run only on **your own lab** (DVWA, local SQLite, or docker DVWA).  
> Never test injection on websites you don't own.

---

## Vulnerable Code (DO NOT USE IN PRODUCTION)

```python
# VULNERABLE
query = f"SELECT * FROM users WHERE email = '{email}'"
```

**Attack input:** `' OR '1'='1' --`  
**Result:** Returns all users — authentication bypass.

---

## Secure Code

```python
# SECURE - parameterized
cursor.execute("SELECT * FROM users WHERE email = %s", (email,))
```

```javascript
// SECURE - parameterized
db.query("SELECT * FROM users WHERE email = $1", [email]);
```

```php
// SECURE - PDO prepared statement
$stmt = $pdo->prepare("SELECT * FROM users WHERE email = ?");
$stmt->execute([$email]);
```

---

## Practice Steps

1. Install DVWA: `docker run -p 8080:80 vulnerables/web-dvwa`
2. Set security level to "low" in DVWA
3. Try SQL injection on login form (lab only)
4. Set security level to "impossible" — read PHP source to see fix
5. Rewrite one query in your project using parameterized style

---

## Other Injection Types

| Type | Example |
|------|---------|
| SQL | `' OR 1=1--` |
| NoSQL | `{"$gt": ""}` in MongoDB |
| Command | `; rm -rf /` in shell exec |
| LDAP | Manipulated filters |

**Fix:** Never trust input. Parameterize. Validate. Least privilege.

---

→ [../database-security/](../database-security/)

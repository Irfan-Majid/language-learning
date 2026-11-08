# Database Security & Optimization

Protect databases from attacks **and** keep them fast — security + performance together.

---

## Database Security

| Threat | Prevention |
|--------|------------|
| **SQL Injection** | Parameterized queries ONLY |
| **Broken auth** | Least privilege DB users |
| **Exposed DB port** | Firewall, no public 5432/3306 |
| **Plaintext passwords** | Hash in app; encrypt columns if needed |
| **Backup theft** | Encrypt backups |
| **Insider access** | Audit logs, separate dev/prod credentials |

### Bad vs Good SQL

```sql
-- BAD (vulnerable)
SELECT * FROM users WHERE email = '" + userInput + "'

-- GOOD (parameterized - use in your language's ORM/driver)
-- Python: cursor.execute("SELECT * FROM users WHERE email = %s", (email,))
```

See [../examples/sql-injection-demo.md](../examples/sql-injection-demo.md)

---

## Database Optimization

| Technique | Purpose |
|-----------|---------|
| **Indexes** | Speed up SELECT, WHERE, JOIN |
| **EXPLAIN ANALYZE** | Find slow queries |
| **Normalization** | Reduce redundancy (3NF for OLTP) |
| **Connection pooling** | Reuse connections (PgBouncer) |
| **Vacuum / maintenance** | PostgreSQL health |
| **Query tuning** | Avoid SELECT *, N+1 queries |
| **Caching** | Redis for hot data |
| **Partitioning** | Large tables by date |

### Index example (PostgreSQL)

```sql
-- Find slow queries missing indexes
EXPLAIN ANALYZE SELECT * FROM orders WHERE customer_id = 123;

-- Add index
CREATE INDEX idx_orders_customer ON orders(customer_id);
```

---

## Security + Performance Together

| Practice | Security | Performance |
|----------|----------|-------------|
| Least privilege users | ✅ | — |
| Indexes on FK columns | — | ✅ |
| Encrypted connections (SSL) | ✅ | small overhead |
| Row-level security (PostgreSQL) | ✅ | — |
| Regular patches | ✅ | — |

---

## Repo paths

- [languages/sql/](../../languages/sql/)
- [databases/postgresql/](../../databases/postgresql/)
- [databases/mysql/](../../databases/mysql/)
- [application-security/](../application-security/)

---

## Learning Tracks

[01-beginner/](./01-beginner/) — SQL injection + basic indexes  
[02-fundamentals/](./02-fundamentals/) — users, roles, encryption  
[03-intermediate/](./03-intermediate/) — query optimization, auditing  
[04-advanced/](./04-advanced/) — RLS, TDE, compliance

---

*DBAs and backend devs: high-value career combo*

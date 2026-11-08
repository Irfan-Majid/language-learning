# Beginner Guide — Database Security & Optimization

**Audience:** Developers using SQL databases

---

## Security Week 1

| Day | Task |
|-----|------|
| 1 | Read SQL injection examples in [examples/](../../examples/) |
| 2 | Convert 1 raw SQL query to parameterized in your code |
| 3 | Create DB user with **minimal permissions** (not root) |
| 4 | Enable SSL connection to database |
| 5 | Review: are DB ports exposed to internet? (should be NO) |

---

## Optimization Week 1

| Day | Task |
|-----|------|
| 1 | Run `EXPLAIN` on your slowest query |
| 2 | Add index on a foreign key column |
| 3 | Remove `SELECT *` — list columns needed |
| 4 | Find N+1 query in your ORM (fix with JOIN or eager load) |

---

## Quick wins

```sql
-- See query plan (PostgreSQL)
EXPLAIN ANALYZE SELECT * FROM orders WHERE user_id = 5;

-- Add index
CREATE INDEX idx_orders_user_id ON orders(user_id);

-- Least privilege user (example)
CREATE USER app_readonly WITH PASSWORD 'strong_password';
GRANT SELECT ON orders TO app_readonly;
```

---

## Repo links

- [languages/sql/](../../../languages/sql/)
- [databases/postgresql/](../../../databases/postgresql/)

---

## Next

→ [02-fundamentals/](../02-fundamentals/)

# Beginner Guide — SQL

**Audience:** Anyone working with data or databases  
**Time:** 1–2 weeks

---

## What Is SQL?

**Structured Query Language** — the universal language for talking to relational databases (PostgreSQL, MySQL, SQL Server, Oracle).

Every developer, tester, and data analyst needs SQL.

---

## Core Commands

| Command | Purpose | Example |
|---------|---------|---------|
| `SELECT` | Read data | `SELECT * FROM users` |
| `INSERT` | Add data | `INSERT INTO users (name) VALUES ('Alice')` |
| `UPDATE` | Change data | `UPDATE users SET name='Bob' WHERE id=1` |
| `DELETE` | Remove data | `DELETE FROM users WHERE id=1` |
| `CREATE` | Make tables | `CREATE TABLE users (...)` |
| `JOIN` | Combine tables | `SELECT * FROM a JOIN b ON a.id = b.a_id` |

---

## Practice

See [examples/basic-queries.sql](../examples/basic-queries.sql)

Use free tools:
- https://sqliteonline.com
- PostgreSQL + pgAdmin
- MySQL Workbench

---

## Next → [PostgreSQL](../../databases/postgresql/) or [MySQL](../../databases/mysql/)

# Beginner Guide - PostgreSQL

**Time:** 1-2 weeks

## Step 1: Install
- https://www.postgresql.org/download/ or Docker:
```bash
docker run -p 5432:5432 -e POSTGRES_PASSWORD=pass postgres
```

## Step 2: Connect
```bash
psql -U postgres -h localhost
```

## Step 3: Run example
```bash
psql -U postgres -f examples/hello.sql
```

## Core SQL
```sql
CREATE TABLE users (id SERIAL PRIMARY KEY, name TEXT, email TEXT UNIQUE);
INSERT INTO users (name, email) VALUES ('Alice', 'alice@example.com');
SELECT * FROM users;
```

## Practice
1. E-commerce schema: users, products, orders
2. INNER JOIN orders to users
3. JSONB column storing metadata

-> [02-fundamentals/](../02-fundamentals/)

# SQL Cheat Sheet

```sql
-- CRUD
SELECT col1, col2 FROM table WHERE condition ORDER BY col1 LIMIT 10;
INSERT INTO table (col1, col2) VALUES ('a', 1);
UPDATE table SET col1 = 'b' WHERE id = 1;
DELETE FROM table WHERE id = 1;

-- Joins
SELECT * FROM orders o
INNER JOIN users u ON o.user_id = u.id;
LEFT JOIN products p ON o.product_id = p.id;

-- Aggregates
SELECT category, COUNT(*), AVG(price)
FROM products GROUP BY category HAVING COUNT(*) > 5;

-- Indexes
CREATE INDEX idx_email ON users(email);

-- Transactions
BEGIN;
UPDATE accounts SET balance = balance - 100 WHERE id = 1;
UPDATE accounts SET balance = balance + 100 WHERE id = 2;
COMMIT;

-- Useful
DISTINCT col    -- unique values
COALESCE(col, 0) -- null to default
CASE WHEN x > 0 THEN 'pos' ELSE 'neg' END
```

**Practice:** [languages/sql/examples/](../languages/sql/examples/)

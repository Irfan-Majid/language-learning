# Beginner Guide — Data Analysis

**Entry point** into data careers — lower barrier than ML, highly employable.

---

## Week 1: SQL + Spreadsheets

| Day | Task |
|-----|------|
| 1 | [languages/sql/01-beginner/](../../languages/sql/01-beginner/) |
| 2 | Practice SELECT, WHERE, ORDER BY |
| 3 | Learn GROUP BY, COUNT, AVG |
| 4 | Excel or Google Sheets — pivot table tutorial |
| 5 | JOIN two tables in SQL |
| 6 | Run [examples/pandas_analysis.py](../examples/pandas_analysis.py) |
| 7 | Find a public dataset (Kaggle) — explore in Excel |

---

## Tools to Learn (In Order)

1. **SQL** — non-negotiable
2. **Excel / Google Sheets** — universal
3. **pandas (Python)** — scale up analysis
4. **Power BI or Tableau** — [business-intelligence/](../business-intelligence/)

---

## First SQL Exercise

```sql
-- How many orders per customer?
SELECT customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
ORDER BY order_count DESC;
```

---

## Next

→ [02-fundamentals/](../02-fundamentals/)  
→ [../business-intelligence/](../business-intelligence/)

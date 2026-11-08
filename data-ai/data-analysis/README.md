# Data Analysis

Turn raw data into **answers and reports** — the most accessible entry into the data career path.

---

## What Data Analysts Do

| Task | Tools |
|------|-------|
| Query databases | SQL |
| Clean & transform data | Excel, pandas |
| Create reports | Excel, Google Sheets |
| Build dashboards | Power BI, Tableau |
| Present insights | Slides, meetings |

**Lower barrier than ML** — great first step toward data science or BI.

---

## Learning Path

| Track | Topics |
|-------|--------|
| [01-beginner/](./01-beginner/) | Spreadsheets, basic SQL, data types |
| [02-fundamentals/](./02-fundamentals/) | JOINs, aggregations, pandas |
| [03-intermediate/](./03-intermediate/) | Window functions, pivot tables, viz |
| [04-advanced/](./04-advanced/) | Python automation, APIs, scheduling |
| [05-expert/](./05-expert/) | Analytics engineering, dbt |
| [06-testing/](./06-testing/) | Data validation, QA for reports |
| [07-project-management/](./07-project-management/) | Analytics requests, stakeholder mgmt |
| [08-stack-switching/](./08-stack-switching/) | Developer → analyst |

---

## SQL (Essential)

```sql
-- examples/sales_analysis.sql
SELECT
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS avg_salary,
    MAX(salary) AS max_salary
FROM employees
WHERE hire_date >= '2020-01-01'
GROUP BY department
HAVING AVG(salary) > 50000
ORDER BY avg_salary DESC;
```

Repo: [languages/sql/](../../languages/sql/), [databases/postgresql/](../../databases/postgresql/)

---

## pandas (Python Analysis)

```python
# examples/pandas_analysis.py
import pandas as pd

df = pd.read_csv("sales.csv")  # your file

# Filter, group, aggregate
monthly = (
    df[df["amount"] > 0]
    .groupby("month")["amount"]
    .agg(["sum", "mean", "count"])
)
print(monthly)
```

---

## Excel Skills Checklist

- [ ] VLOOKUP / XLOOKUP
- [ ] Pivot tables
- [ ] Conditional formatting
- [ ] Basic charts
- [ ] Power Query (ETL in Excel)

---

## Career Path

```
Data Analyst
    ↓ (+ Python, stats)
Data Scientist
    ↓ (+ ML, deployment)
ML / AI Engineer
```

Or:

```
Data Analyst
    ↓ (+ dashboards)
BI Developer / Analyst
```

---

## Next

→ [01-beginner/](./01-beginner/)  
→ [../business-intelligence/](../business-intelligence/) for dashboards  
→ [../mathematics/02-fundamentals/](../mathematics/02-fundamentals/) for stats

# Business Intelligence (BI)

Transform data into **dashboards and KPIs** for business decisions — stable, in-demand career path.

---

## What Is BI?

| BI | Data Science |
|----|--------------|
| What happened / is happening | What might happen |
| Dashboards, reports | Models, predictions |
| Power BI, Tableau | Python, Jupyter |
| Business users | Technical teams |

**BI is AI-resilient:** Executives always need clear numbers and visuals.

---

## BI Tools (Learn One Deeply)

| Tool | Best for | Market |
|------|----------|--------|
| **Power BI** | Microsoft shops | Enterprise, huge |
| **Tableau** | Visual analytics | Enterprise |
| **Looker** | Google cloud | Tech companies |
| **Metabase** | Open source startups | SMB |
| **Excel + Power Query** | Everywhere | Universal |

**Recommendation:** Start **Power BI** (free desktop) or **Excel** if zero budget.

---

## Learning Path

| Track | Topics |
|-------|--------|
| [01-beginner/](./01-beginner/) | KPIs, dimensions vs measures, first chart |
| [02-fundamentals/](./02-fundamentals/) | Power BI / Tableau basics, data model |
| [03-intermediate/](./03-intermediate/) | DAX, calculated columns, drill-through |
| [04-advanced/](./04-advanced/) | Star schema, incremental refresh, RLS |
| [05-expert/](./05-expert/) | BI architecture, semantic layers |
| [06-testing/](./06-testing/) | Report QA, data reconciliation |
| [07-project-management/](./07-project-management/) | BI project with stakeholders |
| [08-stack-switching/](./08-stack-switching/) | Developer or analyst → BI |

---

## Core Concepts

| Concept | Meaning |
|---------|---------|
| **Fact table** | Numbers (sales, revenue) |
| **Dimension table** | Categories (product, date, region) |
| **KPI** | Key Performance Indicator |
| **ETL / ELT** | Extract, transform, load data |
| **Star schema** | Fact surrounded by dimensions |
| **DAX** | Formula language in Power BI |
| **Drill-down** | Click summary → detail |

---

## BI + SQL + Python Stack

```
SQL (extract data)
    ↓
Python/pandas (clean, optional)
    ↓
Power BI / Tableau (visualize)
    ↓
Share with business users
```

Repo paths:
- [languages/sql/](../../languages/sql/)
- [data-analysis/](../data-analysis/)
- [databases/postgresql/](../../databases/postgresql/)

---

## Sample KPI Dashboard Plan

| Page | Visuals |
|------|---------|
| Executive summary | Revenue, growth %, top products |
| Sales detail | By region, by rep, trend line |
| Operations | Inventory, fulfillment time |
| Filters | Date range, region, product category |

---

## BI + AI (2026 Trend)

| Use case | How |
|----------|-----|
| Natural language queries | "Show me Q3 sales by region" |
| AI-generated insights | Power BI Copilot, Tableau Pulse |
| RAG over reports | Chat with your BI data |

Learn: [rag-applications/](../rag-applications/) + BI tool AI features

---

## Portfolio Project

**Sales Executive Dashboard:**
1. Sample dataset (Kaggle superstore)
2. SQL or Power Query cleanup
3. Power BI with 3 pages + DAX measures
4. Publish to Power BI Service (free tier)
5. Screenshot in [career/07-portfolio/](../../career/07-portfolio/)

---

## Free Learning

| Resource | Tool |
|----------|------|
| Microsoft Learn | Power BI |
| Tableau Public tutorials | Tableau |
| Guy in a Cube (YouTube) | Power BI |
| SQL for BI | [languages/sql/](../../languages/sql/) |

---

## Next

→ [01-beginner/](./01-beginner/)  
→ [../data-analysis/](../data-analysis/)

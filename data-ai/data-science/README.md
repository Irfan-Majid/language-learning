# Data Science

End-to-end workflow: **ask question → get data → explore → model → communicate insights**.

---

## Data Science vs Data Analysis vs ML

| Role | Primary output |
|------|----------------|
| **Data Analyst** | Dashboards, reports, SQL answers |
| **Data Scientist** | Models, experiments, insights, prototypes |
| **ML Engineer** | Production models at scale |
| **AI Engineer** | LLM products, RAG, agents |

Data scientist often spans analysis + ML + communication.

---

## The Data Science Process

```
1. Business question
2. Data collection (SQL, APIs, scraping)
3. Data cleaning (pandas)
4. Exploratory Data Analysis (EDA)
5. Feature engineering
6. Modeling (ML)
7. Evaluation & interpretation
8. Deploy or hand off to engineering
9. Communicate to stakeholders
```

---

## Learning Path

| Track | Topics |
|-------|--------|
| [01-beginner/](./01-beginner/) | DS role, Jupyter, first dataset |
| [02-fundamentals/](./02-fundamentals/) | pandas, EDA, visualization |
| [03-intermediate/](./03-intermediate/) | Stats, hypothesis testing, scikit-learn |
| [04-advanced/](./04-advanced/) | Feature stores, pipelines, deep learning |
| [05-expert/](./05-expert/) | Causal inference, research, MLOps |
| [06-testing/](./06-testing/) | Data quality, model monitoring |
| [07-project-management/](./07-project-management/) | DS project scoping |
| [08-stack-switching/](./08-stack-switching/) | Analyst → scientist |

---

## Tech Stack

| Tool | Purpose |
|------|---------|
| Python | Primary language |
| Jupyter | Notebooks |
| pandas | Data manipulation |
| NumPy | Numerical computing |
| Matplotlib / Seaborn / Plotly | Visualization |
| scikit-learn | ML models |
| SQL | Data extraction |
| Git | Version control notebooks |

Repo: [languages/python/](../../languages/python/), [languages/sql/](../../languages/sql/)

---

## EDA Example

```python
# examples/eda_basics.py
import pandas as pd

# Sample: load CSV (use your own data)
df = pd.DataFrame({
    "age": [25, 30, 35, 28, 42],
    "salary": [50000, 65000, 80000, 55000, 95000],
    "department": ["IT", "HR", "IT", "Sales", "IT"]
})

print("Shape:", df.shape)
print("\nDescribe:\n", df.describe())
print("\nDepartment counts:\n", df["department"].value_counts())
print("\nMissing values:\n", df.isnull().sum())
```

---

## CampusX Alignment

- **100 Days of Machine Learning** — core DS + ML skills
- **Web Scraping for Data Science** — data collection course

---

## Portfolio Projects

| Project | Skills |
|---------|--------|
| Kaggle Titanic | Classification, EDA |
| Customer segmentation | Clustering |
| Sales forecasting | Time series |
| NLP sentiment | Text + ML |
| End-to-end + RAG | DS + AI engineering |

---

## Next

→ [01-beginner/](./01-beginner/)  
→ [../data-analysis/](../data-analysis/) if starting simpler  
→ [../machine-learning/](../machine-learning/)

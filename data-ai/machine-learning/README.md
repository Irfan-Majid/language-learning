# Machine Learning (ML)

Learn to build models that learn from data — the foundation under AI, data science, and modern products.

**CampusX:** Follow **100 Days of Machine Learning** YouTube playlist alongside this folder.

---

## ML vs AI vs Data Science

| Field | Focus |
|-------|-------|
| **Data Analysis** | What happened? (reports, SQL) |
| **Data Science** | Why? What will happen? (stats, EDA) |
| **Machine Learning** | Predict automatically from data |
| **AI Engineering** | Deploy LLMs and agents in products |

---

## Learning Path

| Track | Topics |
|-------|--------|
| [01-beginner/](./01-beginner/) | What is ML, types, Python setup |
| [02-fundamentals/](./02-fundamentals/) | scikit-learn, regression, classification |
| [03-intermediate/](./03-intermediate/) | Feature engineering, tuning, pipelines |
| [04-advanced/](./04-advanced/) | Deep learning, PyTorch, NLP basics |
| [05-expert/](./05-expert/) | Research papers, custom architectures |
| [06-testing/](./06-testing/) | Model validation, data drift |
| [07-project-management/](./07-project-management/) | ML project lifecycle |
| [08-stack-switching/](./08-stack-switching/) | Dev → ML engineer |

---

## CampusX 100 Days ML — Topic Map

| ML topic | Repo section |
|----------|--------------|
| Python for ML | [languages/python/](../../languages/python/) |
| NumPy, pandas | [data-analysis/](../data-analysis/) |
| Visualization | [data-science/](../data-science/) |
| Supervised learning | `02-fundamentals/` |
| Unsupervised learning | `03-intermediate/` |
| Model evaluation | `03-intermediate/` |
| Feature engineering | `03-intermediate/` |
| Pipelines | `04-advanced/` |
| Deep learning intro | `04-advanced/` |

---

## Core Libraries

```bash
pip install scikit-learn pandas numpy matplotlib jupyter
# Advanced:
pip install xgboost torch transformers
```

---

## First ML Model

```python
# examples/first_model.py
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score

X, y = load_iris(return_X_y=True)
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)

model = RandomForestClassifier()
model.fit(X_train, y_train)
predictions = model.predict(X_test)
print(f"Accuracy: {accuracy_score(y_test, predictions):.2f}")
```

---

## Project Ideas

| Level | Project |
|-------|---------|
| Beginner | Iris classifier, house price prediction |
| Intermediate | Customer churn, spam detection |
| Advanced | Image classifier, sentiment analysis |
| Expert | Fine-tune a small LLM |

---

## Next

→ [01-beginner/](./01-beginner/)  
→ [../mathematics/](../mathematics/) for math foundation  
→ CampusX 100 Days ML on YouTube

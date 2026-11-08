# Mathematics for Data, ML & AI

Math is the **foundation** — skip it and ML/AI feels like magic you can't debug.

You don't need a PhD. You need **practical math** for the job.

---

## What Math You Actually Need

| Area | Used for | Priority |
|------|----------|----------|
| **Statistics** | Data science, A/B tests, ML evaluation | ⭐⭐⭐⭐⭐ |
| **Linear algebra** | ML, neural nets, embeddings | ⭐⭐⭐⭐ |
| **Calculus** | Gradient descent, optimization | ⭐⭐⭐ |
| **Probability** | Bayesian ML, uncertainty | ⭐⭐⭐⭐ |
| **Discrete math** | Algorithms, DSA for AI interviews | ⭐⭐⭐ |

---

## Learning Path

| Track | Topics |
|-------|--------|
| [01-beginner/](./01-beginner/) | Arithmetic refresh, sets, functions |
| [02-fundamentals/](./02-fundamentals/) | Statistics: mean, variance, distributions |
| [03-intermediate/](./03-intermediate/) | Linear algebra: vectors, matrices, dot product |
| [04-advanced/](./04-advanced/) | Calculus: derivatives, gradient descent intuition |
| [05-expert/](./05-expert/) | Optimization, information theory |
| [06-testing/](./06-testing/) | Statistical testing for experiments |
| [07-project-management/](./07-project-management/) | Stats for business decisions |
| [08-stack-switching/](./08-stack-switching/) | Math for career switchers |

---

## CampusX Alignment

- **DSA for AI** course → discrete math + algorithms for AI interviews
- **100 Days ML** → statistics modules map to `02-fundamentals/`

---

## Statistics (Start Here)

```python
# examples/stats_basics.py
import numpy as np

data = [23, 25, 22, 30, 28, 25, 27, 24, 26, 29]

mean = np.mean(data)
median = np.median(data)
std = np.std(data)

print(f"Mean: {mean:.1f}")
print(f"Median: {median:.1f}")
print(f"Std Dev: {std:.1f}")
```

**Concepts:** mean, median, mode, variance, standard deviation, correlation, p-values, confidence intervals

---

## Linear Algebra (For ML)

| Concept | ML use |
|---------|--------|
| Vectors | Feature representations |
| Matrices | Dataset as matrix, weights in neural nets |
| Dot product | Similarity, attention mechanisms |
| Eigenvalues | PCA dimensionality reduction |

---

## Calculus (Intuition Only)

You need to understand **gradient descent**, not solve integrals by hand:

```
Loss function → derivative → which direction reduces error → update weights
```

Watch: 3Blue1Brown "Neural networks" series (YouTube)

---

## Free Resources

| Resource | Topic |
|----------|-------|
| Khan Academy | Statistics, linear algebra |
| 3Blue1Brown | Linear algebra, calculus intuition |
| StatQuest (YouTube) | Statistics for biologists — great for all |
| MIT OCW 18.06 | Linear algebra |
| CampusX DSA for AI | Interview math |

---

## Study Order With Other Modules

```
mathematics/02-fundamentals/ (stats)
    ↓
data-analysis/ (apply stats to real data)
    ↓
machine-learning/ (stats + linear algebra)
    ↓
ai-engineering/ (embeddings = vectors)
```

---

## Next

→ [01-beginner/](./01-beginner/)  
→ [../data-analysis/](../data-analysis/)

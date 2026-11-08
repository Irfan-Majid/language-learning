# Logical Thinking & Problem Decomposition

Before code — **how to think** about any problem.

---

## Universal Problem-Solving Steps

```
1. UNDERSTAND — What is asked? What is input/output?
2. PLAN     — Pseudocode, draw diagram, examples
3. IMPLEMENT — Code in small steps
4. TEST     — Normal, edge, empty, huge
5. REFLECT  — Can it be simpler? Faster?
```

---

## Decomposition Example

**Problem:** Build a todo app.

```
Break into:
├── Display list of todos
├── Add new todo
├── Mark complete
├── Delete todo
└── Persist (localStorage or API)

Each sub-problem → one function/component
```

---

## Edge Cases Checklist

Always ask:

- [ ] Empty input?
- [ ] One item?
- [ ] Maximum size?
- [ ] Duplicates?
- [ ] Negative numbers?
- [ ] Special characters?
- [ ] Concurrent users?

---

## Pseudocode First

```
FUNCTION findMax(numbers):
  IF numbers is empty: RETURN null
  max = numbers[0]
  FOR each n in numbers:
    IF n > max: max = n
  RETURN max
```

Then translate to your language.

---

## Practice (No Computer)

| Puzzle type | Where |
|-------------|-------|
| Logic grids | Puzzle books, Brilliant.org |
| Word problems | Math without code first |
| Flowcharts | Draw login flow on paper |

---

## Learning Tracks

[01-beginner/](./01-beginner/) — decomposition exercises  
[02-fundamentals/](./02-fundamentals/) — flowcharts, pseudocode

---

*Pair with: [debugging/](../debugging/), [algorithms-data-structures/](../algorithms-data-structures/)*

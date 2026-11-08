# Beginner Guide — Python

**Audience:** First-time learners  
**Time:** 1–2 weeks

---

## Step 1: Install Python

1. Download from https://www.python.org/downloads/ (Python 3.12+)
2. Check "Add Python to PATH" during install
3. Verify:
```bash
python --version
```

---

## Step 2: Your First Program

```python
# examples/hello.py
print("Hello, World!")
```

```bash
python examples/hello.py
```

---

## Step 3: Core Concepts

### Variables
```python
name = "Alice"
age = 25
is_student = True
print(f"Name: {name}, Age: {age}")
```

### Conditionals
```python
score = 85
if score >= 90:
    print("A grade")
elif score >= 80:
    print("B grade")
else:
    print("Keep practicing")
```

### Loops
```python
for i in range(1, 6):
    print(i)

fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)
```

### Functions
```python
def add(a, b):
    return a + b

def greet(name="World"):
    return f"Hello, {name}!"

print(add(2, 3))
print(greet("Python"))
```

### Lists & Dictionaries
```python
numbers = [1, 2, 3, 4, 5]
user = {"name": "Bob", "age": 30}
print(numbers[0])
print(user["name"])
```

---

## Step 4: Practice Exercises

1. Personalized greeting with `input()`
2. Even/odd checker function
3. Sum a list of numbers
4. FizzBuzz 1–20

---

## Common Beginner Mistakes

| Mistake | Fix |
|---------|-----|
| Indentation errors | Use 4 spaces consistently |
| `=` vs `==` | `=` assigns, `==` compares |
| Missing colon after `if`/`for`/`def` | Always add `:` |
| Python 2 vs 3 | Use Python 3 only |

---

## Next → [02-fundamentals/](../02-fundamentals/)

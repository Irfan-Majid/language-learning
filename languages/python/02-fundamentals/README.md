# Fundamentals - Python

**Audience:** Junior developers (0-1 year)  
**Prerequisites:** [01-beginner](../01-beginner/)

---

## Topics

### 1. Lists, tuples, sets, and dicts

```python
nums = [1, 2, 3]
nums.append(4)
point = (10, 20)          # immutable
unique = {1, 2, 2, 3}     # {1, 2, 3}
user = {"name": "Alice", "age": 28}
```

### 2. List comprehensions

```python
squares = [n * n for n in range(10)]
evens = [n for n in range(20) if n % 2 == 0]
matrix = [[i * j for j in range(3)] for i in range(3)]
```

### 3. Functions

```python
def greet(name, greeting="Hello"):
    return f"{greeting}, {name}!"

def sum_all(*args):
    return sum(args)

def print_info(**kwargs):
    for k, v in kwargs.items():
        print(f"{k}: {v}")
```

### 4. Modules and venv

```bash
python -m venv .venv
# Windows:
.venv\Scripts\activate
pip install requests
```

```python
import json
from pathlib import Path
```

### 5. Exception handling

```python
try:
    value = int(input("Enter a number: "))
except ValueError:
    print("That was not a valid number")
finally:
    print("Done")
```

### 6. File I/O with pathlib

```python
from pathlib import Path
p = Path("data.txt")
p.write_text("Hello, file!", encoding="utf-8")
content = p.read_text(encoding="utf-8")
```

---

## Practice Project

**CLI todo app:** add, list, mark complete, delete tasks. Persist to `tasks.json`.

---

## Next

-> [03-intermediate/](../03-intermediate/)

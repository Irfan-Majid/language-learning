# Python Cheat Sheet

```python
# Variables & types
x = 42
name: str = "Alice"   # type hint

# Collections
lst = [1, 2, 3]
dct = {"a": 1, "b": 2}
tpl = (1, 2)
st = {1, 2, 3}

# Comprehensions
[x*2 for x in range(10) if x % 2 == 0]
{k: v for k, v in dct.items()}

# Functions
def greet(name: str = "World") -> str:
    return f"Hello, {name}!"

# *args **kwargs
def log(*args, **kwargs): pass

# Classes
@dataclass
class User:
    name: str
    age: int

# Exceptions
try:
    risky()
except ValueError as e:
    print(e)
finally:
    cleanup()

# File I/O
from pathlib import Path
Path("f.txt").read_text()

# Common stdlib
import json, os, sys, re, datetime
```

**Run examples:** [languages/python/examples/](../languages/python/examples/)

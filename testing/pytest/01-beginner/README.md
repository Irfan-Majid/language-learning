# Beginner Guide - pytest

**Time:** 1 week | **Prerequisites:** [Python](../../languages/python/01-beginner/)

## Step 1: Install
```bash
pip install pytest
```

## Step 2: First test
See [examples/test_hello.py](../examples/test_hello.py)

```bash
pytest examples/test_hello.py -v
```

## Step 3: Core patterns
```python
def test_add():
    assert add(2, 3) == 5

@pytest.fixture
def sample_user():
    return {"name": "Alice"}

def test_user(sample_user):
    assert sample_user["name"] == "Alice"
```

## Practice
1. Parametrize test with 3 inputs
2. Test FastAPI endpoint with TestClient
3. Coverage: `pip install pytest-cov && pytest --cov`

-> [02-fundamentals/](../02-fundamentals/)

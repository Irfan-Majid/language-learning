# Beginner Guide - FastAPI

**Time:** 1-2 weeks | **Prerequisites:** [Python](../../languages/python/01-beginner/)

## Step 1: Install
```bash
pip install fastapi uvicorn
```

## Step 2: Run example
```bash
cd examples
pip install -r requirements.txt
uvicorn hello:app --reload
```
Open http://127.0.0.1:8000 and http://127.0.0.1:8000/docs

## Step 3: Core concepts
```python
from fastapi import FastAPI
app = FastAPI()

@app.get("/")
def root():
    return {"message": "Hello"}

@app.get("/items/{id}")
def get_item(id: int):
    return {"id": id}
```

## Practice
1. POST endpoint accepting JSON body
2. Query parameter `?q=search`
3. Pydantic model for request validation

-> [02-fundamentals/](../02-fundamentals/)

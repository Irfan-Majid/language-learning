# FastAPI Cheat Sheet

```python
from fastapi import FastAPI, HTTPException, Depends, Query
from pydantic import BaseModel

app = FastAPI()

class Item(BaseModel):
    name: str
    price: float

@app.get("/")
def root():
    return {"ok": True}

@app.get("/items/{item_id}")
def get_item(item_id: int, q: str | None = Query(None)):
    return {"id": item_id, "q": q}

@app.post("/items", status_code=201)
def create(item: Item):
    return item

@app.exception_handler(404)
async def not_found(request, exc):
    return JSONResponse({"error": "not found"}, 404)

# Run: uvicorn main:app --reload
# Docs: http://localhost:8000/docs
```

**Examples:** [frameworks/fastapi/examples/](../frameworks/fastapi/examples/)

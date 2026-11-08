# Beginner Guide - Flask

**Audience:** First-time learners (know Python basics)  
**Time:** 1-2 weeks

**Prerequisites:** [languages/python/01-beginner/](../../languages/python/01-beginner/)

---

## Step 1: Install

```bash
pip install flask
```

---

## Step 2: Run the Hello Example

```bash
cd examples
python hello.py
```

Open http://127.0.0.1:5000/ and http://127.0.0.1:5000/users/1

---

## Step 3: Core Concepts

```python
from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route("/")
def home():
    return jsonify({"message": "Hello!"})

@app.route("/search")
def search():
    q = request.args.get("q", "")
    return jsonify({"query": q})

if __name__ == "__main__":
    app.run(debug=True)
```

| Concept | Flask |
|---------|-------|
| Routes | `@app.route("/path")` |
| JSON APIs | `jsonify({...})` |
| Query params | `request.args.get("key")` |
| POST body | `request.get_json()` |
| Templates | `render_template("page.html")` |

---

## Flask vs Django

| | Flask | Django |
|---|-------|--------|
| Size | Micro | Batteries-included |
| Best for | APIs, microservices | Full web apps |
| ORM | Optional (SQLAlchemy) | Built-in |

---

## Practice Exercises

1. Add a `/health` endpoint returning `{"status": "ok"}`
2. Accept POST `/users` with JSON body `{name, email}`
3. Return 404 for unknown routes with `abort(404)`
4. Add a simple HTML template with Jinja2

---

## Next Step

-> [02-fundamentals/](../02-fundamentals/)

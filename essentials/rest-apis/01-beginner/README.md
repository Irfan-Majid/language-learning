# Beginner Guide — REST APIs

---

## Day 1: HTTP basics

| Method | Use |
|--------|-----|
| GET | Read data |
| POST | Create |
| PUT/PATCH | Update |
| DELETE | Remove |

Test with browser: `https://jsonplaceholder.typicode.com/users/1`

---

## Day 2: curl

```bash
curl https://jsonplaceholder.typicode.com/users/1
curl -X POST https://jsonplaceholder.typicode.com/posts -H "Content-Type: application/json" -d "{\"title\":\"test\",\"body\":\"hi\",\"userId\":1}"
```

---

## Day 3–7: Build

Pick one:
- [frameworks/express/examples/hello.js](../../../frameworks/express/examples/hello.js)
- [frameworks/fastapi/examples/hello.py](../../../frameworks/fastapi/examples/hello.py)

Add: GET `/users` and POST `/users` with JSON.

---

## Next

→ [authentication/01-beginner/](../authentication/01-beginner/)

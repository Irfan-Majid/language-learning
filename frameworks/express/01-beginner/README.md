# Beginner Guide — Express.js

**Prerequisite:** [Node.js 01-beginner](../nodejs/01-beginner/) first (runtime + npm)

**Audience:** After JavaScript + Node.js basics  
**Time:** 1–2 weeks

---

## What You Will Learn

- [ ] Build HTTP APIs with Express
- [ ] Routes, middleware, JSON responses
- [ ] Run and test with curl or Postman

---

## Step 1: Setup

```bash
mkdir my-api && cd my-api
npm init -y
npm install express
```

---

## Step 2: First Express App

See [../examples/hello.js](../examples/hello.js)

```bash
cd frameworks/express/examples
npm install express
node hello.js
```

Open http://localhost:3000

---

## Step 3: Core Concepts

| Concept | Purpose |
|---------|---------|
| `app.get()` | Handle GET requests |
| `app.post()` | Handle POST requests |
| `app.use()` | Middleware |
| `req.params` | URL parameters |
| `req.body` | POST body (use `express.json()`) |

---

## Learning order

```
JavaScript → Node.js → Express → PostgreSQL → React
```

---

## Next

→ [02-fundamentals/](../02-fundamentals/)

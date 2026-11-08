# Node.js

> **Category:** JavaScript runtime (backend & tooling)  
> **Global use:** Powers millions of APIs, CLIs, and full-stack JavaScript apps  
> **Pair with:** [Express](../express/), [Next.js](../nextjs/), [Jest](../../testing/jest/)

---

## What Is Node.js?

**Node.js** is a runtime that runs JavaScript **outside the browser** using Chrome's V8 engine. It is not a framework — it is the **engine**. Frameworks like **Express**, **NestJS**, and **Next.js** sit on top.

```
Browser JavaScript  →  DOM, user clicks
Node.js JavaScript  →  Files, databases, HTTP servers, CLI tools
```

---

## Node.js vs Express (Don't Confuse)

| | Node.js | Express |
|---|---------|---------|
| **What** | Runtime | Web framework |
| **Analogy** | Engine | Car built on engine |
| **Folder** | `frameworks/nodejs/` | `frameworks/express/` |
| **Learn order** | First (runtime + npm) | Second (HTTP APIs) |

---

## When to Choose Node.js

| Choose Node.js stack | Consider alternatives |
|----------------------|----------------------|
| React/Vue frontend + JS backend | Python (AI/data), Go (performance) |
| Real-time apps (chat, games) | |
| npm packages you need | |
| One language for full team | |

---

## Prerequisites

- [languages/javascript/01-beginner/](../../languages/javascript/01-beginner/) — JS basics first
- [web/html-css/](../../web/html-css/) — if building full web apps

---

## Learning Tracks

| Track | Folder | You will learn |
|-------|--------|----------------|
| Beginner | [01-beginner](./01-beginner/) | Install, first script, npm |
| Fundamentals | [02-fundamentals](./02-fundamentals/) | Modules, fs, path, events |
| Intermediate | [03-intermediate](./03-intermediate/) | HTTP server, streams, async |
| Advanced | [04-advanced](./04-advanced/) | Cluster, worker threads, perf |
| Expert | [05-expert](./05-expert/) | libuv, V8, contributing |
| Testing | [06-testing](./06-testing/) | Jest, Supertest |
| Project Management | [07-project-management](./07-project-management/) | Node project delivery |
| Stack Switching | [08-stack-switching](./08-stack-switching/) | PHP/Java/Python → Node |

---

## Quick Example

```bash
cd examples
node hello.js
node file-read.js
```

---

## Learning Path After Node.js

```
nodejs/ (runtime + npm)
    ↓
express/ or nextjs/ (web)
    ↓
databases/postgresql/ (data)
    ↓
devops/docker/ (deploy)
```

---

## Related

- [express/](../express/) — HTTP APIs
- [nextjs/](../nextjs/) — full-stack React
- [languages/typescript/](../../languages/typescript/) — typed Node.js
- [testing/jest/](../../testing/jest/) — test Node code

---

*Start: [01-beginner/](./01-beginner/)*

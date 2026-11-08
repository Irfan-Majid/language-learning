# Beginner Guide — React

**Audience:** Developers who know HTML/CSS/JavaScript  
**Time:** 2–3 weeks

---

## What Is React?

A **JavaScript library** for building user interfaces with reusable **components**. Maintained by Meta. Most popular frontend library worldwide.

---

## Setup

```bash
npx create-react-app my-app
cd my-app
npm start
```

Or with Vite (faster):
```bash
npm create vite@latest my-app -- --template react
cd my-app && npm install && npm run dev
```

---

## Your First Component

```jsx
// examples/Hello.jsx
function Hello() {
  const name = "World";
  return <h1>Hello, {name}!</h1>;
}

export default Hello;
```

---

## Core Concepts

### JSX
HTML-like syntax inside JavaScript:
```jsx
const element = <div className="card">Content</div>;
```

### Props (pass data to components)
```jsx
function Greeting({ name }) {
  return <p>Hello, {name}!</p>;
}
<Greeting name="Alice" />
```

### State (data that changes)
```jsx
import { useState } from "react";

function Counter() {
  const [count, setCount] = useState(0);
  return (
    <button onClick={() => setCount(count + 1)}>
      Count: {count}
    </button>
  );
}
```

### Lists
```jsx
const items = ["Apple", "Banana"];
<ul>
  {items.map(item => <li key={item}>{item}</li>)}
</ul>
```

---

## Practice Project

Build a **Todo List** with add, complete, and delete.

---

## Next → [02-fundamentals/](../02-fundamentals/) → [Next.js](../../nextjs/) for full-stack

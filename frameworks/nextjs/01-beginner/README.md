# Beginner Guide - Next.js

**Audience:** First-time learners (know React basics)  
**Time:** 2-3 weeks

**Prerequisites:** [languages/javascript/01-beginner/](../../languages/javascript/01-beginner/), [frameworks/react/01-beginner/](../react/01-beginner/)

---

## Step 1: Create a Project

```bash
npx create-next-app@latest my-app
# Choose: TypeScript yes, App Router yes, ESLint yes
cd my-app
npm run dev
```

Open http://localhost:3000

---

## Step 2: Understand App Router

```
app/
  page.tsx        ->  /
  about/
    page.tsx      ->  /about
  api/
    hello/
      route.ts    ->  /api/hello
```

See [examples/page.tsx](../examples/page.tsx) for a minimal home page.

---

## Step 3: Server vs Client Components

```tsx
// Server Component (default) - runs on server
export default async function Page() {
  const data = await fetch("https://api.example.com/data");
  return <main>{/* render */}</main>;
}

// Client Component - interactivity
"use client";
import { useState } from "react";
export default function Counter() {
  const [n, setN] = useState(0);
  return <button onClick={() => setN(n + 1)}>{n}</button>;
}
```

---

## Step 4: API Route

```ts
// app/api/hello/route.ts
export async function GET() {
  return Response.json({ message: "Hello from Next.js API!" });
}
```

---

## Practice Exercises

1. Add `/about` page with static content
2. Create `/api/users` returning JSON array
3. Fetch API data in a Server Component
4. Add a client-side counter component

---

## Next Step

-> [02-fundamentals/](../02-fundamentals/)

# Beginner Guide — TypeScript

**Audience:** Developers who know basic JavaScript  
**Time:** 1–2 weeks

---

## Why TypeScript?

TypeScript = JavaScript + **types**. Catches bugs before runtime. Used by React, Angular, Vue, and most enterprise teams.

---

## Install

```bash
npm install -g typescript
tsc --version
```

---

## First Program

```typescript
// examples/hello.ts
const greet = (name: string): string => `Hello, ${name}!`;
console.log(greet("TypeScript"));
```

```bash
tsc examples/hello.ts
node examples/hello.js
```

---

## Core Concepts

### Types
```typescript
let name: string = "Alice";
let age: number = 25;
let active: boolean = true;
let items: string[] = ["a", "b"];
```

### Interfaces
```typescript
interface User {
  id: number;
  name: string;
  email?: string;  // optional
}

const user: User = { id: 1, name: "Bob" };
```

### Functions
```typescript
function add(a: number, b: number): number {
  return a + b;
}
```

### Union Types
```typescript
type Status = "active" | "inactive" | "pending";
let status: Status = "active";
```

---

## Coming from JavaScript?

| JavaScript | TypeScript |
|------------|------------|
| `let x = 5` | `let x: number = 5` |
| No interfaces | `interface User { ... }` |
| Runtime errors | Compile-time type errors |
| `.js` files | `.ts` files, compile to `.js` |

---

## Next → [02-fundamentals/](../02-fundamentals/)

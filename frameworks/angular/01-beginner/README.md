# Beginner Guide — Angular

**Audience:** Developers comfortable with TypeScript  
**Time:** 3–4 weeks (steeper learning curve)

---

## What Is Angular?

Google's **full framework** — routing, forms, HTTP, testing built in. TypeScript-first. Common in enterprise and large teams.

---

## Setup

```bash
npm install -g @angular/cli
ng new my-angular-app
cd my-angular-app
ng serve
```

Open http://localhost:4200

---

## First Component

```typescript
// examples/hello.component.ts
import { Component } from "@angular/core";

@Component({
  selector: "app-hello",
  template: `<h1>Hello, {{ name }}!</h1>`,
})
export class HelloComponent {
  name = "Angular";
}
```

---

## Core Concepts

| Concept | Description |
|---------|-------------|
| **Components** | UI building blocks |
| **Modules** | Group related components |
| **Services** | Shared logic, API calls |
| **Dependency Injection** | Built-in DI system |
| **RxJS** | Reactive programming with Observables |
| **CLI** | `ng generate component user` |

---

## Angular vs React

| Angular | React |
|---------|-------|
| Full framework | Library (+ ecosystem) |
| TypeScript required | TypeScript optional |
| Steeper learning | Easier start |
| Enterprise structure | More flexible |
| Built-in routing | Need React Router |

---

## Next → [02-fundamentals/](../02-fundamentals/)

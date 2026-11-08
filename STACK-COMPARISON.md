# Stack Comparison — Choose the Right Technology

Side-by-side comparison for developers, PMs, and stack switchers.

---

## Programming Languages at a Glance

| Language | Speed to Learn | Job Market | Salary Tier | Best Use Case | Runner |
|----------|---------------|------------|-------------|---------------|--------|
| **JavaScript** | ⭐⭐⭐⭐ Easy | ⭐⭐⭐⭐⭐ Huge | Medium–High | Web, full-stack | Browser, Node.js |
| **TypeScript** | ⭐⭐⭐ Medium | ⭐⭐⭐⭐⭐ Huge | High | Enterprise web | Node.js, Deno |
| **Python** | ⭐⭐⭐⭐⭐ Easiest | ⭐⭐⭐⭐⭐ Huge | High | AI, data, APIs | CPython |
| **Java** | ⭐⭐ Hard | ⭐⭐⭐⭐⭐ Huge | High | Enterprise, Android | JVM |
| **C#** | ⭐⭐⭐ Medium | ⭐⭐⭐⭐ Large | High | Microsoft, games | .NET CLR |
| **PHP** | ⭐⭐⭐⭐ Easy | ⭐⭐⭐⭐ Large | Medium | Web, WordPress | Zend engine |
| **Go** | ⭐⭐⭐ Medium | ⭐⭐⭐⭐ Growing | High | Cloud, microservices | Go compiler |
| **Dart** | ⭐⭐⭐ Medium | ⭐⭐⭐ Growing | Medium–High | Flutter apps | Dart VM |
| **Ruby** | ⭐⭐⭐⭐ Easy | ⭐⭐⭐ Moderate | Medium–High | Rails startups | MRI |
| **Rust** | ⭐ Very Hard | ⭐⭐⭐ Niche | Very High | Systems, WASM | rustc |
| **Kotlin** | ⭐⭐⭐ Medium | ⭐⭐⭐⭐ Growing | High | Android, backend | JVM |
| **Swift** | ⭐⭐⭐ Medium | ⭐⭐⭐⭐ Large | High | Apple platforms | Swift compiler |
| **SQL** | ⭐⭐⭐ Medium | ⭐⭐⭐⭐⭐ Universal | High | Data everywhere | Database engine |

---

## Frontend Framework Comparison

| | React | Vue | Angular | Svelte | Next.js |
|---|-------|-----|---------|--------|---------|
| **Learning curve** | Medium | Easy | Hard | Easy | Medium |
| **Type** | Library | Framework | Full framework | Compiler | React meta-framework |
| **Language** | JS/TS | JS/TS | TypeScript | JS/TS | JS/TS |
| **Company size** | Startups → FAANG | SMEs, China | Enterprise | Startups | Startups → Enterprise |
| **Job listings** | #1 | #3 | #2 | Growing | #1 (React jobs) |
| **State management** | Redux, Zustand | Pinia, Vuex | RxJS, NgRx | Stores | Same as React |
| **SSR built-in** | No (use Next) | No (use Nuxt) | Yes | SvelteKit | Yes |
| **Mobile** | React Native | NativeScript | Ionic | — | React Native |

**Choose React if:** Largest ecosystem, most jobs, flexible.  
**Choose Vue if:** Easiest to learn, great docs, progressive adoption.  
**Choose Angular if:** Large enterprise team, strict structure, TypeScript-first.  
**Choose Svelte if:** Smallest bundle, simplest mental model.  
**Choose Next.js if:** React + SEO/SSR needed.

---

## Backend Framework Comparison

| | Express | Laravel | Django | FastAPI | Spring Boot | ASP.NET Core |
|---|---------|---------|--------|---------|-------------|--------------|
| **Language** | JavaScript | PHP | Python | Python | Java | C# |
| **Learning curve** | Easy | Medium | Medium | Easy | Hard | Medium |
| **Speed to build** | Fast | Very fast | Fast | Very fast | Slow | Medium |
| **Performance** | Good | Good | Good | Excellent | Excellent | Excellent |
| **ORM** | Prisma, Sequelize | Eloquent | Django ORM | SQLAlchemy | JPA/Hibernate | Entity Framework |
| **Best for** | Node shops | PHP agencies | Full web apps | Modern APIs | Banks, enterprise | Microsoft stack |
| **Async** | Native | Laravel 10+ | Django 4+ | Native | Virtual threads | Native |

---

## Mobile Framework Comparison

| | Flutter | React Native | Native Android | Native iOS |
|---|---------|--------------|----------------|------------|
| **Language** | Dart | JavaScript | Kotlin | Swift |
| **Code sharing** | ~95% | ~80% | 0% | 0% |
| **Performance** | Near-native | Good | Best | Best |
| **UI** | Custom (Skia) | Native components | Material | Human Interface |
| **Learning curve** | Medium | Easy (if know React) | Medium | Medium |
| **Hot reload** | Yes | Yes | Partial | Partial |
| **Best for** | MVPs, startups | JS teams | Android-only | iOS-only |

---

## Database Comparison

| | PostgreSQL | MySQL | MongoDB | Redis |
|---|------------|-------|---------|-------|
| **Type** | Relational | Relational | Document | Key-value |
| **ACID** | Full | Full (InnoDB) | Limited | No |
| **Schema** | Strict | Strict | Flexible | None |
| **Best for** | Complex apps | Web/CMS | JSON, rapid proto | Cache, sessions |
| **Query language** | SQL | SQL | MongoDB Query | Commands |
| **Scaling** | Vertical + read replicas | Vertical + replicas | Horizontal sharding | Cluster |

**Rule of thumb:** Start with PostgreSQL unless you have a specific reason not to.

---

## Testing Tool Comparison

| | Jest | Cypress | Selenium | pytest | PHPUnit |
|---|------|---------|----------|--------|---------|
| **Stack** | JS/TS | Web (JS) | Multi | Python | PHP |
| **Type** | Unit/Integration | E2E | E2E | Unit/Integration | Unit |
| **Speed** | Fast | Medium | Slow | Fast | Fast |
| **Browser** | JSDOM | Real browser | Real browser | N/A | N/A |
| **Learning curve** | Easy | Easy | Hard | Easy | Easy |

---

## When to Switch Stacks

| Situation | Consider Switching To |
|-----------|----------------------|
| PHP legacy, want modern APIs | Python (FastAPI) or Go |
| JavaScript fatigue | TypeScript (not a full switch) or Go |
| Java verbosity | Kotlin (same JVM) or Go |
| .NET Windows-only history | .NET 8 (now cross-platform) or Go |
| React complexity | Vue or Svelte |
| Monolith scaling issues | Go microservices + Kubernetes |
| WordPress limits | Laravel or Next.js + headless CMS |
| Manual server management | Docker + Kubernetes |

---

## Full-Stack Combinations (Popular Worldwide)

| Name | Frontend | Backend | Database | Mobile |
|------|----------|---------|----------|--------|
| **MERN** | React | Express (Node) | MongoDB | React Native |
| **MEAN** | Angular | Express (Node) | MongoDB | — |
| **LAMP** | Vanilla/JS | PHP (Laravel) | MySQL | — |
| **Django stack** | React/Vue | Django | PostgreSQL | Flutter |
| **Spring stack** | Angular/React | Spring Boot | PostgreSQL | Kotlin Android |
| **Microsoft** | Angular/Blazor | ASP.NET Core | SQL Server | Xamarin/MAUI |
| **Python AI** | React/Next | FastAPI | PostgreSQL + Redis | Flutter |
| **Go cloud** | React/Vue | Go (Gin/Fiber) | PostgreSQL | Flutter |

---

## Geography & Industry Preferences

| Region / Industry | Dominant Stacks |
|-------------------|-----------------|
| **US startups** | React, Node, Python, AWS |
| **US enterprise** | Java, C#, Angular |
| **Europe** | PHP, Java, Python, PostgreSQL |
| **India / outsourcing** | Java, .NET, PHP, Angular |
| **China** | Vue, Java, Go |
| **Fintech** | Java, Go, Python, PostgreSQL |
| **E-commerce** | PHP, Java, React, MySQL |
| **Gaming** | C#, C++, Unity, Unreal |
| **AI / ML** | Python, PyTorch, FastAPI |

---

## Switching Difficulty Matrix

Easier switches (similar concepts):

```
JavaScript ←→ TypeScript     (same ecosystem)
Java ←→ C# ←→ Kotlin         (OOP, JVM/CLR)
PHP ←→ Python                (scripting style)
React ←→ Vue ←→ Angular      (component thinking)
Laravel ←→ Django            (MVC web frameworks)
MySQL ←→ PostgreSQL          (both SQL)
```

Harder switches (different paradigms):

```
JavaScript → Rust            (memory model, ownership)
PHP → Go                     (no classes, goroutines)
SQL → MongoDB                (relational → document)
Monolith → Kubernetes        (ops + architecture)
```

---

*Use this with each technology's `08-stack-switching/` folder for detailed migration guides.*

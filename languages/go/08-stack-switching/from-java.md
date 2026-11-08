# Java → Go

| Java | Go |
|------|-----|
| `class User { }` | `type User struct { }` |
| `public void method()` | `func (u *User) method()` |
| `extends`, `implements` | Composition over inheritance |
| `new ArrayList<>()` | `make([]T, 0)` or `[]T{}` |
| `try/catch` | `if err != nil { }` |
| `Maven` / Gradle | Go modules (`go mod`) |
| Spring Boot | Gin, Fiber, Echo |
| JVM threads | Goroutines + channels |
| Generics (Java 17+) | Generics (Go 1.18+) |

**Mindset:** Go favors simplicity — one obvious way. No classes, no exceptions.

**30-day plan:** Week 1 syntax, Week 2 HTTP APIs, Week 3 concurrency, Week 4 microservice capstone.

→ [../../02-fundamentals/](../../02-fundamentals/)

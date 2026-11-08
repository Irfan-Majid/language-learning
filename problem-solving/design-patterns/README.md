# Design Patterns

Reusable solutions to **common software design problems**.

---

## Creational Patterns

| Pattern | When |
|---------|------|
| **Singleton** | One instance (config, DB pool) |
| **Factory** | Create objects without specifying class |
| **Builder** | Complex object step by step |

## Structural Patterns

| Pattern | When |
|---------|------|
| **Adapter** | Make incompatible interfaces work |
| **Decorator** | Add behavior without subclassing |
| **Facade** | Simple interface to complex subsystem |

## Behavioral Patterns

| Pattern | When |
|---------|------|
| **Observer** | Event listeners, pub/sub |
| **Strategy** | Swap algorithms at runtime |
| **MVC** | Model-View-Controller (Laravel, Django) |

---

## Example: Observer (JavaScript)

```javascript
class EventEmitter {
  constructor() { this.listeners = {}; }
  on(event, fn) {
    (this.listeners[event] ||= []).push(fn);
  }
  emit(event, data) {
    (this.listeners[event] || []).forEach(fn => fn(data));
  }
}
```

---

## Don't Over-Engineer

| Use patterns when… | Skip when… |
|--------------------|------------|
| Problem recurs across codebase | One-off simple feature |
| Team knows the pattern | YAGNI — you aren't gonna need it |
| Framework doesn't already provide it | Laravel/React already solve it |

---

## Learning Tracks

[01-beginner/](./01-beginner/) — MVC, Singleton  
[02-fundamentals/](./02-fundamentals/) — Factory, Observer, Strategy

---

*Refactoring.Guru — best visual guide online*

# Debugging & Troubleshooting

**#1 skill** when code fails — and AI-generated code fails often.

---

## The DEBUG Method

```
D — Describe the problem (expected vs actual)
E — Examine error messages (read full stack trace)
B — Break it down (smallest reproduction)
U — Understand recent changes (git diff)
G — Guess hypotheses (rank by likelihood)
```

---

## Debugging Toolkit

| Tool | Use |
|------|-----|
| `console.log` / `print` | Quick values |
| Debugger (VS Code F5) | Breakpoints, step through |
| Browser DevTools | Network, console, elements |
| `git bisect` | Find which commit broke it |
| Logs | Production errors (Datadog, CloudWatch) |
| Rubber duck | Explain code aloud |

---

## Common Bug Categories

| Bug type | Clue | Fix approach |
|----------|------|--------------|
| Syntax | Won't compile/run | Read error line number |
| Logic | Wrong output | Trace with small input |
| Off-by-one | Array index wrong | Check loop bounds |
| Async/race | Intermittent | Await, order of execution |
| Null/undefined | Crash on access | Optional chaining, checks |
| Environment | Works locally only | Compare env vars, versions |

---

## Production Debugging

1. Reproduce (or get exact steps)
2. Check logs and metrics
3. Roll back if critical
4. Fix + test + deploy
5. Postmortem (what, why, prevent)

---

## Learning Tracks

[01-beginner/](./01-beginner/) — first debugger session  
[02-fundamentals/](./02-fundamentals/) — systematic approach  
[03-intermediate/](./03-intermediate/) — async bugs, memory

Pair with: [essentials/vscode/](../../essentials/vscode/)

---

*When stuck > 30 min: take break, then rubber duck.*

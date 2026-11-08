# Prompt Engineering for Developers

**Not a gimmick** — the difference between useless AI output and production-quality help.

---

## Core Principles

| Principle | Why |
|-----------|-----|
| **Be specific** | Vague in → vague out |
| **Give context** | Stack, constraints, audience |
| **Assign a role** | "You are a senior Go engineer..." |
| **Ask for format** | JSON, bullet list, step-by-step |
| **Iterate** | First answer is draft, refine |
| **Verify** | Never trust without running/testing |

---

## Template: Code Generation

```
Role: Senior [language] developer
Task: Implement [function/class] that [behavior]
Constraints:
  - Use [framework/library]
  - Handle edge cases: [list]
  - No external dependencies beyond [X]
Output: Code only, with brief comments on non-obvious lines
```

---

## Template: Debug

```
Error message:
[paste exact error]

Relevant code:
[paste 20-50 lines, not entire file]

What I already tried:
1. ...
2. ...

Environment: [OS, language version, framework version]

Give me:
1. Top 3 likely causes (ranked)
2. How to verify each
3. Fix for most likely cause
```

---

## Template: Learning

```
Explain [concept] to a developer who knows [related concept]
but is new to [concept].

Use:
- 1 analogy
- 1 small code example in [language]
- 3 common mistakes beginners make
- When NOT to use this pattern
```

---

## Template: Code Review

```
Review this code as a strict senior engineer.
Check: security, performance, edge cases, naming, testability.

Rate severity: CRITICAL / WARNING / SUGGESTION

[paste code]
```

---

## Template: System Design

```
Design a system for [requirement].
Users: [scale]. Constraints: [budget, team, timeline].

Provide:
1. High-level components (list)
2. Data flow (text diagram)
3. Technology choices with 1-line justification each
4. 3 tradeoffs you made
Do NOT write implementation code yet.
```

---

## Anti-Patterns (Bad Prompts)

| Bad | Better |
|-----|--------|
| "Fix my code" | Paste error + code + what you tried |
| "Make an app" | Specify features, stack, users |
| "Is this good?" | Ask specific criteria |
| One giant prompt | Break into steps |
| No examples | "Like this: [example]" |

---

## Chain of Thought

For complex problems, add:
```
Think step by step. Show your reasoning before the final answer.
```

Improves accuracy on logic tasks.

---

## Few-Shot Prompting

Give examples of input → output you want:

```
Classify support tickets:

Input: "Can't login, password reset broken"
Output: {"category": "auth", "priority": "high"}

Input: "Love the new dark mode!"
Output: {"category": "feedback", "priority": "low"}

Input: "[user's ticket]"
Output:
```

---

## Practice Exercises (7 Days)

| Day | Exercise |
|-----|----------|
| 1 | Debug prompt for a real error you had |
| 2 | Generate function with 3 edge cases specified |
| 3 | Code review prompt on your own code |
| 4 | Learning prompt for concept you don't know |
| 5 | Refactor prompt: "simplify without changing behavior" |
| 6 | Test generation prompt with coverage requirements |
| 7 | Document prompt: "README for this project" |

---

## Next

→ [04-llm-apis/](../04-llm-apis/) — call APIs from code  
→ [../career/03-work-with-ai/](../../career/03-work-with-ai/)

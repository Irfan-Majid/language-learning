# Understanding AI — Facts, Not Fear

**Goal:** Replace anxiety with accurate mental models.

---

## What AI Actually Is (For Developers)

| Term | Simple meaning |
|------|----------------|
| **LLM** | Large Language Model — predicts next text (GPT, Claude, Llama) |
| **Training** | Model learned patterns from billions of text pages |
| **Inference** | You send a prompt, model generates response |
| **Token** | Piece of text (roughly 4 chars) — you pay per token |
| **Hallucination** | Model confidently says false things |
| **Context window** | How much text model can "see" at once |
| **Fine-tuning** | Extra training on specific data |
| **RAG** | Retrieval Augmented Generation — give model YOUR documents |
| **Agent** | LLM that uses tools (search, code, APIs) in a loop |

---

## What AI Is Good At

- Drafting code from clear specs
- Explaining errors and concepts
- Generating tests and docs
- Translating between languages/frameworks
- Summarizing long text
- Brainstorming approaches

## What AI Is Bad At

- Knowing your private codebase (without context)
- Guaranteeing correctness
- Understanding business politics
- Taking legal responsibility
- Replacing production debugging at 3 AM
- Knowing today's exact library versions (can be outdated)

---

## Jobs AI Is Changing (Not Eliminating)

| Role | Change |
|------|--------|
| Junior coder (copy-paste only) | Pressure — must add value beyond typing |
| Senior engineer | Augmented — ships faster |
| QA manual tester | Shifting to automation + AI test design |
| Tech writer | AI drafts, human edits |
| DevOps | More demand — someone runs the AI infra |
| Data engineer | More demand — AI needs clean data |
| AI engineer | **New role — exploding demand** |

---

## The Real Layoff Driver

| Cause | Frequency |
|-------|-----------|
| Over-hiring during boom | Very common |
| Investor pressure / profitability | Very common |
| Mergers & acquisitions | Common |
| Product failure | Common |
| "AI replaced entire team" | **Rare as sole cause** |

AI is often used as **excuse in press releases**, but restructuring usually has multiple causes.

---

## Your Position on the Spectrum

```
AI-replaceable ◄────────────────────────────► AI-proof

Only copies tutorials          Owns production systems
Can't debug                    Debugs without AI
One dead framework             Multi-stack + domain knowledge
Never uses AI                  Uses AI + verifies
No portfolio                   Ships proof publicly
No network                     Strong referrals
```

**Move right on this spectrum.** That's the whole strategy.

---

## Local vs Cloud AI

| Option | Cost | Privacy | Use when |
|--------|------|---------|----------|
| OpenAI / Anthropic API | Pay per use | Data sent to vendor | Production features |
| Ollama (local) | Free | Fully private | Learning, sensitive data |
| Cursor / Copilot | Subscription | Code context | Daily development |

---

## Next

→ [02-prompt-engineering/](../02-prompt-engineering/) — immediate daily value  
→ [../career/03-work-with-ai/](../../career/03-work-with-ai/) — mindset

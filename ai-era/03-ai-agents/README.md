# AI Agents — The Next Wave

**Agent** = LLM that plans, uses tools, and loops until task is done.

Examples: Cursor (coding agent), customer support bots that check orders, research assistants.

---

## Agent vs Simple API Call

| Simple LLM call | Agent |
|-----------------|-------|
| One question → one answer | Goal → multiple steps |
| No tools | Uses search, code, APIs |
| You drive each step | Model plans next action |

---

## Agent Loop (ReAct Pattern)

```
1. User gives goal
2. LLM thinks: "What should I do next?"
3. LLM chooses a tool (search, calculator, run_code)
4. Tool returns result
5. LLM observes result
6. Repeat until done or max steps
7. Return final answer
```

---

## Simple Agent (Python Concept)

```python
tools = {
    "search_docs": search_company_wiki,
    "run_sql": execute_readonly_query,
    "send_email": draft_email_only,  # human approves before send
}

def agent_loop(goal, max_steps=5):
    messages = [{"role": "user", "content": goal}]
    
    for step in range(max_steps):
        response = llm.chat(messages, tools=tools)
        
        if response.tool_call:
            result = tools[response.tool_name](**response.tool_args)
            messages.append({"role": "tool", "content": result})
        else:
            return response.content  # Done
    
    return "Max steps reached"
```

---

## Tools You Can Give Agents

| Tool | Use case |
|------|----------|
| Web search | Current events |
| Code interpreter | Data analysis |
| Database query | Internal metrics |
| API calls | Create ticket, check status |
| File read | Analyze uploaded docs |

---

## Safety Rules (Production)

| Rule | Why |
|------|-----|
| Human approval for destructive actions | Don't auto-delete prod |
| Read-only DB by default | Prevent data loss |
| Max steps limit | Prevent infinite loops |
| Cost cap per run | Prevent runaway API bills |
| Audit log every tool call | Compliance |

---

## Frameworks to Learn

| Framework | Language | Notes |
|-----------|----------|-------|
| LangChain | Python/JS | Popular, large ecosystem |
| LangGraph | Python | Stateful agents |
| CrewAI | Python | Multi-agent teams |
| OpenAI Assistants API | Any | Managed threads + tools |
| Cursor SDK | TypeScript | Build coding agents |

See [../../tools/cursor-sdk](../../tools/) if added, or official Cursor docs.

---

## Career Angle

| Role | Agent skill |
|------|-------------|
| Backend dev | Build agent APIs |
| Full-stack | Agent + UI chat |
| DevOps | Deploy, monitor, scale agents |
| QA | Test agent behavior, edge cases |

---

## Portfolio Idea

**Support Agent:** User asks "where is my order?" → agent checks mock API → responds.

---

## Next

→ [06-ai-testing/](../06-ai-testing/)  
→ [04-llm-apis/](../04-llm-apis/)

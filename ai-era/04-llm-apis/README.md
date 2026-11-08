# LLM APIs — Ship AI Features in Your Apps

**Career skill:** "I integrated AI into our product" is resume gold in 2026.

---

## Setup

```bash
pip install openai python-dotenv
```

Create `.env` (never commit this):
```
OPENAI_API_KEY=sk-your-key-here
```

Get key: https://platform.openai.com/api-keys  
Alternative: Anthropic (Claude), Google Gemini, or local Ollama

---

## Basic API Call (Python)

See [examples/openai_basic.py](../examples/openai_basic.py)

```python
from openai import OpenAI
import os

client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

response = client.chat.completions.create(
    model="gpt-4o-mini",  # cost-effective for learning
    messages=[
        {"role": "system", "content": "You are a helpful coding assistant."},
        {"role": "user", "content": "Explain recursion in 3 sentences."}
    ],
    max_tokens=200
)

print(response.choices[0].message.content)
```

---

## FastAPI Endpoint (Production Pattern)

See [examples/fastapi_llm.py](../examples/fastapi_llm.py)

```python
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from openai import OpenAI
import os

app = FastAPI()
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

class SummarizeRequest(BaseModel):
    text: str
    max_length: int = 100

@app.post("/summarize")
async def summarize(req: SummarizeRequest):
    if len(req.text) > 10000:
        raise HTTPException(400, "Text too long")
    
    try:
        response = client.chat.completions.create(
            model="gpt-4o-mini",
            messages=[
                {"role": "system", "content": "Summarize concisely."},
                {"role": "user", "content": req.text}
            ],
            max_tokens=req.max_length
        )
        return {"summary": response.choices[0].message.content}
    except Exception as e:
        raise HTTPException(500, f"LLM error: {str(e)}")
```

---

## Production Checklist

| Item | Why |
|------|-----|
| Rate limiting | Prevent abuse and cost explosion |
| Input validation | Max length, sanitize |
| Error handling | API down, timeout, rate limit |
| Logging (not prompts with PII) | Debug without leaking data |
| Cost monitoring | Set billing alerts |
| Timeout | Don't hang forever |
| Fallback message | Graceful degradation |

---

## Cost Control

| Strategy | How |
|----------|-----|
| Cheaper models | `gpt-4o-mini` for simple tasks |
| Shorter prompts | Remove fluff |
| Cache responses | Same question = same answer |
| Token limits | `max_tokens` parameter |
| Batch processing | Off-peak for non-urgent |

---

## JavaScript Version

```javascript
// examples/openai_basic.js (Node 18+)
import OpenAI from "openai";

const client = new OpenAI({ apiKey: process.env.OPENAI_API_KEY });

const response = await client.chat.completions.create({
  model: "gpt-4o-mini",
  messages: [{ role: "user", content: "Hello!" }],
});

console.log(response.choices[0].message.content);
```

---

## Portfolio Project Ideas

1. **Text summarizer** — paste article, get summary
2. **Code explainer** — paste code, get explanation
3. **Email tone rewriter** — formal ↔ casual
4. **SQL generator** — natural language → SQL (with validation!)

---

## Next

→ [05-rag-systems/](../05-rag-systems/) — enterprise pattern  
→ [../../frameworks/fastapi/](../../frameworks/fastapi/)  
→ [../../career/07-portfolio/](../../career/07-portfolio/)

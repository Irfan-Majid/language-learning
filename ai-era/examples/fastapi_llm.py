"""
FastAPI + LLM endpoint example.
Setup: pip install fastapi uvicorn openai python-dotenv
Run: uvicorn fastapi_llm:app --reload
Test: curl -X POST http://localhost:8000/summarize -H "Content-Type: application/json" -d "{\"text\":\"Long article text here...\"}"
"""
import os
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel, Field
from openai import OpenAI

app = FastAPI(title="AI Summarizer API")
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY", ""))

class SummarizeRequest(BaseModel):
    text: str = Field(..., min_length=10, max_length=10000)

class SummarizeResponse(BaseModel):
    summary: str

@app.get("/health")
def health():
    return {"status": "ok"}

@app.post("/summarize", response_model=SummarizeResponse)
async def summarize(req: SummarizeRequest):
    if not os.getenv("OPENAI_API_KEY"):
        raise HTTPException(503, "OPENAI_API_KEY not configured")

    try:
        response = client.chat.completions.create(
            model="gpt-4o-mini",
            messages=[
                {"role": "system", "content": "Summarize the following text in 2-3 sentences."},
                {"role": "user", "content": req.text}
            ],
            max_tokens=200,
            temperature=0.3
        )
        return SummarizeResponse(summary=response.choices[0].message.content)
    except Exception as e:
        raise HTTPException(500, f"LLM error: {str(e)}")

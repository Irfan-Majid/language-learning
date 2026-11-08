# CampusX — Generative AI Series

Full curriculum map for CampusX **Generative AI** playlists, aligned with hands-on learning in this repo.

---

## Series Overview

CampusX Generative AI is split into **3 parts** (LangChain playlist structure):

| Part | Topics | Videos (approx) |
|------|--------|-----------------|
| **1. Fundamentals** | LangChain basics, models, prompts, chains | Videos 1–11 |
| **2. RAG Applications** | Document loaders, splitters, embeddings, vector DB, retrievers | Videos 12–17 |
| **3. AI Agents** | Tools, tool calling, end-to-end agents, Ollama | Videos 18–21+ |

---

## Part 1: LangChain Fundamentals

| # | CampusX Topic | Learn in repo | Practice |
|---|---------------|---------------|----------|
| 1 | What is LangChain? Why learn it? | [ai-era/01-understanding-ai/](../../ai-era/01-understanding-ai/) | — |
| 2 | LangChain components | This folder `02-fundamentals/` | — |
| 3 | LangChain models (OpenAI, Ollama) | [ai-era/04-llm-apis/](../../ai-era/04-llm-apis/) | `openai_basic.py` |
| 4 | Prompts in LangChain | [ai-era/02-prompt-engineering/](../../ai-era/02-prompt-engineering/) | Write 5 prompts |
| 5 | Structured output | `03-intermediate/` | Pydantic models |
| 6 | Output parsers | `03-intermediate/` | JSON parser example |
| 7 | Chains | `03-intermediate/` | LLM chain |
| 8–9 | Runnables | `03-intermediate/` | Pipeline compose |
| 10 | Document loaders | [rag-applications/](../rag-applications/) | Load PDF |
| 11 | Text splitters | [rag-applications/](../rag-applications/) | Chunk text |

### Install LangChain

```bash
pip install langchain langchain-openai langchain-community python-dotenv
```

### Hello LangChain

```python
# examples/langchain_hello.py
from langchain_openai import ChatOpenAI
from langchain_core.prompts import ChatPromptTemplate
import os

llm = ChatOpenAI(model="gpt-4o-mini", api_key=os.getenv("OPENAI_API_KEY"))

prompt = ChatPromptTemplate.from_messages([
    ("system", "You are a helpful assistant."),
    ("user", "{question}")
])

chain = prompt | llm
response = chain.invoke({"question": "What is generative AI in one sentence?"})
print(response.content)
```

---

## Part 2: RAG Applications

| # | CampusX Topic | Repo section |
|---|---------------|--------------|
| 12 | Vector stores | [rag-applications/02-fundamentals/](../rag-applications/02-fundamentals/) |
| 13 | Retrievers | [rag-applications/03-intermediate/](../rag-applications/) |
| 14 | What is RAG? | [ai-era/05-rag-systems/](../../ai-era/05-rag-systems/) |
| 15 | YouTube Chatbot (RAG project) | [rag-applications/examples/](../rag-applications/examples/) |
| 16–17 | Tools & tool calling | [ai-era/03-ai-agents/](../../ai-era/03-ai-agents/) |

**Capstone:** Build a document Q&A app (PDF upload → ask questions)

→ [../rag-applications/](../rag-applications/)

---

## Part 3: AI Agents

| Topic | CampusX | Repo |
|-------|---------|------|
| Tools in LangChain | Video 16 | [ai-era/03-ai-agents/](../../ai-era/03-ai-agents/) |
| Tool calling | Video 17 | `ai-engineering/` |
| End-to-end agent | Video 18 | [ai-engineering/03-intermediate/](../ai-engineering/) |
| Ollama (local LLMs) | Ollama Masterclass | `04-advanced/` |
| LangGraph agents | Separate playlist | [ai-engineering/](../ai-engineering/) |
| Crew AI | CampusX course | `04-advanced/` |
| N8N automation | CampusX course | `07-project-management/` |

---

## Other CampusX GenAI Playlists

| Playlist | Focus |
|----------|-------|
| Generative AI using Open Source LLMs | Llama, Ollama, Hugging Face |
| Generative AI using Google Gemini | Gemini API |
| Agentic AI using LangGraph | Stateful agents |
| AI Agents using Agno | Agent framework |
| Explainable AI (XAI) | Model interpretability |
| Agentic Coding using Claude Code | AI-assisted development |

---

## Study Schedule (8 Weeks)

| Week | CampusX videos | Repo work |
|------|----------------|-----------|
| 1 | GenAI Roadmap + LangChain 1–4 | Python + prompts |
| 2 | LangChain 5–9 | Chains, parsers |
| 3 | LangChain 10–14 | RAG theory |
| 4 | LangChain 15–17 | RAG capstone project |
| 5 | Agents 18–19 | Tool calling |
| 6 | Ollama masterclass | Local LLM deploy |
| 7 | LangGraph playlist | Agent project |
| 8 | Portfolio + deploy | [career/07-portfolio/](../../career/07-portfolio/) |

---

## Resources

| Resource | URL |
|----------|-----|
| LangChain docs | https://python.langchain.com/docs |
| CampusX notes | https://learnwith.campusx.in |
| Ollama | https://ollama.com |
| LangGraph | https://langchain-ai.github.io/langgraph/ |

---

## Next

→ [../rag-applications/](../rag-applications/)  
→ [../ai-engineering/](../ai-engineering/)  
→ Watch CampusX playlist while coding along

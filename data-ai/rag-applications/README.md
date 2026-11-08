# RAG Applications — Build Real Products

**RAG** (Retrieval Augmented Generation) = the #1 pattern for enterprise AI apps in 2026.

Companies pay for: "Chat with our documents," "Support bot that knows our policies," "Search + AI answers."

---

## What You Will Build

| App type | Example |
|----------|---------|
| Document Q&A | Upload PDFs, ask questions |
| Company wiki bot | Search Confluence/Notion docs |
| Customer support | RAG over help articles |
| Code assistant | RAG over internal codebase |
| YouTube chatbot | CampusX Video 15 project |

---

## RAG Architecture

```
┌─────────────┐     ┌──────────────┐     ┌─────────────┐
│  Documents  │────▶│  Chunk +     │────▶│  Vector DB  │
│  PDF, web   │     │  Embed       │     │  pgvector   │
└─────────────┘     └──────────────┘     └──────┬──────┘
                                                │
┌─────────────┐     ┌──────────────┐            │
│  User query │────▶│  Retrieve    │◀───────────┘
└─────────────┘     │  top-k chunks│
                    └──────┬───────┘
                           │
                    ┌──────▼───────┐
                    │  LLM + context│
                    │  → Answer     │
                    └──────────────┘
```

---

## Learning Path

| Track | Content |
|-------|---------|
| [01-beginner/](./01-beginner/) | What is RAG, when to use vs fine-tuning |
| [02-fundamentals/](./02-fundamentals/) | Loaders, splitters, embeddings, Chroma |
| [03-intermediate/](./03-intermediate/) | Full pipeline, FastAPI endpoint |
| [04-advanced/](./04-advanced/) | Hybrid search, reranking, advanced chunking |
| [05-expert/](./05-expert/) | Production scale, eval, multi-tenant |
| [06-testing/](./06-testing/) | Hallucination tests, retrieval quality |
| [07-project-management/](./07-project-management/) | RAG project scoping |
| [08-stack-switching/](./08-stack-switching/) | From web dev to RAG |

---

## CampusX LangChain RAG Videos

| Video topic | Our section |
|-------------|-------------|
| Document loaders | `02-fundamentals/` |
| Text splitters | `02-fundamentals/` |
| Vector stores | `02-fundamentals/` |
| Retrievers | `03-intermediate/` |
| RAG explained | `01-beginner/` |
| YouTube chatbot project | `examples/rag_pipeline.py` |

Also: [ai-era/05-rag-systems/](../../ai-era/05-rag-systems/)

---

## Tech Stack

```bash
pip install langchain langchain-openai langchain-community chromadb fastapi pypdf
```

| Component | Options |
|-----------|---------|
| Framework | LangChain, LlamaIndex |
| Embeddings | OpenAI, HuggingFace, Ollama |
| Vector DB | Chroma (dev), pgvector (prod), Pinecone |
| LLM | GPT-4o-mini, Claude, Llama via Ollama |
| API | FastAPI |

---

## Examples

See [examples/](./examples/) and [../examples/rag_simple.py](../examples/rag_simple.py)

---

## Next

→ [01-beginner/](./01-beginner/)  
→ [../campusx/generative-ai-series/](../campusx/generative-ai-series/)

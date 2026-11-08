# RAG Systems — Enterprise AI Pattern

**RAG** = Retrieval Augmented Generation

**Why companies pay for this:** ChatGPT doesn't know your company docs. RAG lets employees ask questions against **your** PDFs, wikis, and databases.

**Career impact:** One of the highest-demand AI skills in enterprise.

---

## How RAG Works

```
User question
    ↓
Convert question to embedding (vector)
    ↓
Search vector database for similar document chunks
    ↓
Send relevant chunks + question to LLM
    ↓
LLM answers using YOUR data (with citations)
```

---

## Components

| Piece | Technology |
|-------|------------|
| Document loader | PDF, Markdown, HTML parsers |
| Chunking | Split docs into 500–1000 token pieces |
| Embeddings | OpenAI `text-embedding-3-small` or open source |
| Vector store | pgvector, Pinecone, Chroma, Qdrant |
| LLM | GPT-4o-mini, Claude, local Llama |
| API | FastAPI |

---

## Simple RAG Flow (Conceptual)

```python
# 1. Chunk documents
chunks = split_text(document, chunk_size=500)

# 2. Embed and store
for chunk in chunks:
    embedding = get_embedding(chunk.text)
    db.store(chunk.text, embedding, metadata={"source": doc_name})

# 3. Query time
question_embedding = get_embedding(user_question)
relevant_chunks = db.search(question_embedding, top_k=5)
context = "\n\n".join(relevant_chunks)

# 4. Generate answer
prompt = f"""Answer using ONLY this context. If unsure, say "I don't know."
Context:
{context}

Question: {user_question}
"""
answer = llm.generate(prompt)
```

---

## Chunking Tips

| Do | Don't |
|----|-------|
| Split by paragraphs/sections | Split mid-sentence randomly |
| Add metadata (source, page) | Lose track of origin |
| Overlap chunks slightly (50 tokens) | Tiny 50-token chunks everywhere |
| Clean HTML/PDF extraction | Feed garbage formatting |

---

## Evaluation (Shows Senior Thinking)

| Metric | How to measure |
|--------|----------------|
| Answer relevance | Human review 20 questions |
| Hallucination rate | Answer not in source docs |
| Latency | P95 response time |
| Cost per query | Tokens × price |

---

## Portfolio Project: "Ask My Docs"

| Feature | Implementation |
|---------|----------------|
| Upload PDF | FastAPI file endpoint |
| Index | Embed + pgvector |
| Chat UI | Simple React or HTML |
| Citations | Return source chunk in response |
| "I don't know" | When no relevant chunks found |

---

## Common Interview Questions

- What is RAG vs fine-tuning?
  - **RAG:** Retrieve docs at query time (flexible, cheaper)
  - **Fine-tuning:** Retrain model on your data (expensive, fixed knowledge)

- How do you reduce hallucinations?
  - Strong system prompt, cite sources, low temperature, chunk relevance threshold

---

## Next

→ [03-ai-agents/](../03-ai-agents/)  
→ [examples/](../examples/)  
→ [../../databases/postgresql/](../../databases/postgresql/)

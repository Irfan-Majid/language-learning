# Beginner Guide — RAG Applications

**Audience:** After basic Python and LLM API knowledge  
**Time:** 1–2 weeks

---

## What Is RAG?

**R**etrieval **A**ugmented **G**eneration — give the AI **your documents** so it answers from facts, not imagination.

| Without RAG | With RAG |
|-------------|----------|
| "What's our refund policy?" → guesses | Searches your policy PDF → accurate answer |

---

## When to Use RAG

| Use RAG | Use fine-tuning instead |
|---------|-------------------------|
| Company docs, wikis, manuals | Specific tone/style |
| Frequently changing data | Rarely changing behavior |
| Need citations/sources | Need model to "be" a character |
| Quick to prototype | Have large labeled dataset |

---

## 5-Step RAG (Conceptual)

1. **Load** documents (PDF, text, web)
2. **Split** into small chunks
3. **Embed** chunks as vectors
4. **Store** in vector database
5. **Retrieve** relevant chunks at query time → send to LLM

---

## Your First RAG (This Week)

```bash
pip install langchain langchain-openai langchain-community chromadb python-dotenv
export OPENAI_API_KEY=your-key
python data-ai/examples/rag_simple.py
```

---

## CampusX Videos to Watch

1. Document loaders (Video 10)
2. Text splitters (Video 11)
3. Vector stores (Video 12)
4. Retrievers (Video 13)
5. What is RAG? (Video 14)
6. YouTube chatbot project (Video 15)

→ [../campusx/generative-ai-series/](../campusx/generative-ai-series/)

---

## Practice Project

**Policy Bot:** Put 3 text files (fake company policies) in a folder → ask questions → get answers with source quotes.

---

## Next

→ [02-fundamentals/](../02-fundamentals/)  
→ [../../ai-era/05-rag-systems/](../../ai-era/05-rag-systems/)

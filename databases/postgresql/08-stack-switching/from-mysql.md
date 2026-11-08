# MySQL → PostgreSQL

| MySQL | PostgreSQL |
|-------|------------|
| `AUTO_INCREMENT` | `SERIAL` / `GENERATED ALWAYS AS IDENTITY` |
| `LIMIT 10` | `LIMIT 10` (same) |
| Weaker JSON (older versions) | Rich JSONB support |
| Common in PHP/WordPress | Common in modern apps, Django, Rails |
| `mysql` CLI | `psql` CLI |
| Replication focus | ACID + extensions (PostGIS, pgvector) |

**Why switch:** PostgreSQL = default for new projects, better for complex queries, **pgvector for AI/RAG**.

**Migration steps:**
1. Export schema: `mysqldump` or tool
2. Convert types (DATETIME → TIMESTAMP, etc.)
3. Import to Postgres
4. Update ORM connection string
5. Test all queries — subtle SQL differences exist

**AI bonus:** pgvector lets you store embeddings for RAG in the same DB as your app data.

→ [../../02-fundamentals/](../../02-fundamentals/)  
→ [../../../data-ai/rag-applications/](../../../data-ai/rag-applications/)

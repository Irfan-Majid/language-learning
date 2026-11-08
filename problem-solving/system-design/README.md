# System Design

How to design **large-scale systems** — essential for senior engineers and interviews.

---

## What Is System Design?

Given a problem like "design Twitter" or "design a URL shortener", you:

1. Clarify requirements (functional + non-functional)
2. Estimate scale (users, QPS, storage)
3. Draw high-level components
4. Deep-dive critical paths
5. Discuss tradeoffs

---

## Common Interview Problems

| Problem | Key concepts |
|---------|--------------|
| URL shortener | Hashing, DB, cache, redirect |
| Chat / WhatsApp | WebSockets, message queue, presence |
| News feed | Fan-out, caching, ranking |
| Rate limiter | Token bucket, Redis |
| Paste bin | Storage, expiration |
| YouTube | CDN, transcoding, blob storage |

---

## Building Blocks

| Component | Purpose |
|-----------|---------|
| Load balancer | Distribute traffic |
| CDN | Static assets globally |
| Cache (Redis) | Fast reads |
| Message queue | Async jobs (Kafka, RabbitMQ) |
| Database | SQL vs NoSQL choice |
| Sharding | Split DB by key |
| Replication | Read replicas, failover |
| Microservices | Independent deploy units |

---

## Design Process Template

```markdown
1. Requirements (5 min)
   - Functional: what features?
   - Non-functional: scale, latency, availability?

2. Estimation (5 min)
   - DAU, requests/sec, storage/year

3. High-level design (10 min)
   - Client → API → Services → DB

4. Deep dives (15 min)
   - Bottlenecks, data model, APIs

5. Tradeoffs
   - SQL vs NoSQL, consistency vs availability
```

---

## Resources

- *Designing Data-Intensive Applications* — Martin Kleppmann
- System Design Primer (GitHub)
- ByteByteGo (YouTube)

---

## Learning Tracks

[01-beginner/](./01-beginner/) — URL shortener on paper  
[02-fundamentals/](./02-fundamentals/) — caching, load balancing  
[03-intermediate/](./03-intermediate/) — chat, feed systems

→ [career/06-interviews/](../../career/06-interviews/)

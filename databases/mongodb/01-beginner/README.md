# Beginner Guide - MongoDB

**Audience:** First-time learners (know basic programming)  
**Time:** 1-2 weeks

---

## Step 1: Install

**Option A - MongoDB Atlas (cloud, free tier):** https://www.mongodb.com/atlas  
**Option B - Local:** Install Community Server or use Docker:

```bash
docker run -d -p 27017:27017 --name mongo mongo:latest
```

Install shell: `mongosh` or use Atlas web UI.

---

## Step 2: First Commands (mongosh)

```javascript
use learning_db
db.users.insertOne({ name: "Alice", email: "alice@example.com", age: 28 })
db.users.find()
db.users.find({ name: "Alice" })
db.users.updateOne({ name: "Alice" }, { $set: { age: 29 } })
db.users.deleteOne({ name: "Alice" })
```

See also [examples/hello.js](../examples/hello.js) for Node.js driver usage.

---

## Step 3: Core Concepts

| Concept | Description |
|---------|-------------|
| **Database** | Container for collections |
| **Collection** | Like a SQL table (no fixed schema) |
| **Document** | JSON-like BSON record |
| **_id** | Auto-generated unique key |
| **Query operators** | `$gt`, `$in`, `$regex`, etc. |
| **Aggregation** | Pipeline for analytics |

---

## SQL vs MongoDB

| SQL | MongoDB |
|-----|---------|
| Table | Collection |
| Row | Document |
| Column | Field |
| JOIN | `$lookup` or embed documents |
| Schema | Flexible (schema-on-read) |

---

## Practice Exercises

1. Create `products` collection with 5 documents
2. Find products where `price > 50`
3. Update all products in category "books" to add `onSale: true`
4. Count documents per category with aggregation

---

## For Testers

- Verify CRUD operations return expected documents
- Test indexes affect query performance
- Validate API responses match stored documents

---

## Next Step

-> [02-fundamentals/](../02-fundamentals/)

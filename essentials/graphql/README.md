# GraphQL

Alternative to REST — clients **request exactly the fields** they need.

---

## GraphQL vs REST

| REST | GraphQL |
|------|---------|
| Multiple endpoints | Single `/graphql` endpoint |
| Fixed response shape | Client picks fields |
| Over-fetching common | Precise data |
| Caching built into HTTP | Harder caching |
| Simpler | More flexible, steeper learning |

---

## Core Concepts

```graphql
# Query — read data
query {
  user(id: 42) {
    name
    email
    posts { title }
  }
}

# Mutation — write data
mutation {
  createUser(name: "Alice", email: "a@b.com") {
    id
  }
}
```

---

## When to Use

| Choose GraphQL | Choose REST |
|----------------|-------------|
| Mobile apps (bandwidth) | Simple CRUD APIs |
| Many client types | Public APIs |
| Complex nested data | Caching critical |

---

## Tools

- Apollo Server (Node)
- GraphQL Yoga
- Hasura (auto from DB)

---

## Learning Tracks

[01-beginner/](./01-beginner/) — first query  
Prerequisite: [rest-apis/01-beginner/](../rest-apis/01-beginner/)

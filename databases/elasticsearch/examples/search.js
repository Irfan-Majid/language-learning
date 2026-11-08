// Elasticsearch query examples (Kibana Dev Tools or curl)
// PUT /products
// { "mappings": { "properties": { "name": { "type": "text" }, "price": { "type": "float" } } } }

// POST /products/_doc
// { "name": "Laptop", "price": 999.99 }

// GET /products/_search
// { "query": { "match": { "name": "laptop" } } }

// Node.js client example:
const { Client } = require("@elastic/elasticsearch");
const client = new Client({ node: "http://localhost:9200" });

async function searchProducts(q) {
  const result = await client.search({
    index: "products",
    query: { match: { name: q } },
  });
  return result.hits.hits;
}

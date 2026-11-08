// MongoDB shell / Node.js example
// mongosh: run commands below
// Node: npm install mongodb

// --- mongosh commands ---
// use mydb
// db.users.insertOne({ name: "Alice", email: "alice@example.com" })
// db.users.find({ name: "Alice" })

const { MongoClient } = require("mongodb");

async function main() {
  const client = new MongoClient("mongodb://localhost:27017");
  await client.connect();
  const db = client.db("mydb");
  const users = db.collection("users");
  await users.insertOne({ name: "Alice", email: "alice@example.com" });
  const found = await users.findOne({ name: "Alice" });
  console.log(found);
  await client.close();
}

// main().catch(console.error);
console.log("See comments for MongoDB usage");

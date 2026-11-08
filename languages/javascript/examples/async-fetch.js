// examples/async-fetch.js — Fetch data from a public API (Node 18+)
async function main() {
  const response = await fetch("https://jsonplaceholder.typicode.com/users/1");
  const user = await response.json();
  console.log(`User: ${user.name} (${user.email})`);
}

main().catch(console.error);

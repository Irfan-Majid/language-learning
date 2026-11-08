# Intermediate — JavaScript

**Audience:** Mid-level (1–3 years)

---

## Topics

### 1. Promises & Async/Await
```javascript
async function fetchUser(id) {
  const response = await fetch(`https://api.example.com/users/${id}`);
  if (!response.ok) throw new Error("User not found");
  return response.json();
}

fetchUser(1).then(user => console.log(user)).catch(console.error);
```

### 2. ES Modules
```javascript
// math.js
export const add = (a, b) => a + b;

// main.js
import { add } from "./math.js";
```

### 3. Classes
```javascript
class Animal {
  constructor(name) { this.name = name; }
  speak() { return `${this.name} makes a sound`; }
}

class Dog extends Animal {
  speak() { return `${this.name} barks`; }
}
```

### 4. Node.js Basics
```javascript
const fs = require("fs");
const data = fs.readFileSync("file.txt", "utf8");
```

### 5. npm & Packages
```bash
npm init -y
npm install lodash
```

---

## Practice Project

**REST API client** — fetch users from JSONPlaceholder, display in HTML table.

---

## Next → [04-advanced/](../04-advanced/)

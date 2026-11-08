# Fundamentals — Node.js

**Audience:** Junior developers (0–1 year with Node)

---

## Topics

### 1. Built-in modules
```javascript
const fs = require("fs");
const path = require("path");
const http = require("http");
const os = require("os");
```

### 2. File system
```javascript
const fs = require("fs");
const content = fs.readFileSync("file.txt", "utf8");
fs.writeFileSync("out.txt", "Hello");
```

### 3. Path handling
```javascript
const path = require("path");
path.join(__dirname, "data", "file.json");
path.extname("photo.jpg");  // .jpg
```

### 4. Events (EventEmitter)
```javascript
const EventEmitter = require("events");
const emitter = new EventEmitter();
emitter.on("data", (msg) => console.log(msg));
emitter.emit("data", "hello");
```

### 5. package.json scripts
```json
{
  "scripts": {
    "start": "node server.js",
    "dev": "node --watch server.js",
    "test": "jest"
  }
}
```

### 6. .env files (use dotenv package)
```bash
npm install dotenv
```
```javascript
require("dotenv").config();
console.log(process.env.PORT);
```

---

## Practice

Build a **CLI tool** that reads JSON file and prints formatted summary.

---

## Next → [03-intermediate/](../03-intermediate/) → [express/](../../express/)

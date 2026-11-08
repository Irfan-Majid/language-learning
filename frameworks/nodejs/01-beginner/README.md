# Beginner Guide — Node.js

**Audience:** After basic JavaScript  
**Time:** 1 week

---

## Step 1: Install Node.js

1. Download **LTS** from https://nodejs.org
2. Verify:
```bash
node --version    # e.g. v22.x
npm --version     # e.g. 10.x
```

`npm` = Node Package Manager (installs libraries)

---

## Step 2: Your First Node Script

```bash
cd frameworks/nodejs/examples
node hello.js
```

**Output:** `Hello from Node.js!`

Unlike browser JS — no `document`, no `window`. Use `console.log`, `fs`, `http`.

---

## Step 3: npm Basics

```bash
mkdir my-node-app && cd my-node-app
npm init -y                    # creates package.json
npm install lodash             # install a package
```

`package.json` = project config + dependency list  
`node_modules/` = installed packages (don't edit manually)

---

## Step 4: Core Concepts

### Run a file
```bash
node myfile.js
```

### Import (CommonJS — Node default)
```javascript
const fs = require("fs");
const path = require("path");
```

### Import (ES Modules — modern)
```javascript
// package.json: "type": "module"
import fs from "fs";
```

### Read environment variables
```javascript
const apiKey = process.env.API_KEY;
```

---

## Step 5: Practice

1. Script that prints current date/time
2. Script that reads a text file and prints contents → `file-read.js`
3. Script that lists files in a folder
4. `npm init` project with one dependency

---

## Node.js vs Browser JavaScript

| Browser | Node.js |
|---------|---------|
| `document`, `window` | `process`, `global` |
| `fetch` (modern) | `fetch` (Node 18+) or `http` module |
| Can't read local files | `fs` module |
| No `require` by default | `require` / `import` |

---

## Next Step

→ [02-fundamentals/](../02-fundamentals/)  
→ [express/01-beginner/](../../express/01-beginner/) for web APIs

---

## For Testers

- Run scripts: `node script.js`
- Check `package.json` scripts: `npm test`, `npm start`
- Node apps often tested with Jest → [testing/jest/](../../../testing/jest/)

---

## For Project Managers

- Node.js = backend runtime for JavaScript teams
- Ramp-up: **1–2 weeks** after JS basics
- First deliverable: CLI script or simple API (with Express)

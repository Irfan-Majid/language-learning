# Beginner Guide — JavaScript

**Audience:** First-time learners  
**Time:** 1–2 weeks

---

## Step 1: Setup (No Install Needed for Start)

1. Open **Chrome** or **Edge**
2. Press `F12` → click **Console** tab
3. Type: `console.log("Hello, World!")` and press Enter

For files, install [Node.js](https://nodejs.org) (LTS version).

---

## Step 2: Your First Program

Create `examples/hello.js`:

```javascript
console.log("Hello, World!");
```

**Run:**
```bash
node examples/hello.js
```

**Output:** `Hello, World!`

---

## Step 3: Core Concepts

### Variables
```javascript
let name = "Alice";      // can change
const age = 25;          // cannot reassign
var oldStyle = true;     // avoid in modern JS

console.log(name, age);
```

### Conditionals
```javascript
const score = 85;
if (score >= 90) {
  console.log("A grade");
} else if (score >= 80) {
  console.log("B grade");
} else {
  console.log("Keep practicing");
}
```

### Loops
```javascript
// for loop
for (let i = 1; i <= 5; i++) {
  console.log(i);
}

// for...of (arrays)
const fruits = ["apple", "banana", "cherry"];
for (const fruit of fruits) {
  console.log(fruit);
}
```

### Functions
```javascript
function add(a, b) {
  return a + b;
}

const multiply = (a, b) => a * b;  // arrow function

console.log(add(2, 3));       // 5
console.log(multiply(4, 5));  // 20
```

---

## Step 4: Practice Exercises

1. **Personalized greeting** — variable `name`, print `Hello, {name}!`
2. **Even or odd** — function that checks a number
3. **Sum array** — loop through `[1,2,3,4,5]`, print total
4. **FizzBuzz** — 1 to 20

Solutions: [../examples/](../examples/)

---

## Common Beginner Mistakes

| Mistake | Fix |
|---------|-----|
| Using `=` instead of `===` for comparison | Use `===` (strict equality) |
| Forgetting `let`/`const` | Always declare variables |
| `console.log` in HTML without script tag | Wrap JS in `<script>` or use `.js` file |
| Confusing strings and numbers `"5" + 3` → `"53"` | Use `Number()` or `parseInt()` |

---

## For Testers

- Open browser DevTools → Console to test snippets
- Learn to read `console.log` output as expected results
- Practice: run `examples/` and verify output matches comments

---

## For Project Managers

- JS is the default web language — almost every web project uses it
- Beginner ramp-up: **2–4 weeks** to write basic scripts
- First deliverable: interactive webpage or simple Node script

---

## Next Step

→ [02-fundamentals/](../02-fundamentals/)

# JavaScript Cheat Sheet

```javascript
// Variables
let x = 1; const y = 2; var old = 3;

// Types
typeof "hi"     // "string"
typeof 42       // "number"
Array.isArray([]) // true

// Arrays
arr.map(fn)  arr.filter(fn)  arr.reduce(fn, init)
arr.find(fn)  arr.includes(x)  [...arr]

// Objects
const { name, age } = user;
const copy = { ...user, age: 31 };

// Functions
const fn = (a, b) => a + b;
const fn2 = function(a) { return a; };

// Async
const data = await fetch(url).then(r => r.json());
// or: async function load() { const r = await fetch(url); }

// Promises
Promise.all([p1, p2])  Promise.race([p1, p2])

// Destructuring defaults
const { x = 0 } = obj;

// Optional chaining
user?.address?.city

// Nullish coalescing
const val = x ?? "default";

// Template literals
`Hello ${name}`

// Truthy/falsy: false, 0, "", null, undefined, NaN
```

**Run examples:** [languages/javascript/examples/](../languages/javascript/examples/)

# Fundamentals — JavaScript

**Audience:** Junior developers (0–1 year)  
**Prerequisites:** [01-beginner](../01-beginner/)

---

## Topics

### 1. Data Types
```javascript
typeof "hello"    // "string"
typeof 42         // "number"
typeof true       // "boolean"
typeof undefined  // "undefined"
typeof null       // "object" (historical quirk)
typeof {}         // "object"
typeof []         // "object"
typeof function(){} // "function"
```

### 2. Arrays
```javascript
const nums = [1, 2, 3];
nums.push(4);
nums.map(n => n * 2);        // [2, 4, 6, 8]
nums.filter(n => n > 2);     // [3, 4]
nums.reduce((sum, n) => sum + n, 0); // 10
```

### 3. Objects
```javascript
const user = {
  name: "Bob",
  age: 30,
  greet() {
    return `Hi, I'm ${this.name}`;
  }
};
user.email = "bob@example.com";
console.log(user.greet());
```

### 4. Destructuring
```javascript
const [first, second] = [10, 20];
const { name, age } = user;
```

### 5. Template Literals
```javascript
const msg = `User ${name} is ${age} years old`;
```

### 6. DOM Manipulation (Browser)
```javascript
document.getElementById("btn").addEventListener("click", () => {
  document.getElementById("output").textContent = "Clicked!";
});
```

### 7. Error Handling
```javascript
try {
  JSON.parse("invalid json");
} catch (error) {
  console.error("Parse failed:", error.message);
}
```

---

## Practice Project

Build a **click counter** webpage:
- Button increments count on screen
- Reset button sets count to 0

---

## Next → [03-intermediate/](../03-intermediate/)

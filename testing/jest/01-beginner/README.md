# Beginner Guide - Jest

**Time:** 1 week | **Prerequisites:** [JavaScript](../../languages/javascript/01-beginner/)

## Step 1: Install
```bash
npm init -y
npm install jest --save-dev
```

Add to `package.json`: `"test": "jest"`

## Step 2: First test
See [examples/hello.test.js](../examples/hello.test.js)

```javascript
function add(a, b) { return a + b; }

test("adds numbers", () => {
  expect(add(2, 3)).toBe(5);
});
```

## Step 3: Run
```bash
npm test
```

Matchers: `toBe`, `toEqual`, `toContain`, `toThrow`, `toMatchObject`

## Practice
1. Test a `greet(name)` function
2. Test async function with `async/await`
3. Mock a module with `jest.fn()`

-> [02-fundamentals/](../02-fundamentals/)

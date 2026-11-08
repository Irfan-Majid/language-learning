# Beginner Guide - Cypress

**Time:** 1-2 weeks | **Prerequisites:** [JavaScript](../../languages/javascript/01-beginner/)

## Step 1: Install in a project
```bash
npm init -y
npm install cypress --save-dev
npx cypress open
```

## Step 2: First test
See [examples/hello.cy.js](../examples/hello.cy.js)

```javascript
describe("Homepage", () => {
  it("loads", () => {
    cy.visit("https://example.com");
    cy.contains("Example Domain");
  });
});
```

## Step 3: Core commands
- `cy.visit(url)` - navigate
- `cy.get(selector)` - find element
- `cy.contains(text)` - find by text
- `cy.click()`, `cy.type()`, `cy.should()`

## Practice
1. Test login form (type username, password, submit)
2. Intercept API with `cy.intercept()`
3. Run headless: `npx cypress run`

-> [02-fundamentals/](../02-fundamentals/)

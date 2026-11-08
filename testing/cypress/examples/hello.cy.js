// Cypress E2E test - npx cypress open
describe("Hello page", () => {
  it("loads and shows title", () => {
    cy.visit("https://example.com");
    cy.contains("Example Domain");
  });

  it("form input example", () => {
    cy.visit("https://example.com");
    cy.title().should("include", "Example");
  });
});

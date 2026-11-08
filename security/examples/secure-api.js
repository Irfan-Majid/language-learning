// examples/secure-api.js - Express API with basic security practices
// Run: npm install express express-rate-limit helmet
//      node secure-api.js

const express = require("express");
const rateLimit = require("express-rate-limit");
const helmet = require("helmet");

const app = express();
app.use(helmet());
app.use(express.json({ limit: "10kb" }));

const loginLimiter = rateLimit({
  windowMs: 15 * 60 * 1000,
  max: 5,
  message: { error: "Too many login attempts" },
});

app.get("/health", (req, res) => {
  res.json({ status: "ok" });
});

app.post("/login", loginLimiter, (req, res) => {
  const { email, password } = req.body;
  if (!email || !password) {
    return res.status(400).json({ error: "Email and password required" });
  }
  // Demo only - use bcrypt + real DB in production
  if (email === "user@test.com" && password === "correct") {
    return res.json({ token: "demo-token" });
  }
  return res.status(401).json({ error: "Invalid credentials" });
});

// Parameterized-style safe response (no user input in errors)
app.get("/users/:id", (req, res) => {
  const id = parseInt(req.params.id, 10);
  if (isNaN(id) || id < 1) {
    return res.status(400).json({ error: "Invalid user ID" });
  }
  res.json({ id, name: "Demo User" });
});

const PORT = 3000;
app.listen(PORT, () => console.log(`Secure API demo: http://localhost:${PORT}`));

// JWT demo - educational only (use established libs in production)
// npm install jsonwebtoken
const jwt = require("jsonwebtoken");

const SECRET = process.env.JWT_SECRET || "dev-secret-change-in-production";

const payload = { userId: 42, email: "user@example.com" };
const token = jwt.sign(payload, SECRET, { expiresIn: "1h" });

console.log("Token:", token);

try {
  const decoded = jwt.verify(token, SECRET);
  console.log("Decoded:", decoded);
} catch (err) {
  console.error("Invalid token");
}

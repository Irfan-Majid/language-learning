// examples/hello.js - Minimal Express server
const express = require("express");
const app = express();
const PORT = 3000;

app.get("/", (req, res) => {
  res.json({ message: "Hello from Express!" });
});

app.listen(PORT, () => console.log(`http://localhost:${PORT}`));

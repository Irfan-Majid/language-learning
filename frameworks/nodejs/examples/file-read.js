// examples/file-read.js — Read a file with Node.js fs module
const fs = require("fs");
const path = require("path");

const filePath = path.join(__dirname, "sample.txt");

try {
  const content = fs.readFileSync(filePath, "utf8");
  console.log("File contents:");
  console.log(content);
} catch (err) {
  console.error("Error:", err.message);
}

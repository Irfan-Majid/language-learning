# Generate missing examples and new technology modules
$root = $PSScriptRoot + "\.."
$ErrorActionPreference = "Stop"

function Ensure-Dir($path) {
    if (-not (Test-Path $path)) { New-Item -ItemType Directory -Force -Path $path | Out-Null }
}

$examples = @{
    "languages\csharp\examples\Hello.cs" = @'
// Run: dotnet run (in a console project) or compile with csc
using System;

class Hello {
    static void Main() {
        Console.WriteLine("Hello from C#!");
    }
}
'@
    "languages\kotlin\examples\Hello.kt" = @'
// Run: kotlinc Hello.kt -include-runtime -d hello.jar && java -jar hello.jar
fun main() {
    println("Hello from Kotlin!")
}
'@
    "languages\r\examples\hello.R" = @'
# Run: Rscript hello.R
print("Hello from R!")
nums <- c(1, 2, 3, 4, 5)
cat("Mean:", mean(nums), "\n")
'@
    "languages\ruby\examples\hello.rb" = @'
# Run: ruby hello.rb
puts "Hello from Ruby!"

[1, 2, 3, 4, 5].each { |n| puts n * 2 }
'@
    "languages\rust\examples\hello.rs" = @'
// Run: rustc hello.rs && ./hello (or hello.exe on Windows)
fn main() {
    println!("Hello from Rust!");
}
'@
    "languages\scala\examples\Hello.scala" = @'
// Run: scala Hello.scala  (or scalac + java)
@main def hello() = println("Hello from Scala!")
'@
    "languages\swift\examples\hello.swift" = @'
// Run: swift hello.swift
print("Hello from Swift!")
let nums = [1, 2, 3, 4, 5]
print("Sum:", nums.reduce(0, +))
'@
    "frameworks\angular\examples\hello.component.ts" = @'
// Angular standalone component example
import { Component } from "@angular/core";

@Component({
  selector: "app-hello",
  standalone: true,
  template: `<h1>Hello, {{ name }}!</h1>`,
})
export class HelloComponent {
  name = "Angular";
}
'@
    "frameworks\aspnet-core\examples\Program.cs" = @'
// Minimal ASP.NET Core API
// dotnet new webapi -n Demo && replace Program.cs
var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello from ASP.NET Core!");
app.MapGet("/users/{id}", (int id) => new { id, name = $"User {id}" });

app.Run();
'@
    "frameworks\django\examples\views_example.py" = @'
# Django view example - add to views.py
from django.http import JsonResponse

def hello(request):
    return JsonResponse({"message": "Hello from Django!"})

def user_detail(request, user_id):
    return JsonResponse({"user_id": user_id, "name": f"User {user_id}"})
'@
    "frameworks\flask\examples\hello.py" = @'
# Run: pip install flask && python hello.py
from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def hello():
    return jsonify({"message": "Hello from Flask!"})

@app.route("/users/<int:user_id>")
def user(user_id):
    return jsonify({"user_id": user_id})

if __name__ == "__main__":
    app.run(debug=True, port=5000)
'@
    "frameworks\dotnet\examples\Program.cs" = @'
// .NET console - dotnet new console && dotnet run
Console.WriteLine("Hello from .NET!");
Console.WriteLine($"Runtime: {Environment.Version}");
'@
    "frameworks\nextjs\examples\page.tsx" = @'
// Next.js App Router - app/page.tsx
export default function Home() {
  return (
    <main>
      <h1>Hello from Next.js!</h1>
      <p>Edit app/page.tsx to get started.</p>
    </main>
  );
}
'@
    "frameworks\nuxtjs\examples\page.vue" = @'
<!-- Nuxt 3 - pages/index.vue -->
<script setup>
const title = "Hello from Nuxt.js!";
</script>

<template>
  <div>
    <h1>{{ title }}</h1>
  </div>
</template>
'@
    "frameworks\react-native\examples\App.tsx" = @'
// React Native App.tsx
import React, { useState } from "react";
import { View, Text, Button, StyleSheet } from "react-native";

export default function App() {
  const [count, setCount] = useState(0);
  return (
    <View style={styles.container}>
      <Text style={styles.title}>Hello from React Native!</Text>
      <Text>Count: {count}</Text>
      <Button title="Increment" onPress={() => setCount(count + 1)} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, justifyContent: "center", alignItems: "center" },
  title: { fontSize: 24, marginBottom: 16 },
});
'@
    "frameworks\spring-boot\examples\HelloController.java" = @'
// Spring Boot REST controller
package com.example.demo;

import org.springframework.web.bind.annotation.*;
import java.util.Map;

@RestController
public class HelloController {

    @GetMapping("/")
    public Map<String, String> hello() {
        return Map.of("message", "Hello from Spring Boot!");
    }

    @GetMapping("/users/{id}")
    public Map<String, Object> getUser(@PathVariable int id) {
        return Map.of("id", id, "name", "User " + id);
    }
}
'@
    "frameworks\svelte\examples\Hello.svelte" = @'
<!-- Svelte component -->
<script>
  let count = 0;
  const name = "Svelte";
</script>

<h1>Hello, {name}!</h1>
<button on:click={() => count++}>Count: {count}</button>
'@
    "mobile\android\examples\MainActivity.kt" = @'
// Android - MainActivity.kt (simplified)
package com.example.helloapp

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val textView = TextView(this)
        textView.text = "Hello from Android!"
        setContentView(textView)
    }
}
'@
    "mobile\ios\examples\ContentView.swift" = @'
// SwiftUI - ContentView.swift
import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 16) {
            Text("Hello from iOS!")
                .font(.title)
            Text("Count: \(count)")
            Button("Increment") { count += 1 }
        }
        .padding()
    }
}
'@
    "databases\mongodb\examples\hello.js" = @'
// MongoDB shell / Node.js example
// mongosh: run commands below
// Node: npm install mongodb

// --- mongosh commands ---
// use mydb
// db.users.insertOne({ name: "Alice", email: "alice@example.com" })
// db.users.find({ name: "Alice" })

const { MongoClient } = require("mongodb");

async function main() {
  const client = new MongoClient("mongodb://localhost:27017");
  await client.connect();
  const db = client.db("mydb");
  const users = db.collection("users");
  await users.insertOne({ name: "Alice", email: "alice@example.com" });
  const found = await users.findOne({ name: "Alice" });
  console.log(found);
  await client.close();
}

// main().catch(console.error);
console.log("See comments for MongoDB usage");
'@
    "databases\mysql\examples\hello.sql" = @'
-- MySQL basics
CREATE DATABASE IF NOT EXISTS learning_db;
USE learning_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE
);

INSERT INTO users (name, email) VALUES
    ('Alice', 'alice@example.com'),
    ('Bob', 'bob@example.com');

SELECT * FROM users;
SELECT name, email FROM users WHERE name = 'Alice';
'@
    "databases\redis\examples\hello.redis" = @'
# Redis CLI commands (run: redis-cli)

SET greeting "Hello from Redis!"
GET greeting

SET user:1:name "Alice"
GET user:1:name

INCR page:views
INCR page:views
GET page:views

EXPIRE session:abc 3600
TTL session:abc
'@
    "testing\cypress\examples\hello.cy.js" = @'
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
'@
    "testing\phpunit\examples\HelloTest.php" = @'
<?php
// PHPUnit test - vendor/bin/phpunit HelloTest.php
use PHPUnit\Framework\TestCase;

function add(int $a, int $b): int {
    return $a + $b;
}

class HelloTest extends TestCase {
    public function testAddition(): void {
        $this->assertEquals(5, add(2, 3));
    }

    public function testString(): void {
        $this->assertStringContainsString("Hello", "Hello PHPUnit!");
    }
}
'@
    "testing\pytest\examples\test_hello.py" = @'
"""pytest examples - run: pytest test_hello.py -v"""

def add(a, b):
    return a + b

def greet(name):
    return f"Hello, {name}!"

def test_add():
    assert add(2, 3) == 5

def test_greet():
    assert greet("pytest") == "Hello, pytest!"

def test_negative():
    assert add(-1, 1) == 0
'@
    "testing\selenium\examples\test_hello.py" = @'
"""Selenium E2E example - pip install selenium pytest
Requires: Chrome + chromedriver in PATH
Run: pytest test_hello.py -v
"""
import pytest

def test_example_domain_title():
    try:
        from selenium import webdriver
        from selenium.webdriver.chrome.options import Options
        options = Options()
        options.add_argument("--headless=new")
        driver = webdriver.Chrome(options=options)
        driver.get("https://example.com")
        assert "Example Domain" in driver.title
        driver.quit()
    except Exception as e:
        pytest.skip(f"Selenium/Chrome not available: {e}")
'@
    "devops\kubernetes\examples\deployment.yaml" = @'
# Kubernetes deployment example
# kubectl apply -f deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hello-app
spec:
  replicas: 2
  selector:
    matchLabels:
      app: hello
  template:
    metadata:
      labels:
        app: hello
    spec:
      containers:
        - name: hello
          image: nginx:alpine
          ports:
            - containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
  name: hello-service
spec:
  selector:
    app: hello
  ports:
    - port: 80
      targetPort: 80
  type: ClusterIP
'@
    "tools\git\examples\commands.sh" = @'
#!/bin/bash
# Git essential commands reference

git init
git status
git add .
git commit -m "Initial commit"
git branch feature-x
git checkout feature-x   # or: git switch feature-x
git merge feature-x
git log --oneline
git remote add origin https://github.com/user/repo.git
git push -u origin main
'@
}

foreach ($entry in $examples.GetEnumerator()) {
    $fullPath = Join-Path $root $entry.Key
    Ensure-Dir (Split-Path $fullPath -Parent)
    Set-Content -Path $fullPath -Value $entry.Value -Encoding UTF8
}

Write-Host "Created $($examples.Count) example files"

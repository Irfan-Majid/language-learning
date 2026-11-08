# Final completion: beginner stubs, 06-08 tracks, cheat sheets
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot

function Ensure-Dir($p) { if (-not (Test-Path $p)) { New-Item -ItemType Directory -Force -Path $p | Out-Null } }

# --- Beginner guides for remaining stub technologies ---
$beginners = @{
    "languages\bash" = @'
# Beginner Guide - Bash

**Time:** 1 week | **Platform:** Linux, macOS, or Git Bash (Windows)

## Step 1: Open a shell
```bash
bash --version
```

## Step 2: First script
```bash
#!/bin/bash
echo "Hello from Bash!"
name="World"
echo "Hello, $name"
```
Save as `hello.sh`, then: `chmod +x hello.sh && ./hello.sh`

## Step 3: Core concepts
- Variables: `name="value"`
- Conditionals: `if [ "$x" -eq 1 ]; then ... fi`
- Loops: `for i in 1 2 3; do echo $i; done`
- Functions: `greet() { echo "Hi"; }`

## Practice
1. Script that lists files in a directory
2. Backup script copying files to a folder
3. FizzBuzz 1-20 in Bash

-> [02-fundamentals/](../02-fundamentals/)
'@
    "languages\kotlin" = @'
# Beginner Guide - Kotlin

**Time:** 2 weeks | **Prerequisites:** Basic programming helpful

## Step 1: Install
- Android Studio (includes Kotlin), or https://kotlinlang.org/docs/command-line.html

## Step 2: Run example
```bash
# See examples/Hello.kt
kotlinc Hello.kt -include-runtime -d hello.jar
java -jar hello.jar
```

## Step 3: Core concepts
```kotlin
val immutable = 42          // read-only
var mutable = "hello"       // reassignable
fun add(a: Int, b: Int) = a + b
val nums = listOf(1, 2, 3)
nums.forEach { println(it) }
```

## Practice
1. FizzBuzz in Kotlin
2. Data class `User(name, email)` with 3 instances
3. Filter list of numbers > 10

-> [02-fundamentals/](../02-fundamentals/)
'@
    "languages\r" = @'
# Beginner Guide - R

**Time:** 2 weeks | **Use case:** Statistics, data science

## Step 1: Install
- https://cran.r-project.org/ or RStudio Desktop

## Step 2: Run example
```bash
Rscript examples/hello.R
```

## Step 3: Core concepts
```r
x <- c(1, 2, 3, 4, 5)
mean(x)
df <- data.frame(name = c("Alice", "Bob"), score = c(90, 85))
summary(df)
```

## Practice
1. Calculate mean, median, sd of a numeric vector
2. Read CSV with `read.csv()` and plot histogram
3. Simple linear model `lm(y ~ x, data=df)`

-> [02-fundamentals/](../02-fundamentals/)
'@
    "languages\ruby" = @'
# Beginner Guide - Ruby

**Time:** 2 weeks

## Step 1: Install
- Windows: RubyInstaller | Mac: pre-installed or `brew install ruby`

## Step 2: Run example
```bash
ruby examples/hello.rb
```

## Step 3: Core concepts
```ruby
name = "Ruby"
[1,2,3].each { |n| puts n * 2 }
def greet(name); "Hello, #{name}!"; end
{ name: "Alice", age: 30 }  # hash
```

## Practice
1. FizzBuzz in Ruby
2. Array of hashes representing users - print names
3. Open file and count lines

-> [02-fundamentals/](../02-fundamentals/) | Rails: [ruby-on-rails/](../../frameworks/ruby-on-rails/)
'@
    "languages\rust" = @'
# Beginner Guide - Rust

**Time:** 3-4 weeks (steeper learning curve)

## Step 1: Install
```bash
# https://rustup.rs/
rustc --version
cargo --version
```

## Step 2: Run example
```bash
rustc examples/hello.rs
./hello        # or hello.exe on Windows
```

## Step 3: Core concepts
```rust
let x = 5;              // immutable by default
let mut count = 0;      // mutable
fn add(a: i32, b: i32) -> i32 { a + b }
let v = vec![1, 2, 3];
```

**Key idea:** Ownership - each value has one owner. Borrow with `&`.

## Practice
1. CLI that sums numbers from command line args
2. Struct `Rectangle` with area method
3. Read file and print line count

-> [02-fundamentals/](../02-fundamentals/)
'@
    "languages\scala" = @'
# Beginner Guide - Scala

**Time:** 3 weeks | **Runs on:** JVM

## Step 1: Install
- https://www.scala-lang.org/download/ (includes scala CLI)

## Step 2: Run example
```bash
scala examples/Hello.scala
```

## Step 3: Core concepts
```scala
val name = "Scala"           // immutable
def double(n: Int) = n * 2
val nums = List(1, 2, 3)
nums.map(_ * 2).filter(_ > 2)
case class User(name: String, age: Int)
```

## Practice
1. Case class + companion object pattern
2. map/filter on a list of strings
3. Pattern matching on sealed trait

-> [02-fundamentals/](../02-fundamentals/)
'@
    "languages\swift" = @'
# Beginner Guide - Swift

**Time:** 2-3 weeks | **Requires:** Mac for iOS; Swift runs on Linux for CLI

## Step 1: Install
- Xcode from Mac App Store (includes Swift)

## Step 2: Run example
```bash
swift examples/hello.swift
```

## Step 3: Core concepts
```swift
let constant = 42
var mutable = "hello"
func greet(_ name: String) -> String { "Hello, \(name)!" }
let nums = [1, 2, 3]
var optional: String? = nil   // Optionals
if let value = optional { print(value) }
```

## Practice
1. Struct `Book` with title and pages
2. Guard statement example
3. Simple SwiftUI view (see mobile/ios/)

-> [02-fundamentals/](../02-fundamentals/)
'@
    "frameworks\aspnet-core" = @'
# Beginner Guide - ASP.NET Core

**Time:** 2-3 weeks | **Prerequisites:** [C#](../../languages/csharp/01-beginner/)

## Step 1: Install .NET SDK
```bash
dotnet --version   # 8.0+
```

## Step 2: Create and run API
```bash
dotnet new webapi -n HelloApi
cd HelloApi
dotnet run
```
Open https://localhost:5001/swagger (or URL in console)

## Step 3: Core concepts
- Minimal APIs in `Program.cs`
- Controllers + `[ApiController]`
- Dependency injection built-in
- `appsettings.json` configuration

See [examples/Program.cs](../examples/Program.cs)

## Practice
1. GET `/hello` returning JSON
2. CRUD endpoints for `Item` model
3. Add Swagger documentation

-> [02-fundamentals/](../02-fundamentals/)
'@
    "frameworks\fastapi" = @'
# Beginner Guide - FastAPI

**Time:** 1-2 weeks | **Prerequisites:** [Python](../../languages/python/01-beginner/)

## Step 1: Install
```bash
pip install fastapi uvicorn
```

## Step 2: Run example
```bash
cd examples
pip install -r requirements.txt
uvicorn hello:app --reload
```
Open http://127.0.0.1:8000 and http://127.0.0.1:8000/docs

## Step 3: Core concepts
```python
from fastapi import FastAPI
app = FastAPI()

@app.get("/")
def root():
    return {"message": "Hello"}

@app.get("/items/{id}")
def get_item(id: int):
    return {"id": id}
```

## Practice
1. POST endpoint accepting JSON body
2. Query parameter `?q=search`
3. Pydantic model for request validation

-> [02-fundamentals/](../02-fundamentals/)
'@
    "frameworks\nuxtjs" = @'
# Beginner Guide - Nuxt.js

**Time:** 2-3 weeks | **Prerequisites:** [Vue](../vue/01-beginner/), [JavaScript](../../languages/javascript/01-beginner/)

## Step 1: Create project
```bash
npx nuxi@latest init my-nuxt-app
cd my-nuxt-app
npm install
npm run dev
```

## Step 2: File-based routing
```
pages/index.vue    -> /
pages/about.vue    -> /about
```

See [examples/page.vue](../examples/page.vue)

## Step 3: Core concepts
- `<script setup>` composition API
- `useFetch()` for data
- `nuxt.config.ts` configuration
- Server routes in `server/api/`

## Practice
1. About page with static content
2. Dynamic route `pages/users/[id].vue`
3. API route returning JSON

-> [02-fundamentals/](../02-fundamentals/)
'@
    "frameworks\react-native" = @'
# Beginner Guide - React Native

**Time:** 3-4 weeks | **Prerequisites:** [React](../react/01-beginner/)

## Step 1: Setup (Expo - easiest)
```bash
npx create-expo-app@latest MyApp
cd MyApp
npx expo start
```
Scan QR with Expo Go app on phone.

## Step 2: Core components
```jsx
import { View, Text, Button } from "react-native";
// View = div, Text = p, StyleSheet for CSS-like styles
```

See [examples/App.tsx](../examples/App.tsx)

## Step 3: Key differences from React web
- No HTML elements - use View, Text, Image
- StyleSheet instead of CSS files
- Navigation: React Navigation library
- Platform-specific code: `Platform.OS`

## Practice
1. Counter app with Button
2. FlatList showing 10 items
3. Fetch API data and display list

-> [02-fundamentals/](../02-fundamentals/)
'@
    "frameworks\spring-boot" = @'
# Beginner Guide - Spring Boot

**Time:** 3-4 weeks | **Prerequisites:** [Java](../../languages/java/01-beginner/)

## Step 1: Create project
- https://start.spring.io/ - choose Web, Spring Boot 3.x, Java 17+

```bash
./mvnw spring-boot:run
```

## Step 2: First controller
See [examples/HelloController.java](../examples/HelloController.java)

```java
@RestController
public class HelloController {
    @GetMapping("/")
    public Map<String, String> hello() {
        return Map.of("message", "Hello Spring Boot!");
    }
}
```

## Step 3: Core concepts
- `@SpringBootApplication` main class
- `@RestController` + `@GetMapping`
- `application.properties` config
- Spring Data JPA for database

## Practice
1. CRUD REST API for `Product`
2. Connect H2 in-memory database
3. Add validation with `@Valid`

-> [02-fundamentals/](../02-fundamentals/)
'@
    "frameworks\svelte" = @'
# Beginner Guide - Svelte

**Time:** 1-2 weeks | **Prerequisites:** [JavaScript](../../languages/javascript/01-beginner/)

## Step 1: Create project
```bash
npm create svelte@latest my-app
cd my-app
npm install
npm run dev
```

## Step 2: Component anatomy
See [examples/Hello.svelte](../examples/Hello.svelte)

```svelte
<script>
  let count = 0;
</script>
<button on:click={() => count++}>Count: {count}</button>
```

## Step 3: Core concepts
- Reactive `let` variables (no useState)
- `{#if}`, `{#each}` blocks
- `on:event` handlers
- Stores for shared state

## Practice
1. Todo list with add/remove
2. Fetch JSON and display with `{#each}`
3. Form with two-way bind `bind:value`

-> [02-fundamentals/](../02-fundamentals/)
'@
    "mobile\ios" = @'
# Beginner Guide - iOS Development

**Time:** 4-6 weeks | **Prerequisites:** [Swift](../../languages/swift/01-beginner/)

## Step 1: Install Xcode
- Mac App Store -> Xcode (includes Simulator)

## Step 2: Create project
- File -> New -> Project -> iOS App -> SwiftUI
- Run on Simulator (Cmd+R)

## Step 3: SwiftUI basics
See [examples/ContentView.swift](../examples/ContentView.swift)

```swift
struct ContentView: View {
    @State private var count = 0
    var body: some View {
        VStack {
            Text("Count: \(count)")
            Button("Add") { count += 1 }
        }
    }
}
```

## Practice
1. List view with 5 items
2. Navigation to detail screen
3. Fetch JSON with async/await

-> [02-fundamentals/](../02-fundamentals/)
'@
    "databases\mysql" = @'
# Beginner Guide - MySQL

**Time:** 1-2 weeks

## Step 1: Install
- Windows: MySQL Installer | Mac: `brew install mysql` | Docker: `docker run -p 3306:3306 -e MYSQL_ROOT_PASSWORD=pass mysql`

## Step 2: Connect
```bash
mysql -u root -p
```

## Step 3: Run example
```bash
mysql -u root -p < examples/hello.sql
```

## Core SQL
```sql
CREATE DATABASE learning_db;
USE learning_db;
SELECT * FROM users WHERE name = 'Alice';
INSERT INTO users (name, email) VALUES ('Bob', 'bob@example.com');
```

## Practice
1. Design `products` table with price
2. JOIN users to orders
3. Add index on email column

-> [02-fundamentals/](../02-fundamentals/)
'@
    "databases\postgresql" = @'
# Beginner Guide - PostgreSQL

**Time:** 1-2 weeks

## Step 1: Install
- https://www.postgresql.org/download/ or Docker:
```bash
docker run -p 5432:5432 -e POSTGRES_PASSWORD=pass postgres
```

## Step 2: Connect
```bash
psql -U postgres -h localhost
```

## Step 3: Run example
```bash
psql -U postgres -f examples/hello.sql
```

## Core SQL
```sql
CREATE TABLE users (id SERIAL PRIMARY KEY, name TEXT, email TEXT UNIQUE);
INSERT INTO users (name, email) VALUES ('Alice', 'alice@example.com');
SELECT * FROM users;
```

## Practice
1. E-commerce schema: users, products, orders
2. INNER JOIN orders to users
3. JSONB column storing metadata

-> [02-fundamentals/](../02-fundamentals/)
'@
    "databases\redis" = @'
# Beginner Guide - Redis

**Time:** 1 week

## Step 1: Install
```bash
docker run -p 6379:6379 redis:alpine
# or: brew install redis && redis-server
```

## Step 2: Redis CLI
```bash
redis-cli
SET greeting "Hello Redis"
GET greeting
INCR page:views
```

See [examples/hello.redis](../examples/hello.redis)

## Step 3: Use cases
| Pattern | Command |
|---------|---------|
| Cache | SET key value EX 3600 |
| Session | SET session:token data |
| Counter | INCR views |
| Queue | LPUSH / RPOP |

## Practice
1. Cache API response with 5-minute TTL
2. Leaderboard with sorted sets (ZADD)
3. Pub/Sub between two CLI sessions

-> [02-fundamentals/](../02-fundamentals/)
'@
    "testing\cypress" = @'
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
'@
    "testing\jest" = @'
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
'@
    "testing\phpunit" = @'
# Beginner Guide - PHPUnit

**Time:** 1 week | **Prerequisites:** [PHP](../../languages/php/01-beginner/)

## Step 1: Install
```bash
composer init
composer require --dev phpunit/phpunit
./vendor/bin/phpunit --version
```

## Step 2: First test
See [examples/HelloTest.php](../examples/HelloTest.php)

```bash
./vendor/bin/phpunit examples/HelloTest.php
```

## Step 3: Assertions
- `$this->assertEquals(5, add(2, 3));`
- `$this->assertTrue($result);`
- `$this->assertStringContainsString('Hello', $str);`

## Practice
1. Test Laravel controller (see laravel/06-testing/)
2. Data provider for multiple inputs
3. Test exception with `expectException`

-> [02-fundamentals/](../02-fundamentals/)
'@
    "testing\pytest" = @'
# Beginner Guide - pytest

**Time:** 1 week | **Prerequisites:** [Python](../../languages/python/01-beginner/)

## Step 1: Install
```bash
pip install pytest
```

## Step 2: First test
See [examples/test_hello.py](../examples/test_hello.py)

```bash
pytest examples/test_hello.py -v
```

## Step 3: Core patterns
```python
def test_add():
    assert add(2, 3) == 5

@pytest.fixture
def sample_user():
    return {"name": "Alice"}

def test_user(sample_user):
    assert sample_user["name"] == "Alice"
```

## Practice
1. Parametrize test with 3 inputs
2. Test FastAPI endpoint with TestClient
3. Coverage: `pip install pytest-cov && pytest --cov`

-> [02-fundamentals/](../02-fundamentals/)
'@
    "testing\selenium" = @'
# Beginner Guide - Selenium

**Time:** 2 weeks | **Prerequisites:** Python or Java

## Step 1: Install (Python)
```bash
pip install selenium pytest
# Install Chrome browser + chromedriver in PATH
```

## Step 2: First test
See [examples/test_hello.py](../examples/test_hello.py)

```bash
pytest examples/test_hello.py -v
```

## Step 3: Core pattern
```python
from selenium import webdriver
driver = webdriver.Chrome()
driver.get("https://example.com")
assert "Example" in driver.title
driver.quit()
```

## Practice
1. Fill and submit a form
2. Wait for element: `WebDriverWait`
3. Page Object Model pattern

-> [02-fundamentals/](../02-fundamentals/)
'@
}

foreach ($entry in $beginners.GetEnumerator()) {
    $path = Join-Path $root ($entry.Key -replace '\\', [IO.Path]::DirectorySeparatorChar)
    Ensure-Dir (Join-Path $path "01-beginner")
    Set-Content (Join-Path $path "01-beginner\README.md") $entry.Value -Encoding UTF8
}

Write-Host "Updated $($beginners.Count) beginner guides"

# --- 06/07/08 supplemental tracks for all technologies ---
$searchRoots = @("languages","frameworks","mobile","databases","testing","devops","tools","web","essentials")
$updated = 0

foreach ($sr in $searchRoots) {
    $base = Join-Path $root $sr
    if (-not (Test-Path $base)) { continue }
    Get-ChildItem $base -Directory | ForEach-Object {
        $name = (Get-Content (Join-Path $_.FullName "README.md") -TotalCount 1 -ErrorAction SilentlyContinue) -replace '^#\s*',''
        if (-not $name) { $name = $_.Name }

        $cat = switch ($sr) {
            "languages" { "language" }
            "frameworks" { "framework" }
            "databases" { "database" }
            "testing" { "testing" }
            "devops" { "devops" }
            "mobile" { "mobile" }
            default { "general" }
        }

        $testTools = switch ($cat) {
            "language" { "Unit tests native to this language; integration tests for modules" }
            "framework" { "Framework test utilities + stack test runner (Jest, pytest, PHPUnit)" }
            "database" { "Schema tests, migration tests, query performance tests, data integrity checks" }
            "testing" { "Self-referential: practice tests on sample apps; CI integration" }
            "devops" { "Infrastructure tests (terraform validate), smoke tests post-deploy, chaos testing intro" }
            "mobile" { "XCTest (iOS), Espresso (Android), Flutter test, device farm basics" }
            default { "Relevant stack test tools from testing/ folder" }
        }

        $tracks = @("06-testing", "07-project-management", "08-stack-switching")
        foreach ($track in $tracks) {
            Ensure-Dir (Join-Path $_.FullName $track)
        }

        @"
# Testing - $name

**Audience:** QA engineers and developers writing tests for $name projects

---

## What to Test

| Layer | Focus | Tools |
|-------|-------|-------|
| Unit | Core functions, classes, queries | Stack test runner |
| Integration | API + database, service calls | Postman, test client |
| E2E | Full user workflows | Cypress, Selenium, platform tests |

$testTools

---

## Tester Checklist

- [ ] Know how to run $name locally
- [ ] Know the test command for this stack
- [ ] Can read stack traces and logs
- [ ] Understand expected vs actual output
- [ ] Tests run in CI before merge

---

## See Also

- [testing/](../../testing/) - all testing tools
- [security/security-qa/](../../security/security-qa/) - security testing
- [examples/](../examples/) - sample code to test against
"@ | Set-Content (Join-Path $_.FullName "06-testing\README.md") -Encoding UTF8

        @"
# Project Management - $name Projects

**Audience:** PMs, tech leads, scrum masters

---

## Overview

**Technology:** $name  
**Typical team size:** 2-8 developers for MVP

---

## Timeline Estimates

| Phase | Duration |
|-------|----------|
| Environment setup | 1-3 days |
| Team learning curve (new stack) | 2-4 weeks |
| MVP feature delivery | 4-8 weeks |
| Production hardening | 2-4 weeks |

---

## Skills Needed

- Developers with $name experience
- QA familiar with stack testing tools
- DevOps for deployment (Docker/K8s common)

---

## Risks and Mitigation

| Risk | Mitigation |
|------|------------|
| Skill gap on team | Training budget, pair programming, proof of concept |
| Wrong technology choice | Time-boxed spike before commitment |
| Dependency vulnerabilities | Lock versions, regular audits, Dependabot |

---

## Definition of Done

- [ ] Code reviewed and merged
- [ ] Tests pass in CI
- [ ] Documentation updated
- [ ] Deployed to staging and verified
- [ ] PM sign-off on acceptance criteria
"@ | Set-Content (Join-Path $_.FullName "07-project-management\README.md") -Encoding UTF8

        @"
# Stack Switching - $name

Guides for developers migrating to or from $name.

---

## Switching TO $name

1. Complete [01-beginner/](../01-beginner/) - do not skip fundamentals
2. Map concepts from your current stack using [STACK-COMPARISON.md](../../STACK-COMPARISON.md)
3. Build one small side project before production work
4. Read [03-intermediate/](../03-intermediate/) for idiomatic patterns

---

## 30-Day Switch Plan

| Week | Focus |
|------|-------|
| 1 | Syntax, tooling, run examples/ |
| 2 | Core patterns and standard library |
| 3 | Framework or ecosystem integration |
| 4 | Build and deploy a mini project |

---

## Common Migrations

See specific guides in this folder and [LEARNING-PATH.md](../../LEARNING-PATH.md):

- Language migrations: compare syntax in STACK-COMPARISON.md
- Framework migrations: check 08-stack-switching/ in source framework folder
- Career switchers: pair with [career/](../../career/) 90-day plan

---

## Related Stacks

See [README.md](../README.md) related technologies section.
"@ | Set-Content (Join-Path $_.FullName "08-stack-switching\README.md") -Encoding UTF8
        $updated += 3
    }
}

Write-Host "Updated $updated supplemental track files"

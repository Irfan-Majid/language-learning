# Python Learning Hub — populate script
# Run: powershell -File scripts/populate-guides.ps1

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot

# Technology definitions: path, name, category, description, docs, tag, related
$technologies = @(
    @{ Path="languages/typescript"; Name="TypeScript"; Cat="Language"; Desc="Typed superset of JavaScript for large-scale applications"; Docs="https://www.typescriptlang.org/docs/"; Tag="typescript"; Related="javascript, react, angular" },
    @{ Path="languages/python"; Name="Python"; Cat="Language"; Desc="Versatile language for AI, data science, web, and automation"; Docs="https://docs.python.org/3/"; Tag="python"; Related="django, fastapi, flask" },
    @{ Path="languages/java"; Name="Java"; Cat="Language"; Desc="Enterprise-grade OOP language running on the JVM"; Docs="https://docs.oracle.com/en/java/"; Tag="java"; Related="spring-boot, kotlin, android" },
    @{ Path="languages/csharp"; Name="C#"; Cat="Language"; Desc="Microsoft language for .NET, games (Unity), and enterprise"; Docs="https://learn.microsoft.com/en-us/dotnet/csharp/"; Tag="c#"; Related="dotnet, aspnet-core, unity" },
    @{ Path="languages/php"; Name="PHP"; Cat="Language"; Desc="Server-side web language powering WordPress and Laravel"; Docs="https://www.php.net/docs.php"; Tag="php"; Related="laravel, wordpress, mysql" },
    @{ Path="languages/go"; Name="Go"; Cat="Language"; Desc="Google language for cloud, microservices, and CLI tools"; Docs="https://go.dev/doc/"; Tag="go"; Related="kubernetes, docker, microservices" },
    @{ Path="languages/dart"; Name="Dart"; Cat="Language"; Desc="Language optimized for Flutter cross-platform apps"; Docs="https://dart.dev/guides"; Tag="dart"; Related="flutter" },
    @{ Path="languages/ruby"; Name="Ruby"; Cat="Language"; Desc="Elegant language known for Ruby on Rails web framework"; Docs="https://ruby-doc.org/"; Tag="ruby"; Related="rails" },
    @{ Path="languages/rust"; Name="Rust"; Cat="Language"; Desc="Systems language with memory safety without garbage collection"; Docs="https://doc.rust-lang.org/"; Tag="rust"; Related="webassembly, systems" },
    @{ Path="languages/kotlin"; Name="Kotlin"; Cat="Language"; Desc="Modern JVM language, official for Android development"; Docs="https://kotlinlang.org/docs/"; Tag="kotlin"; Related="android, java, spring" },
    @{ Path="languages/swift"; Name="Swift"; Cat="Language"; Desc="Apple language for iOS, macOS, watchOS, and tvOS"; Docs="https://docs.swift.org/swift-book/"; Tag="swift"; Related="ios, swiftui" },
    @{ Path="languages/scala"; Name="Scala"; Cat="Language"; Desc="Functional + OOP on JVM, used in Apache Spark"; Docs="https://docs.scala-lang.org/"; Tag="scala"; Related="spark, java" },
    @{ Path="languages/r"; Name="R"; Cat="Language"; Desc="Statistical computing and data visualization"; Docs="https://cran.r-project.org/manuals.html"; Tag="r"; Related="statistics, data-science" },
    @{ Path="languages/sql"; Name="SQL"; Cat="Language"; Desc="Universal language for querying relational databases"; Docs="https://www.w3schools.com/sql/"; Tag="sql"; Related="postgresql, mysql" },
    @{ Path="languages/bash"; Name="Bash"; Cat="Language"; Desc="Shell scripting for Linux/macOS automation and DevOps"; Docs="https://www.gnu.org/software/bash/manual/"; Tag="bash"; Related="docker, devops" },
    @{ Path="frameworks/react"; Name="React"; Cat="Frontend Framework"; Desc="Facebook UI library for building component-based web apps"; Docs="https://react.dev/"; Tag="reactjs"; Related="javascript, typescript, nextjs" },
    @{ Path="frameworks/vue"; Name="Vue.js"; Cat="Frontend Framework"; Desc="Progressive JavaScript framework, easy to adopt incrementally"; Docs="https://vuejs.org/guide/"; Tag="vue.js"; Related="javascript, nuxtjs" },
    @{ Path="frameworks/angular"; Name="Angular"; Cat="Frontend Framework"; Desc="Google full framework with TypeScript, RxJS, and CLI"; Docs="https://angular.dev/"; Tag="angular"; Related="typescript, rxjs" },
    @{ Path="frameworks/nextjs"; Name="Next.js"; Cat="Meta-Framework"; Desc="React framework with SSR, routing, and API routes"; Docs="https://nextjs.org/docs"; Tag="next.js"; Related="react, typescript" },
    @{ Path="frameworks/nuxtjs"; Name="Nuxt.js"; Cat="Meta-Framework"; Desc="Vue framework with SSR and file-based routing"; Docs="https://nuxt.com/docs"; Tag="nuxt.js"; Related="vue" },
    @{ Path="frameworks/svelte"; Name="Svelte"; Cat="Frontend Framework"; Desc="Compile-time framework with minimal runtime"; Docs="https://svelte.dev/docs"; Tag="svelte"; Related="javascript" },
    @{ Path="frameworks/express"; Name="Express.js"; Cat="Backend Framework"; Desc="Minimal Node.js web framework for APIs and servers"; Docs="https://expressjs.com/"; Tag="express"; Related="javascript, nodejs" },
    @{ Path="frameworks/laravel"; Name="Laravel"; Cat="Backend Framework"; Desc="Elegant PHP framework with MVC, Eloquent ORM, and Blade"; Docs="https://laravel.com/docs"; Tag="laravel"; Related="php, mysql" },
    @{ Path="frameworks/django"; Name="Django"; Cat="Backend Framework"; Desc="Batteries-included Python web framework"; Docs="https://docs.djangoproject.com/"; Tag="django"; Related="python, postgresql" },
    @{ Path="frameworks/flask"; Name="Flask"; Cat="Backend Framework"; Desc="Lightweight Python micro-framework for APIs"; Docs="https://flask.palletsprojects.com/"; Tag="flask"; Related="python" },
    @{ Path="frameworks/fastapi"; Name="FastAPI"; Cat="Backend Framework"; Desc="Modern async Python API framework with auto docs"; Docs="https://fastapi.tiangolo.com/"; Tag="fastapi"; Related="python, pydantic" },
    @{ Path="frameworks/spring-boot"; Name="Spring Boot"; Cat="Backend Framework"; Desc="Java framework for enterprise microservices and APIs"; Docs="https://docs.spring.io/spring-boot/"; Tag="spring-boot"; Related="java, kotlin" },
    @{ Path="frameworks/aspnet-core"; Name="ASP.NET Core"; Cat="Backend Framework"; Desc="Cross-platform high-performance .NET web framework"; Docs="https://learn.microsoft.com/en-us/aspnet/core/"; Tag="asp.net-core"; Related="csharp, dotnet" },
    @{ Path="frameworks/dotnet"; Name=".NET"; Cat="Runtime & Platform"; Desc="Microsoft cross-platform runtime for C#, F#, and more"; Docs="https://learn.microsoft.com/en-us/dotnet/"; Tag=".net"; Related="csharp, aspnet-core" },
    @{ Path="frameworks/flutter"; Name="Flutter"; Cat="Mobile Framework"; Desc="Google UI toolkit for iOS, Android, Web, and Desktop from one codebase"; Docs="https://docs.flutter.dev/"; Tag="flutter"; Related="dart" },
    @{ Path="frameworks/react-native"; Name="React Native"; Cat="Mobile Framework"; Desc="Build native mobile apps using React and JavaScript"; Docs="https://reactnative.dev/docs/getting-started"; Tag="react-native"; Related="react, javascript" },
    @{ Path="mobile/android"; Name="Android"; Cat="Mobile Platform"; Desc="Google mobile OS - develop with Kotlin or Java"; Docs="https://developer.android.com/docs"; Tag="android"; Related="kotlin, java, flutter" },
    @{ Path="mobile/ios"; Name="iOS"; Cat="Mobile Platform"; Desc="Apple mobile OS - develop with Swift and SwiftUI"; Docs="https://developer.apple.com/documentation/"; Tag="ios"; Related="swift, flutter" },
    @{ Path="databases/postgresql"; Name="PostgreSQL"; Cat="Database"; Desc="Advanced open-source relational database"; Docs="https://www.postgresql.org/docs/"; Tag="postgresql"; Related="sql" },
    @{ Path="databases/mysql"; Name="MySQL"; Cat="Database"; Desc="Popular relational database for web applications"; Docs="https://dev.mysql.com/doc/"; Tag="mysql"; Related="sql, php" },
    @{ Path="databases/mongodb"; Name="MongoDB"; Cat="Database"; Desc="Document NoSQL database with flexible JSON schemas"; Docs="https://www.mongodb.com/docs/"; Tag="mongodb"; Related="javascript, express" },
    @{ Path="databases/redis"; Name="Redis"; Cat="Database"; Desc="In-memory data store for caching and real-time"; Docs="https://redis.io/docs/"; Tag="redis"; Related="caching, sessions" },
    @{ Path="testing/jest"; Name="Jest"; Cat="Testing Tool"; Desc="JavaScript unit testing framework by Meta"; Docs="https://jestjs.io/docs/getting-started"; Tag="jest"; Related="javascript, react" },
    @{ Path="testing/cypress"; Name="Cypress"; Cat="Testing Tool"; Desc="End-to-end testing for web applications"; Docs="https://docs.cypress.io/"; Tag="cypress"; Related="javascript, e2e" },
    @{ Path="testing/selenium"; Name="Selenium"; Cat="Testing Tool"; Desc="Cross-browser automation for web testing"; Docs="https://www.selenium.dev/documentation/"; Tag="selenium"; Related="e2e, qa" },
    @{ Path="testing/pytest"; Name="pytest"; Cat="Testing Tool"; Desc="Python testing framework with fixtures and plugins"; Docs="https://docs.pytest.org/"; Tag="pytest"; Related="python" },
    @{ Path="testing/phpunit"; Name="PHPUnit"; Cat="Testing Tool"; Desc="Unit testing framework for PHP"; Docs="https://phpunit.de/documentation.html"; Tag="phpunit"; Related="php, laravel" },
    @{ Path="devops/docker"; Name="Docker"; Cat="DevOps"; Desc="Containerization platform for packaging applications"; Docs="https://docs.docker.com/"; Tag="docker"; Related="kubernetes, devops" },
    @{ Path="devops/kubernetes"; Name="Kubernetes"; Cat="DevOps"; Desc="Container orchestration for scaling cloud applications"; Docs="https://kubernetes.io/docs/"; Tag="kubernetes"; Related="docker, go" },
    @{ Path="tools/git"; Name="Git"; Cat="Tool"; Desc="Distributed version control used by every dev team worldwide"; Docs="https://git-scm.com/doc"; Tag="git"; Related="github, devops" }
)

function New-Readme($tech, $basePath) {
    $related = ($tech.Related -split ", " | ForEach-Object { "- $_" }) -join "`n"
    @"
# $($tech.Name)

> **Category:** $($tech.Cat)  
> **Global use:** Used worldwide in production systems

---

## What Is $($tech.Name)?

$($tech.Desc)

---

## Learning Tracks

| Track | Folder | Audience |
|-------|--------|----------|
| Beginner | [01-beginner](./01-beginner/) | First-time learners |
| Fundamentals | [02-fundamentals](./02-fundamentals/) | Junior developers |
| Intermediate | [03-intermediate](./03-intermediate/) | Mid-level engineers |
| Advanced | [04-advanced](./04-advanced/) | Senior developers |
| Expert | [05-expert](./05-expert/) | Architects & contributors |
| Testing | [06-testing](./06-testing/) | QA engineers |
| Project Management | [07-project-management](./07-project-management/) | PMs & tech leads |
| Stack Switching | [08-stack-switching](./08-stack-switching/) | Migrating developers |

---

## Quick Start

1. Read [01-beginner/](./01-beginner/)
2. Run examples in [examples/](./examples/)
3. Check [resources.md](./resources.md) for official docs

---

## Related

$related

---

*See [LEARNING-PATH.md](../../LEARNING-PATH.md) for full learning routes.*
"@ | Set-Content -Path (Join-Path $basePath "README.md") -Encoding UTF8
}

function New-Resources($tech, $basePath) {
    @"
# $($tech.Name) — Resources

## Official Documentation

| Resource | URL |
|----------|-----|
| Official docs | $($tech.Docs) |

## Community

| Platform | Link |
|----------|------|
| Stack Overflow | https://stackoverflow.com/questions/tagged/$($tech.Tag) |
| Reddit | Search r/$($tech.Tag -replace '\.','') |

## Free Learning

| Resource | Type |
|----------|------|
| Official getting started guide | Tutorial |
| YouTube: "$($tech.Name) tutorial 2025" | Video |
| Exercism (if available) | Practice |

## Practice Platforms

- https://exercism.org
- https://leetcode.com
- https://www.freecodecamp.org

---

*Always start with official documentation.*
"@ | Set-Content -Path (Join-Path $basePath "resources.md") -Encoding UTF8
}

function New-BeginnerGuide($tech, $basePath) {
    $beginnerPath = Join-Path $basePath "01-beginner\README.md"
    @"
# Beginner Guide — $($tech.Name)

**Audience:** First-time learners  
**Time:** 1–2 weeks (1–2 hours/day)

---

## What You Will Learn

- [ ] Install and set up $($tech.Name)
- [ ] Write and run your first program
- [ ] Understand basic syntax and concepts
- [ ] Complete practice exercises

---

## Step 1: Install

Visit official docs: $($tech.Docs)

Follow the **Getting Started** or **Installation** section.

---

## Step 2: Your First Program

Check the [examples/](../examples/) folder for runnable samples.

Type every example yourself — do not copy-paste without understanding.

---

## Step 3: Core Concepts to Master

1. **Variables and data types**
2. **Conditionals** (if/else)
3. **Loops** (for, while)
4. **Functions / methods**
5. **Input and output**

---

## Practice Exercises

1. Hello World with your name
2. Simple calculator (add two numbers)
3. FizzBuzz (1 to 20)
4. List/array of items — print each one

---

## For Testers

- Learn to run programs and verify expected output
- Read error messages — they tell you what went wrong
- See [06-testing/](../06-testing/) when ready

---

## For Project Managers

- $($tech.Name) is used for: $($tech.Desc)
- Typical beginner ramp-up: **2–4 weeks**
- Coordinate with dev lead on environment setup time

---

## Next Step

→ [02-fundamentals/](../02-fundamentals/)

## Help

→ [resources.md](../resources.md)
"@ | Set-Content -Path $beginnerPath -Encoding UTF8
}

function New-SkillGuide($tech, $basePath, $level, $title, $audience, $topics) {
    $path = Join-Path $basePath "$level\README.md"
    $topicList = ($topics | ForEach-Object { "- $_" }) -join "`n"
    @"
# $title — $($tech.Name)

**Audience:** $audience

---

## Topics

$topicList

---

## Practice

Build a small project applying these concepts. See [examples/](../examples/).

---

## Official Reference

$($tech.Docs)
"@ | Set-Content -Path $path -Encoding UTF8
}

function New-TestingGuide($tech, $basePath) {
    @"
# Testing — $($tech.Name)

**Audience:** QA engineers, test automation developers

---

## What to Test

| Layer | What | Tools |
|-------|------|-------|
| Unit | Functions, classes, modules | Stack-specific (see testing/ folder) |
| Integration | API + database | Postman, stack test libs |
| E2E | Full user flows | Cypress, Selenium |

---

## Tester Checklist for $($tech.Name) Projects

- [ ] Know how to run the app locally
- [ ] Know the test command (e.g. ``npm test``, ``pytest``)
- [ ] Understand expected vs actual output
- [ ] Can read stack traces / error logs
- [ ] Know CI pipeline test stage

---

## See Also

- [testing/](../../testing/) folder for tool-specific guides
- [$($tech.Name) docs]($($tech.Docs))
"@ | Set-Content -Path (Join-Path $basePath "06-testing\README.md") -Encoding UTF8
}

function New-PMGuide($tech, $basePath) {
    @"
# Project Management — $($tech.Name) Projects

**Audience:** PMs, tech leads, scrum masters

---

## Overview

**Technology:** $($tech.Name) ($($tech.Cat))  
**Use case:** $($tech.Desc)

---

## Typical Timeline

| Phase | Duration |
|-------|----------|
| Environment setup | 1–3 days |
| Learning curve (new team) | 2–4 weeks |
| MVP feature | 4–8 weeks |
| Production hardening | 2–4 weeks |

---

## Team Skills Needed

- Developers with $($tech.Name) experience
- QA familiar with stack testing tools
- DevOps for deployment (often Docker/K8s)

---

## Risks

| Risk | Mitigation |
|------|------------|
| Skill gap | Training budget, pair programming |
| Wrong tool choice | Proof of concept before commitment |
| Dependency issues | Lock versions, security audits |

---

## Definition of Done

- [ ] Code reviewed and merged
- [ ] Tests pass in CI
- [ ] Documentation updated
- [ ] Deployed to staging and verified
"@ | Set-Content -Path (Join-Path $basePath "07-project-management\README.md") -Encoding UTF8
}

function New-StackSwitchGuide($tech, $basePath) {
    @"
# Stack Switching — $($tech.Name)

Guides for developers migrating to or from $($tech.Name).

---

## Switching TO $($tech.Name)

1. Complete [01-beginner/](../01-beginner/) — don't skip basics
2. Map concepts from your current language (see [STACK-COMPARISON.md](../../STACK-COMPARISON.md))
3. Build one small project in $($tech.Name) before production work
4. Read [03-intermediate/](../03-intermediate/) for idiomatic patterns

---

## Common Migrations

| From | Difficulty | Key difference |
|------|------------|----------------|
| See STACK-COMPARISON.md | Varies | Syntax, tooling, ecosystem |

---

## 30-Day Switch Plan

| Week | Focus |
|------|-------|
| 1 | Syntax, tooling, hello world |
| 2 | Core patterns, standard library |
| 3 | Framework integration |
| 4 | Build + deploy a mini project |

---

## Related Stacks

$($tech.Related)
"@ | Set-Content -Path (Join-Path $basePath "08-stack-switching\README.md") -Encoding UTF8
}

# Skill level definitions
$levels = @(
    @{ Id="02-fundamentals"; Title="Fundamentals"; Audience="Junior developers (0-1 year)"; Topics=@("Core syntax","Data structures","Functions and modules","Error handling","Standard library basics") },
    @{ Id="03-intermediate"; Title="Intermediate"; Audience="Mid-level engineers (1-3 years)"; Topics=@("Async/concurrency","Package management","APIs and I/O","Testing basics","Common design patterns") },
    @{ Id="04-advanced"; Title="Advanced"; Audience="Senior developers (3-7 years)"; Topics=@("Performance optimization","Architecture patterns","Security","Scalability","Production debugging") },
    @{ Id="05-expert"; Title="Expert"; Audience="Architects (7+ years)"; Topics=@("Internals and runtime","Open source contribution","System design","Cross-team standards","Technology evaluation") }
)

$count = 0
foreach ($tech in $technologies) {
    $basePath = Join-Path $root $tech.Path
    if (-not (Test-Path $basePath)) { continue }
    
    New-Readme $tech $basePath
    New-Resources $tech $basePath
    New-BeginnerGuide $tech $basePath
    New-TestingGuide $tech $basePath
    New-PMGuide $tech $basePath
    New-StackSwitchGuide $tech $basePath
    
    foreach ($level in $levels) {
        New-SkillGuide $tech $basePath $level.Id $level.Title $level.Audience $level.Topics
    }
    $count++
}

Write-Host "Populated $count technology folders"

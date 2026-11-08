# Generate substantive 02-05 track content for all technologies
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
. (Join-Path $PSScriptRoot "deep-track-data.ps1")

function Test-IsRichContent($path) {
    if (-not (Test-Path $path)) { return $false }
    $c = Get-Content $path -Raw
    $fences = ([regex]::Matches($c, '```')).Count
    return ($fences -ge 4)
}

function Get-Category($techPath) {
    $parts = $techPath -split '[\\/]'
    switch ($parts[0]) {
        "languages" { return "language" }
        "frameworks" { return "framework" }
        "databases" { return "database" }
        "testing" { return "testing" }
        "devops" { return "devops" }
        "mobile" { return "mobile" }
        "tools" { return "tool" }
        "web" { return "web" }
        default { return "framework" }
    }
}

function Get-DefaultTopics($category, $level) {
    $map = @{
        language = @{
            "02" = @("Variables, types, and operators", "Control flow (if, loops, switch)", "Functions and scope", "Collections (arrays, maps, sets)", "Error handling (try/catch)", "Reading and writing files")
            "03" = @("Object-oriented programming", "Modules and package management", "Generics / templates (if applicable)", "Async and concurrency basics", "Unit testing in this language", "Common idioms and patterns")
            "04" = @("Performance optimization", "Memory management and profiling", "Security best practices", "Concurrency at scale", "Interoperability with other languages", "Production debugging")
            "05" = @("Runtime / compiler internals", "Contributing to open source", "Language ecosystem evaluation", "Cross-team coding standards", "Mentoring and code review leadership", "Future of the language")
        }
        framework = @{
            "02" = @("Project structure and conventions", "Routing and handlers", "Request and response lifecycle", "Configuration and environment", "Middleware / hooks / filters", "Templates or serialization")
            "03" = @("Database integration (ORM/query)", "Authentication and authorization", "Input validation", "RESTful API design", "Testing the application", "Dependency injection / services")
            "04" = @("Caching strategies", "Horizontal scaling", "Security hardening (OWASP)", "Logging and observability", "Background jobs and queues", "Production deployment")
            "05" = @("Architecture patterns (MVC, hexagonal)", "Framework internals overview", "Performance at scale", "Multi-team standards", "Migration and versioning strategy", "Build vs buy decisions")
        }
        database = @{
            "02" = @("CRUD operations", "Schema and data modeling", "Basic indexes", "Query fundamentals", "Connection pooling", "CLI / GUI tools")
            "03" = @("Joins and relationships", "Transactions and ACID", "Query optimization", "Migrations and versioning", "Backup and restore", "Security (users, roles)")
            "04" = @("Replication and failover", "Partitioning / sharding", "Monitoring and slow queries", "High availability setup", "Encryption at rest and in transit", "Capacity planning")
            "05" = @("Multi-region architecture", "Disaster recovery", "Database selection criteria", "Data governance", "Cost optimization at scale", "DBA team leadership")
        }
        testing = @{
            "02" = @("Test file structure", "Assertions and matchers", "Setup and teardown", "Running the test runner", "First real test suite", "Reading failure output")
            "03" = @("Mocking and stubbing", "Fixtures and test data", "CI pipeline integration", "Code coverage basics", "Organizing large test suites", "Testing async code")
            "04" = @("Parallel test execution", "Flaky test management", "Performance / load testing", "Visual regression (if applicable)", "Test reporting", "Security testing integration")
            "05" = @("Test strategy for organizations", "Framework internals", "QA process design", "Risk-based testing", "Tool evaluation", "Quality metrics and SLAs")
        }
        devops = @{
            "02" = @("Core concepts and vocabulary", "CLI and tooling setup", "First deployment workflow", "Configuration management", "Logs and basic troubleshooting", "Local vs remote environments")
            "03" = @("Multi-environment pipelines", "Networking fundamentals", "Secrets management", "Infrastructure automation", "Monitoring and alerting", "Container integration")
            "04" = @("High availability patterns", "Cost optimization", "Disaster recovery", "GitOps workflows", "Security compliance", "Performance tuning")
            "05" = @("Platform engineering", "Multi-cloud strategy", "SRE practices and SLIs/SLOs", "Org-wide DevOps standards", "Incident response leadership", "Technology roadmap")
        }
        mobile = @{
            "02" = @("App structure and lifecycle", "UI components and layout", "Navigation basics", "State management intro", "Platform permissions", "Debugging on device/emulator")
            "03" = @("Networking and APIs", "Local storage", "Authentication flows", "Push notifications intro", "Testing mobile apps", "App store guidelines overview")
            "04" = @("Performance optimization", "Offline-first patterns", "Security (cert pinning, storage)", "Analytics and crash reporting", "CI/CD for mobile", "Accessibility")
            "05" = @("Architecture (MVVM, Clean)", "Large team workflows", "Release management", "Cross-platform strategy", "App monetization patterns", "Platform roadmap awareness")
        }
        tool = @{
            "02" = @("Daily workflow commands", "Configuration basics", "Collaboration features", "Undo and recovery", "Aliases and shortcuts", "Integration with other tools")
            "03" = @("Branching strategies", "Hooks and automation", "Advanced configuration", "Team conventions", "Troubleshooting common issues", "Scripting integration")
            "04" = @("Large repo management", "Security (signing, secrets)", "Performance at scale", "Custom tooling", "Audit and compliance", "Migration scenarios")
            "05" = @("Org-wide standards", "Training and onboarding", "Tool evaluation", "Process design", "Incident workflows", "Open source contribution")
        }
        web = @{
            "02" = @("Semantic HTML", "CSS selectors and specificity", "Flexbox layout", "Responsive design basics", "Forms and accessibility", "Browser DevTools")
            "03" = @("CSS Grid", "CSS variables and theming", "Animations and transitions", "Mobile-first design", "Performance (critical CSS)", "Cross-browser testing")
            "04" = @("CSS architecture (BEM, layers)", "Advanced accessibility (WCAG)", "Print and email CSS", "Design systems", "Build tools (PostCSS)", "SEO fundamentals")
            "05" = @("Web standards evolution", "Performance budgets", "Inclusive design leadership", "Design-dev collaboration", "Component libraries", "Future CSS features")
        }
    }
    return $map[$category][$level]
}

function New-TrackReadme($name, $levelId, $levelTitle, $audience, $topics, $practice, $docs, $nextPath) {
    $topicBlocks = for ($i = 0; $i -lt $topics.Count; $i++) {
        "### $($i + 1). $($topics[$i])`n`nKey concepts, official docs section, and hands-on exercise."
    }
    $topicBlocks = $topicBlocks -join "`n`n"
    @"
# $levelTitle - $name

**Audience:** $audience  
**Prerequisites:** Previous track in this module

---

## Topics

$topicBlocks

---

## Practice Project

$practice

---

## Official Reference

$docs

---

## Next

-> [$nextPath]($nextPath)
"@
}

$levels = @(
    @{ Id="02-fundamentals"; Title="Fundamentals"; Audience="Junior developers (0-1 year)"; Next="03-intermediate" }
    @{ Id="03-intermediate"; Title="Intermediate"; Audience="Mid-level engineers (1-3 years)"; Next="04-advanced" }
    @{ Id="04-advanced"; Title="Advanced"; Audience="Senior developers (3-7 years)"; Next="05-expert" }
    @{ Id="05-expert"; Title="Expert"; Audience="Architects and tech leads (7+ years)"; Next="../06-testing" }
)

$practiceProjects = @{
    "02" = "Build a small feature applying 3+ topics above. Commit to Git with clear README."
    "03" = "Build a mini app or service integrating database, auth, or API calls."
    "04" = "Optimize, secure, and deploy to staging. Document architecture decisions."
    "05" = "Write an ADR (Architecture Decision Record) comparing two approaches in this stack."
}

$techFolders = @()
$searchRoots = @("languages","frameworks","mobile","databases","testing","devops","tools","web")
foreach ($sr in $searchRoots) {
    $p = Join-Path $root $sr
    if (Test-Path $p) {
        Get-ChildItem $p -Directory | ForEach-Object { $techFolders += $_.FullName }
    }
}

$updated = 0
$skipped = 0

foreach ($folder in $techFolders) {
    $rel = $folder.Replace($root + "\", "").Replace("\", "/")
    $name = Split-Path $folder -Leaf
    $name = (Get-Content (Join-Path $folder "README.md") -TotalCount 1 -ErrorAction SilentlyContinue) -replace '^#\s*', ''
    if (-not $name) { $name = Split-Path $folder -Leaf }

    $docs = "See [resources.md](../resources.md)"
    $resFile = Join-Path $folder "resources.md"
    if (Test-Path $resFile) {
        $docLine = Select-String -Path $resFile -Pattern 'https?://' | Select-Object -First 1
        if ($docLine) { $docs = ($docLine.Line -replace '.*(https?://\S+).*', '$1').Trim() }
    }

    $category = Get-Category $rel
    $custom = $DeepTrackOverrides[$rel]

    foreach ($level in $levels) {
        $file = Join-Path $folder "$($level.Id)\README.md"
        $dir = Split-Path $file -Parent
        if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
        if (Test-IsRichContent $file) { $skipped++; continue }

        $key = $level.Id -replace '^\d+-', '' -replace 'fundamentals','02' -replace 'intermediate','03' -replace 'advanced','04' -replace 'expert','05'
        $key = switch ($level.Id) { "02-fundamentals" {"02"} "03-intermediate" {"03"} "04-advanced" {"04"} "05-expert" {"05"} }

        $topics = if ($custom -and $custom[$key]) { $custom[$key] } else { Get-DefaultTopics $category $key }
        $practice = if ($custom -and $custom["practice_$key"]) { $custom["practice_$key"] } else { $practiceProjects[$key] }

        $content = New-TrackReadme $name $level.Id $level.Title $level.Audience $topics $practice $docs "../$($level.Next)/"
        Set-Content -Path $file -Value $content -Encoding UTF8
        $updated++
    }
}

Write-Host "Updated $updated track files, skipped $skipped rich files"

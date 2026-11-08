# Deepen data-ai 02-08 tracks with real curriculum
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
. (Join-Path $PSScriptRoot "deep-track-data.ps1")

$dataAiModules = @{
    "data-ai/ai-engineering" = @{ Name="AI Engineering"; Docs="https://python.langchain.com/docs" }
    "data-ai/rag-applications" = @{ Name="RAG Applications"; Docs="https://python.langchain.com/docs/concepts/rag" }
    "data-ai/machine-learning" = @{ Name="Machine Learning"; Docs="https://scikit-learn.org/stable/" }
    "data-ai/mathematics" = @{
        Name="Mathematics"
        Docs="https://www.khanacademy.org/math"
        Topics02=@("Algebra refresher", "Functions and graphs", "Exponents and logarithms", "Basic probability", "Descriptive statistics", "Notation for ML")
        Topics03=@("Linear algebra: vectors and matrices", "Matrix multiplication", "Eigenvalues intuition", "Calculus: derivatives basics", "Gradient intuition", "Probability distributions")
        Topics04=@("Multivariate calculus", "Maximum likelihood", "Bayesian thinking", "Optimization (SGD intuition)", "Statistics for A/B tests", "Dimensionality reduction math")
    }
    "data-ai/data-science" = @{
        Name="Data Science"
        Docs="https://pandas.pydata.org/docs/"
        Topics02=@("Data collection ethics", "Exploratory data analysis", "Pandas basics", "Visualization with matplotlib", "Hypothesis formation", "Jupyter notebooks")
        Topics03=@("Feature selection", "Model selection workflow", "Cross-validation", "Communication with stakeholders", "A/B test analysis", "Reproducibility")
        Topics04=@("End-to-end ML pipelines", "Experiment tracking", "Deployment to production", "Data drift detection", "Storytelling with data", "Docker for DS projects")
    }
    "data-ai/data-analysis" = @{
        Name="Data Analysis"
        Docs="https://www.w3schools.com/sql/"
        Topics02=@("SQL SELECT and WHERE", "GROUP BY and aggregates", "Excel / Sheets pivot tables", "Data cleaning checklist", "pandas read_csv", "Basic charts")
        Topics03=@("Window functions in SQL", "JOINs for analysis", "pandas groupby", "Time series basics", "Dashboard design", "Presenting findings")
    }
    "data-ai/business-intelligence" = @{
        Name="Business Intelligence"
        Docs="https://learn.microsoft.com/en-us/power-bi/"
        Topics02=@("Star schema vs snowflake", "ETL vs ELT", "Power BI / Tableau intro", "KPIs and metrics", "Dimensions and facts", "Data literacy for business")
        Topics03=@("DAX / calculated fields", "Interactive dashboards", "Row-level security", "Scheduled refreshes", "Self-service BI governance", "Connecting to warehouses")
    }
    "data-ai/campusx/generative-ai-series" = @{
        Name="Generative AI Series"
        Docs="https://learnwith.campusx.in"
        Topics02=@("What are LLMs", "CampusX playlist map", "Python setup for GenAI", "OpenAI API first call", "Prompt basics", "LangChain installation")
        Topics03=@("Chains and agents", "Memory in conversations", "RAG from scratch", "Vector stores", "Tool use patterns", "Streamlit UI for demos")
    }
}

$levels = @(
    @{ Id="02-fundamentals"; Title="Fundamentals"; Audience="Junior / career switchers" }
    @{ Id="03-intermediate"; Title="Intermediate"; Audience="Mid-level data/AI engineers" }
    @{ Id="04-advanced"; Title="Advanced"; Audience="Senior ML/AI engineers" }
    @{ Id="05-expert"; Title="Expert"; Audience="AI architects and leads" }
)

$suppLevels = @(
    @{ Id="06-testing"; Title="Testing"; Body="Test ML models (accuracy thresholds), RAG faithfulness checks, API contract tests, data validation tests, and bias/fairness audits." }
    @{ Id="07-project-management"; Title="Project Management"; Body="AI project risks: data quality, model drift, cost overruns. Typical timeline: POC 2 weeks, MVP 6-8 weeks. Stakeholder communication for non-technical audiences." }
    @{ Id="08-stack-switching"; Title="Stack Switching"; Body="From web dev to AI: add Python + pandas + one ML course. From data analyst to ML: statistics + scikit-learn + Kaggle. From backend to AI engineering: FastAPI + LangChain + RAG project." }
)

foreach ($entry in $dataAiModules.GetEnumerator()) {
    $rel = $entry.Key
    $info = $entry.Value
    $base = Join-Path $root ($rel -replace '/', '\')
    $custom = $DeepTrackOverrides[$rel]

    foreach ($level in $levels) {
        $key = switch ($level.Id) {
            "02-fundamentals" { "02" }
            "03-intermediate" { "03" }
            "04-advanced" { "04" }
            "05-expert" { "05" }
        }
        $topics = if ($custom -and $custom[$key]) { $custom[$key] }
                  elseif ($info["Topics$key"]) { $info["Topics$key"] }
                  else { @("Core concepts for $($info.Name)", "Hands-on exercises", "Official documentation deep dive", "CampusX playlist sections", "Local examples folder", "Community resources") }

        $topicList = ($topics | ForEach-Object { "- $_" }) -join "`n"
        $practice = if ($custom -and $custom["practice_$key"]) { $custom["practice_$key"] } else { "Complete one CampusX module exercise and one local example." }

        @"
# $($level.Title) - $($info.Name)

**Audience:** $($level.Audience)

---

## Learning Objectives

$topicList

---

## CampusX Alignment

See [campusx/](../../campusx/) or [../campusx/](../campusx/) for playlist mapping.

---

## Practice

$practice

---

## Resources

- Official: $($info.Docs)
- Examples: [data-ai/examples/](../../../examples/) or module examples/
- Hub: [data-ai/README.md](../../README.md)

---

## Next

-> [../$(
    switch ($level.Id) {
        "02-fundamentals" { "03-intermediate" }
        "03-intermediate" { "04-advanced" }
        "04-advanced" { "05-expert" }
        "05-expert" { "06-testing" }
    }
)/](../$(
    switch ($level.Id) {
        "02-fundamentals" { "03-intermediate" }
        "03-intermediate" { "04-advanced" }
        "04-advanced" { "05-expert" }
        "05-expert" { "06-testing" }
    }
)/)
"@ | Set-Content (Join-Path $base "$($level.Id)\README.md") -Encoding UTF8
    }

    foreach ($sl in $suppLevels) {
        @"
# $($sl.Title) - $($info.Name)

**Audience:** $($sl.Title) specialists working on $($info.Name) projects

---

## Overview

$($sl.Body)

---

## Checklist

- [ ] Understand $($info.Name) deliverables
- [ ] Know test/evaluation criteria for this domain
- [ ] Coordinate with data engineering and product
- [ ] Document assumptions and limitations

---

## Resources

$($info.Docs)
"@ | Set-Content (Join-Path $base "$($sl.Id)\README.md") -Encoding UTF8
    }
}

Write-Host "Updated data-ai deep tracks for $($dataAiModules.Count) modules"

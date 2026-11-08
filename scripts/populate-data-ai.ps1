# Populate data-ai skill-level guides
$root = Split-Path -Parent $PSScriptRoot
$topics = @(
    @{ Path="data-ai/ai-engineering"; Name="AI Engineering"; Docs="https://python.langchain.com/docs" },
    @{ Path="data-ai/rag-applications"; Name="RAG Applications"; Docs="https://python.langchain.com/docs/concepts/rag" },
    @{ Path="data-ai/machine-learning"; Name="Machine Learning"; Docs="https://scikit-learn.org/stable/" },
    @{ Path="data-ai/mathematics"; Name="Mathematics"; Docs="https://www.khanacademy.org/math" },
    @{ Path="data-ai/data-science"; Name="Data Science"; Docs="https://pandas.pydata.org/docs/" },
    @{ Path="data-ai/data-analysis"; Name="Data Analysis"; Docs="https://www.w3schools.com/sql/" },
    @{ Path="data-ai/business-intelligence"; Name="Business Intelligence"; Docs="https://learn.microsoft.com/en-us/power-bi/" },
    @{ Path="data-ai/campusx/generative-ai-series"; Name="Generative AI Series"; Docs="https://learnwith.campusx.in" }
)
$levels = @("02-fundamentals","03-intermediate","04-advanced","05-expert","06-testing","07-project-management","08-stack-switching")
foreach ($t in $topics) {
    $base = Join-Path $root $t.Path
    foreach ($level in $levels) {
        $file = Join-Path $base "$level\README.md"
        if (-not (Test-Path $file)) {
            @"
# $($t.Name) — $level

See [../README.md](../README.md) for full overview.

**Official reference:** $($t.Docs)

**CampusX:** [../campusx/](../campusx/) (if applicable)

**Examples:** [../examples/](../../examples/) or local examples/
"@ | Set-Content $file -Encoding UTF8
        }
    }
}
Write-Host "Populated data-ai skill guides"

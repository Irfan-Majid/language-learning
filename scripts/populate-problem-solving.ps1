# Populate problem-solving and essentials skill tracks
$root = Split-Path -Parent $PSScriptRoot
$groups = @(
    @{ Base="problem-solving"; Topics=@(
        @{P="logical-thinking";N="Logical Thinking";D="https://brilliant.org"},
        @{P="debugging";N="Debugging";D="https://developer.mozilla.org"},
        @{P="algorithms-data-structures";N="Algorithms and DSA";D="https://leetcode.com"},
        @{P="design-patterns";N="Design Patterns";D="https://refactoring.guru"},
        @{P="system-design";N="System Design";D="https://github.com/donnemartin/system-design-primer"},
        @{P="interview-coding";N="Interview Coding";D="https://neetcode.io"}
    )},
    @{ Base="essentials"; Topics=@(
        @{P="authentication";N="Authentication";D="https://jwt.io"},
        @{P="rest-apis";N="REST APIs";D="https://restfulapi.net"},
        @{P="graphql";N="GraphQL";D="https://graphql.org"},
        @{P="websockets";N="WebSockets";D="https://developer.mozilla.org"},
        @{P="cicd";N="CI/CD";D="https://docs.github.com/en/actions"},
        @{P="agile-scrum";N="Agile and Scrum";D="https://scrumguides.org"},
        @{P="linux-cli";N="Linux CLI";D="https://ubuntu.com/tutorials/command-line-for-beginners"},
        @{P="vscode";N="VS Code";D="https://code.visualstudio.com/docs"},
        @{P="technical-writing";N="Technical Writing";D="https://www.writethedocs.org"},
        @{P="soft-skills";N="Soft Skills";D="https://www.ministryoftesting.com"},
        @{P="open-source";N="Open Source";D="https://opensource.guide"}
    )}
)
$levels = @("02-fundamentals","03-intermediate","04-advanced","05-expert","06-testing","07-project-management","08-stack-switching")
foreach ($g in $groups) {
    foreach ($t in $g.Topics) {
        $base = Join-Path $root "$($g.Base)\$($t.P)"
        if (-not (Test-Path (Join-Path $base "resources.md"))) {
            "# $($t.N) Resources`n`n$($t.D)`n`nSee [../../resources.md](../../resources.md)" | Set-Content (Join-Path $base "resources.md") -Encoding UTF8
        }
        foreach ($level in $levels) {
            $file = Join-Path $base "$level\README.md"
            if (-not (Test-Path $file)) {
                "# $level - $($t.N)`n`nSee [../README.md](../README.md)`n`nRef: $($t.D)" | Set-Content $file -Encoding UTF8
            }
        }
    }
}
Write-Host "Populated problem-solving and essentials"

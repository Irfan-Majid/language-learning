# Populate security skill-level guides
$root = Split-Path -Parent $PSScriptRoot
$topics = @(
    @{ Path="security/cybersecurity"; Name="Cybersecurity"; Docs="https://www.nist.gov/cyberframework" },
    @{ Path="security/ethical-hacking"; Name="Ethical Hacking"; Docs="https://owasp.org/www-project-web-security-testing-guide/" },
    @{ Path="security/software-security"; Name="Software Security"; Docs="https://owasp.org" },
    @{ Path="security/application-security"; Name="Application Security"; Docs="https://owasp.org/Top10/" },
    @{ Path="security/device-security"; Name="Device Security"; Docs="https://www.cisa.gov/topics/cybersecurity-best-practices" },
    @{ Path="security/pc-security"; Name="PC Security"; Docs="https://www.cisa.gov/secure-our-world" },
    @{ Path="security/mobile-security"; Name="Mobile Security"; Docs="https://owasp.org/www-project-mobile-security/" },
    @{ Path="security/database-security"; Name="Database Security"; Docs="https://owasp.org/www-community/attacks/SQL_Injection" },
    @{ Path="security/network-security"; Name="Network Security"; Docs="https://www.cloudflare.com/learning/security/" },
    @{ Path="security/cloud-security"; Name="Cloud Security"; Docs="https://aws.amazon.com/security/" },
    @{ Path="security/devsecops"; Name="DevSecOps"; Docs="https://owasp.org/www-project-devsecops-guideline/" },
    @{ Path="security/security-qa"; Name="Security QA"; Docs="https://owasp.org/www-project-web-security-testing-guide/" }
)
$levels = @("02-fundamentals","03-intermediate","04-advanced","05-expert","06-testing","07-project-management","08-stack-switching")
foreach ($t in $topics) {
    $base = Join-Path $root $t.Path
    if (-not (Test-Path (Join-Path $base "resources.md"))) {
        @"
# $($t.Name) - Resources

Official: $($t.Docs)

See also: [../../resources.md](../../resources.md)
"@ | Set-Content (Join-Path $base "resources.md") -Encoding UTF8
    }
    foreach ($level in $levels) {
        $file = Join-Path $base "$level\README.md"
        if (-not (Test-Path $file)) {
            @"
# $level - $($t.Name)

See [../README.md](../README.md) for overview.

Reference: $($t.Docs)

Examples: [../../examples/](../../examples/)
"@ | Set-Content $file -Encoding UTF8
        }
    }
}
Write-Host "Populated security modules"

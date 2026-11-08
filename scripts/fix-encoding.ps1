# Fix UTF-8 mojibake from PowerShell populate scripts
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot

$emDash = [char]0x00E2 + [char]0x20AC + [char]0x201D
$enDash = [char]0x00E2 + [char]0x20AC + [char]0x201C
$arrow  = [char]0x00E2 + [char]0x2020 + [char]0x2019

$count = 0
Get-ChildItem $root -Recurse -Include *.md,*.ps1 -File |
    Where-Object { $_.FullName -notmatch '\\\.git\\' } |
    ForEach-Object {
        $content = Get-Content $_.FullName -Raw -Encoding UTF8
        $original = $content
        $content = $content.Replace($emDash, "-")
        $content = $content.Replace($enDash, "-")
        $content = $content.Replace($arrow, "->")
        if ($content -ne $original) {
            Set-Content -Path $_.FullName -Value $content -Encoding UTF8 -NoNewline
            $count++
        }
    }

Write-Host "Fixed encoding in $count files"

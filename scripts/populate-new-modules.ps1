# Add NestJS, Ruby on Rails, Tailwind CSS, Terraform modules
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot

$technologies = @(
    @{ Path="frameworks/nestjs"; Name="NestJS"; Cat="Backend Framework"; Desc="Enterprise Node.js framework with TypeScript, DI, and modular architecture"; Docs="https://docs.nestjs.com/"; Tag="nestjs"; Related="nodejs, express, typescript" },
    @{ Path="frameworks/ruby-on-rails"; Name="Ruby on Rails"; Cat="Backend Framework"; Desc="Convention-over-configuration web framework for rapid development"; Docs="https://guides.rubyonrails.org/"; Tag="ruby-on-rails"; Related="ruby, postgresql" },
    @{ Path="web/tailwind-css"; Name="Tailwind CSS"; Cat="CSS Framework"; Desc="Utility-first CSS framework for rapid UI development"; Docs="https://tailwindcss.com/docs"; Tag="tailwindcss"; Related="html-css, react, vue" },
    @{ Path="devops/terraform"; Name="Terraform"; Cat="DevOps"; Desc="Infrastructure as Code for provisioning cloud resources"; Docs="https://developer.hashicorp.com/terraform/docs"; Tag="terraform"; Related="kubernetes, docker, aws" }
)

function Ensure-Dir($p) { if (-not (Test-Path $p)) { New-Item -ItemType Directory -Force -Path $p | Out-Null } }

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
| Expert | [05-expert](./05-expert/) | Architects and contributors |
| Testing | [06-testing](./06-testing/) | QA engineers |
| Project Management | [07-project-management](./07-project-management/) | PMs and tech leads |
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
# $($tech.Name) - Resources

## Official Documentation

| Resource | URL |
|----------|-----|
| Official docs | $($tech.Docs) |

## Community

| Platform | Link |
|----------|------|
| Stack Overflow | https://stackoverflow.com/questions/tagged/$($tech.Tag) |

## Free Learning

| Resource | Type |
|----------|------|
| Official getting started guide | Tutorial |
| YouTube: "$($tech.Name) tutorial" | Video |

---

*Always start with official documentation.*
"@ | Set-Content -Path (Join-Path $basePath "resources.md") -Encoding UTF8
}

$tracks = @("01-beginner","02-fundamentals","03-intermediate","04-advanced","05-expert","06-testing","07-project-management","08-stack-switching")

foreach ($tech in $technologies) {
    $basePath = Join-Path $root $tech.Path
    foreach ($t in $tracks) { Ensure-Dir (Join-Path $basePath $t) }
    Ensure-Dir (Join-Path $basePath "examples")
    New-Readme $tech $basePath
    New-Resources $tech $basePath
    @"
# Beginner Guide - $($tech.Name)

**Audience:** First-time learners  
**Time:** 1-2 weeks

---

## Step 1: Install

Visit: $($tech.Docs)

Follow the official Getting Started guide.

---

## Step 2: Run Examples

Check [examples/](../examples/) and run each sample.

---

## Step 3: Core Concepts

See official docs for $($tech.Name) fundamentals.

---

## Next Step

-> [02-fundamentals/](../02-fundamentals/)
"@ | Set-Content -Path (Join-Path $basePath "01-beginner\README.md") -Encoding UTF8

    foreach ($level in @("02-fundamentals","03-intermediate","04-advanced","05-expert")) {
        @"
# $($level -replace '^\d+-','' | ForEach-Object { $_.Substring(0,1).ToUpper() + $_.Substring(1) }) - $($tech.Name)

See [../README.md](../README.md) and [resources.md](../resources.md).
"@ | Set-Content -Path (Join-Path $basePath "$level\README.md") -Encoding UTF8
    }
    @"
# Testing - $($tech.Name)

See [testing/](../../testing/) and $($tech.Docs)
"@ | Set-Content -Path (Join-Path $basePath "06-testing\README.md") -Encoding UTF8
    @"
# Project Management - $($tech.Name)

See [07-project-management](../07-project-management/) patterns in other modules.
"@ | Set-Content -Path (Join-Path $basePath "07-project-management\README.md") -Encoding UTF8
    @"
# Stack Switching - $($tech.Name)

See [STACK-COMPARISON.md](../../STACK-COMPARISON.md).
"@ | Set-Content -Path (Join-Path $basePath "08-stack-switching\README.md") -Encoding UTF8
}

# Examples
@'
// NestJS controller example
// npm i @nestjs/common @nestjs/core reflect-metadata rxjs
import { Controller, Get } from "@nestjs/common";

@Controller()
export class AppController {
  @Get()
  getHello(): string {
    return "Hello from NestJS!";
  }

  @Get("users/:id")
  getUser(id: string) {
    return { id, name: `User ${id}` };
  }
}
'@ | Set-Content -Path (Join-Path $root "frameworks\nestjs\examples\app.controller.ts") -Encoding UTF8

@'
# Ruby on Rails routes example
# rails new myapp && cd myapp
Rails.application.routes.draw do
  root "pages#home"
  get "hello", to: "pages#hello"
  resources :users, only: [:index, :show]
end

# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def home
    render plain: "Hello from Ruby on Rails!"
  end

  def hello
    render json: { message: "Hello, Rails!" }
  end
end
'@ | Set-Content -Path (Join-Path $root "frameworks\ruby-on-rails\examples\routes.rb") -Encoding UTF8

@'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script src="https://cdn.tailwindcss.com"></script>
  <title>Tailwind Hello</title>
</head>
<body class="bg-slate-900 text-white min-h-screen flex items-center justify-center">
  <div class="text-center p-8 rounded-2xl bg-slate-800 shadow-xl">
    <h1 class="text-4xl font-bold text-sky-400 mb-4">Hello from Tailwind CSS!</h1>
    <p class="text-slate-300 mb-6">Utility-first styling without leaving your HTML.</p>
    <button class="px-6 py-2 bg-sky-500 hover:bg-sky-600 rounded-lg font-medium transition">
      Get Started
    </button>
  </div>
</body>
</html>
'@ | Set-Content -Path (Join-Path $root "web\tailwind-css\examples\hello.html") -Encoding UTF8

@'
# Terraform example - provision a local file (no cloud account needed)
# terraform init && terraform plan && terraform apply

terraform {
  required_version = ">= 1.0"
}

resource "local_file" "hello" {
  filename = "${path.module}/hello.txt"
  content  = "Hello from Terraform!"
}

output "message" {
  value = local_file.hello.content
}
'@ | Set-Content -Path (Join-Path $root "devops\terraform\examples\main.tf") -Encoding UTF8

Write-Host "Created 4 new technology modules with examples"

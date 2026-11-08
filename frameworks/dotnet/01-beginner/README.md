# Beginner Guide — .NET

**Audience:** Developers new to Microsoft ecosystem  
**Time:** 2–3 weeks

---

## What Is .NET?

Microsoft's **cross-platform runtime** for building web, desktop, mobile, and cloud apps. Primary language: **C#**.

---

## Install

```bash
# Download .NET 8 SDK from https://dotnet.microsoft.com/download
dotnet --version
```

---

## Create Projects

```bash
# Console app
dotnet new console -n MyApp

# Web API
dotnet new webapi -n MyApi

# Blazor (web UI)
dotnet new blazor -n MyBlazor

# Run
dotnet run
```

---

## Hello World

```csharp
// Program.cs
Console.WriteLine("Hello, .NET!");
```

---

## .NET Ecosystem

| Technology | Use Case |
|------------|----------|
| **ASP.NET Core** | Web APIs, MVC sites |
| **Blazor** | Web UI in C# (no JavaScript) |
| **Entity Framework** | Database ORM |
| **MAUI** | Cross-platform mobile/desktop |
| **Unity** | Game development |

---

## Project Structure

```
MyApi/
├── Program.cs          # Entry point
├── Controllers/        # API endpoints
├── Models/             # Data models
├── appsettings.json    # Configuration
└── MyApi.csproj        # Project file
```

---

## Next → [C#](../../languages/csharp/) → [ASP.NET Core](../aspnet-core/)

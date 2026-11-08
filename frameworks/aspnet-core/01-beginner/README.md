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

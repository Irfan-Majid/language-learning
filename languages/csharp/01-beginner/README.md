# Beginner Guide — C#

**Audience:** New to C# and .NET  
**Time:** 2 weeks

---

## Install

1. Install .NET SDK from https://dotnet.microsoft.com/download
2. Verify: `dotnet --version`

---

## First Program

```bash
dotnet new console -n HelloApp -o examples/HelloApp
cd examples/HelloApp
dotnet run
```

Or edit `Program.cs`:
```csharp
Console.WriteLine("Hello, World!");
```

---

## Core Concepts

### Variables
```csharp
string name = "Alice";
int age = 25;
bool isActive = true;
var count = 10;  // type inferred
```

### Classes
```csharp
public class User
{
    public string Name { get; set; }
    public int Age { get; set; }
    
    public string Greet() => $"Hello, {Name}!";
}
```

### LINQ (powerful queries)
```csharp
var numbers = new[] { 1, 2, 3, 4, 5 };
var evens = numbers.Where(n => n % 2 == 0);
```

---

## C# Use Cases

- **ASP.NET Core** — web APIs
- **Unity** — game development
- **Enterprise** — Microsoft ecosystem
- **Desktop** — WPF, MAUI

---

## Next → [02-fundamentals/](../02-fundamentals/) → [.NET](../../frameworks/dotnet/)

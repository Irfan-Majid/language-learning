// Minimal ASP.NET Core API
// dotnet new webapi -n Demo && replace Program.cs
var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello from ASP.NET Core!");
app.MapGet("/users/{id}", (int id) => new { id, name = $"User {id}" });

app.Run();

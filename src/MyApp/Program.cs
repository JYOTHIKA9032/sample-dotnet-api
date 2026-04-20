var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello from .NET 8 App 🚀");
app.MapGet("/health", () => Results.Ok(new { status = "ok" }));

app.Run();

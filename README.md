# REPO2 - Sample .NET 8 app

## Local run
```bash
dotnet restore
dotnet build -c Release
dotnet test -c Release
dotnet run --project src/MyApp/MyApp.csproj
```

## Docker local
```bash
docker build -t dotnet8-sample:local .
docker run -p 8080:8080 dotnet8-sample:local
```

## GitHub Actions
Edit `.github/workflows/ci.yml` and replace:
- `<ORG>/<REPO1>` with your real REPO1 path
- `@v1` with your tag/branch

To enable push, change the docker_push job `if: ${{ false }}` to `if: ${{ true }}` and set registry + secrets.

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

COPY MyApp.sln ./
COPY src/MyApp/MyApp.csproj ./src/MyApp/
COPY tests/MyApp.Tests/MyApp.Tests.csproj ./tests/MyApp.Tests/
RUN dotnet restore MyApp.sln

COPY . .
RUN dotnet publish src/MyApp/MyApp.csproj -c Release -o /app/out --no-restore

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app/out .

ENV ASPNETCORE_URLS=http://+:8080
EXPOSE 8080
ENTRYPOINT ["dotnet", "MyApp.dll"]

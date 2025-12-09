@echo off
echo Building all projects in Release mode...
dotnet build ..\CloudflareFS.sln -c Release
if %ERRORLEVEL% neq 0 (
    echo Build failed!
    exit /b %ERRORLEVEL%
)

echo.
echo Creating NuGet package...
dotnet pack CloudflareFS.proj -c Release -o .
if %ERRORLEVEL% neq 0 (
    echo Pack failed!
    exit /b %ERRORLEVEL%
)

echo.
echo Done! Package created in nuget folder
pause

# CodeAlpha Task 2: Stock Trading Platform Launcher
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "  Compiling Stock Trading Platform..." -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan

if (!(Test-Path "bin")) {
    New-Item -ItemType Directory -Force -Path "bin" | Out-Null
}

$sources = Get-ChildItem -Path "src" -Filter "*.java" -Recurse | Select-Object -ExpandProperty FullName
javac -d bin $sources

if ($LASTEXITCODE -ne 0) {
    Write-Host "[ERROR] Compilation failed!" -ForegroundColor Red
    exit $LASTEXITCODE
}

Write-Host "`n========================================================" -ForegroundColor Green
Write-Host "  Launching Application..." -ForegroundColor Green
Write-Host "========================================================`n" -ForegroundColor Green

java -cp bin com.codealpha.stocktrading.Main

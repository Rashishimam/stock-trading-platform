@echo off
title CodeAlpha - Stock Trading Platform (Task 2)
echo ========================================================
echo   Compiling CodeAlpha Stock Trading Platform...
echo ========================================================
if not exist "bin" mkdir "bin"

javac -d bin -sourcepath src src\com\codealpha\stocktrading\Main.java src\com\codealpha\stocktrading\model\*.java src\com\codealpha\stocktrading\market\*.java src\com\codealpha\stocktrading\persistence\*.java src\com\codealpha\stocktrading\service\*.java src\com\codealpha\stocktrading\util\*.java

if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Compilation failed!
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo ========================================================
echo   Starting Application...
echo ========================================================
java -cp bin com.codealpha.stocktrading.Main
pause

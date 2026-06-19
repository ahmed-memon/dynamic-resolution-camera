@echo off
title Dynamic Resolution Camera

echo.
echo   Dynamic Resolution Camera
echo   -------------------------

:: Try Node.js first
where node >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo   Starting with Node.js...
    echo.
    start http://localhost:8080
    node server.js
    goto :end
)

:: Fall back to Python
where python >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo   Starting with Python...
    echo   Server running at: http://localhost:8080
    echo   Open the URL above in Edge or Chrome.
    echo   Press Ctrl+C to stop.
    echo.
    start http://localhost:8080
    python -m http.server 8080
    goto :end
)

echo   ERROR: Neither Node.js nor Python found.
echo   Please install one of them:
echo     - Node.js: https://nodejs.org
echo     - Python:  https://python.org
echo.
pause

:end

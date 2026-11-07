@echo off
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js was not found. Please install Node.js and try again.
  pause
  exit /b 1
)
start "Forest Cabin Server - close to stop" cmd /k "node server.cjs"
timeout /t 2 /nobreak >nul
start "" http://127.0.0.1:4174/

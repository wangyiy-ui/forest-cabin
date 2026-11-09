@echo off
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js was not found. Please install Node.js and try again.
  pause
  exit /b 1
)
curl.exe -fsS --max-time 2 http://127.0.0.1:4174/ 2>nul | findstr /c:"MORI ISLE" >nul
if not errorlevel 1 goto open
start "Forest Cabin Server - close to stop" cmd /k "node server.cjs"
timeout /t 2 /nobreak >nul
curl.exe -fsS --max-time 2 http://127.0.0.1:4174/ 2>nul | findstr /c:"MORI ISLE" >nul
if errorlevel 1 (
  echo The preview could not start. Check the server window or port 4174.
  pause
  exit /b 1
)
:open
start "" http://127.0.0.1:4174/

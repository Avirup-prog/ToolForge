@echo off
echo ==============================================
echo   Starting ToolForge (Backend + Frontend)
echo ==============================================
echo.

echo Starting FastAPI Backend on port 8000...
start "ToolForge Backend" cmd /k "cd /d %~dp0backend && .venv\Scripts\python.exe -m uvicorn main:app --host 127.0.0.1 --port 8000 --reload"

echo Starting Frontend Web Server on port 3000...
start "ToolForge Frontend" cmd /k "cd /d %~dp0 && backend\.venv\Scripts\python.exe -m http.server 3000 --bind 127.0.0.1"

echo.
echo Both servers are starting!
echo Frontend:    http://localhost:3000
echo Backend API: http://localhost:8000
echo API Docs:    http://localhost:8000/docs
echo.
pause

@echo off
setlocal
title ChatGPT Library DAT Restorer
echo.
echo ChatGPT Library DAT Restorer
echo =============================
echo.
set /p "ARCHIVE=Paste the full path to the extracted ChatGPT archive: "
if not defined ARCHIVE exit /b 1
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0restore_library.ps1" -ArchivePath "%ARCHIVE%"
echo.
pause
